#include <stdio.h>
#include <clang-c/Index.h>

#include "rivten.h"

#define CLANG_TRANSLATION_UNIT_VISITOR(name) CXChildVisitResult name(CXCursor Cursor, CXCursor Parent, CXClientData Data)

struct location
{
    CXString Filename;
    u32 Line;
    u32 Column;
};

internal location
GetLocation(CXSourceLocation Location)
{
    location Result = {};
    CXFile File = 0;
    clang_getSpellingLocation(Location, &File, &Result.Line, &Result.Column, 0);
    Result.Filename = clang_getFileName(File);
    return(Result);
}

CLANG_TRANSLATION_UNIT_VISITOR(TranslationUnitVisitor)
{
    CXSourceLocation ClangLocation = clang_getCursorLocation(Cursor);
    if(clang_Location_isInSystemHeader(ClangLocation) && !clang_Location_isFromMainFile(ClangLocation))
    {
        return(CXChildVisit_Continue);
    }
    location Location = GetLocation(ClangLocation);
    CXString Name = clang_getCursorSpelling(Cursor);

    CXCursorKind CursorKind = clang_getCursorKind(Cursor);
    CXString KindName = clang_getCursorKindSpelling(CursorKind);

    CXType Type = clang_getCursorType(Cursor);

    CXString TypeName = clang_getTypeSpelling(Type);
    CXTypeKind TypeKind = Type.kind;
    CXString TypeKindName = clang_getTypeKindSpelling(TypeKind);

    printf("%s:%u:%u: kind = %s / name = %s / type = %s / type_kind = %s\n", clang_getCString(Location.Filename), Location.Line, Location.Column, clang_getCString(KindName), clang_getCString(Name), clang_getCString(TypeName), clang_getCString(TypeKindName));
    clang_disposeString(Location.Filename);
    clang_disposeString(KindName);
    clang_disposeString(Name);
    clang_disposeString(TypeName);
    clang_disposeString(TypeKindName);
	return(CXChildVisit_Recurse);
}

int main(int ArgumentCount, char** Arguments)
{
	CXIndex Index = clang_createIndex(true, false);
    const char* ClangArguments[] = {"-I", "C:\\Program Files\\LLVM\\include", "..\\code\\senoceton.cpp"};
	const CXTranslationUnit TranslationUnit = clang_parseTranslationUnit(Index, 0, ClangArguments, ArrayCount(ClangArguments), 0, 0, 0);
	//const CXTranslationUnit TranslationUnit = clang_parseTranslationUnit(Index, 0, Arguments, ArgumentCount, 0, 0, 0);
	Assert(TranslationUnit);

    u32 DiagnosticCount = clang_getNumDiagnostics(TranslationUnit);
    for(u32 DiagnosticIndex = 0; DiagnosticIndex < DiagnosticCount; ++DiagnosticIndex)
    {
        CXDiagnostic Diagnostic = clang_getDiagnostic(TranslationUnit, DiagnosticIndex);
        CXSourceLocation ClangLocation = clang_getDiagnosticLocation(Diagnostic);
        CXString Text = clang_getDiagnosticSpelling(Diagnostic);
        location Location = GetLocation(ClangLocation);
        printf("%s:%u:%u: %s\n", clang_getCString(Location.Filename), Location.Line, Location.Column, clang_getCString(Text));
        clang_disposeString(Location.Filename);
        clang_disposeString(Text);
    }

	clang_visitChildren(clang_getTranslationUnitCursor(TranslationUnit),
			TranslationUnitVisitor, 0);

	clang_disposeTranslationUnit(TranslationUnit);
    clang_disposeIndex(Index);
	return(0);
}

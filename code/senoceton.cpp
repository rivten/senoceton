#include <stdio.h>
#include <clang-c/Index.h>

#include "rivten.h"

#define CLANG_TRANSLATION_UNIT_VISITOR(name) CXChildVisitResult name(CXCursor Cursor, CXCursor Parent, CXClientData Data)

CLANG_TRANSLATION_UNIT_VISITOR(TranslationUnitVisitor)
{
	return(CXChildVisit_Break);
}

int main(int ArgumentCount, char** Arguments)
{
	printf("Hello, sailor !\n");
	CXIndex Index = clang_createIndex(true, true);
	char* Filename = 0;
	const CXTranslationUnit TranslationUnit = clang_parseTranslationUnit(Index, Filename, 0, 0, 0, 0, 0);
	Assert(TranslationUnit);

	clang_visitChildren(clang_getTranslationUnitCursor(TranslationUnit),
			TranslationUnitVisitor, 0);

	clang_disposeTranslationUnit(TranslationUnit);
	return(0);
}

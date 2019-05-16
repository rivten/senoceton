const std = @import("std");

//use @cImport({
//@cInclude("clang-c/Index.h");
//});

use @import("clang.zig");

const Location = struct {
    filename: CXString,
    line: c_uint,
    col: c_uint,
};

fn get_location(location: CXSourceLocation) Location {
    var result: Location = undefined;
    var file: CXFile = undefined;
    clang_getSpellingLocation(location, &file, &result.line, &result.col, 0);
    result.filename = clang_getFileName(file);

    return (result);
}

fn zig_string(s: [*c]const u8) []const u8 {
    if (@ptrToInt(s) == 0) {
        return ([]const u8{});
    }
    var len: usize = 0;
    var ptr = s;
    while (ptr.* != 0) {
        len += 1;
        ptr += 1;
    }
    return (s[0..len]);
}

extern fn translation_unit_visitor(cursor: CXCursor, parent: CXCursor, data: CXClientData) CXChildVisitResult {
    const clang_location = clang_getCursorLocation(cursor);
    if (clang_Location_isInSystemHeader(clang_location) != 0 and clang_Location_isFromMainFile(clang_location) == 0) {
        return (CXChildVisit_Continue);
    }
    const location = get_location(clang_location);
    const name = clang_getCursorSpelling(cursor);
    const cursor_kind = clang_getCursorKind(cursor);
    const kind_name = clang_getCursorKindSpelling(cursor_kind);
    const clang_type = clang_getCursorType(cursor);
    const type_name = clang_getTypeSpelling(clang_type);
    const type_kind = clang_type.kind;
    const type_kind_name = clang_getTypeKindSpelling(type_kind);

    std.debug.warn("{}:{}:{} kind = {} / name = {} / type = {} / type_kind = {}\n", zig_string(clang_getCString(location.filename)), location.line, location.col, zig_string(clang_getCString(kind_name)), zig_string(clang_getCString(name)), zig_string(clang_getCString(type_name)), zig_string(clang_getCString(type_kind_name)));

    clang_disposeString(location.filename);
    clang_disposeString(kind_name);
    clang_disposeString(name);
    clang_disposeString(type_name);
    clang_disposeString(type_kind_name);

    return (CXChildVisit_Recurse);
}

pub fn main() void {
    std.debug.warn("Hello, sailor\n");
    var index = clang_createIndex(1, 0);
    const arguments = []([*]const u8){ c"-I", c"C:\\Program Files\\LLVM\\include", c"..\\code\\senoceton.cpp" };
    var translation_unit = clang_parseTranslationUnit(index, 0, &arguments[0], arguments.len, 0, 0, 0).?;
    const diagnostic_count = clang_getNumDiagnostics(translation_unit);
    var diagnostic_index: c_uint = 0;
    while (diagnostic_index < diagnostic_count) : (diagnostic_index += 1) {
        const diagnostic = clang_getDiagnostic(translation_unit, diagnostic_index);
        const clang_location = clang_getDiagnosticLocation(diagnostic);
        const text = clang_getDiagnosticSpelling(diagnostic);
        const location = get_location(clang_location);
        std.debug.warn("{}:{}:{}: {}\n", zig_string(clang_getCString(location.filename)), location.line, location.col, zig_string(clang_getCString(text)));
        clang_disposeString(location.filename);
        clang_disposeString(text);
    }

    _ = clang_visitChildren(clang_getTranslationUnitCursor(translation_unit), translation_unit_visitor, null);
}

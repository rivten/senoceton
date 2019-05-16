pub const va_list = [*c]u8;
pub extern fn __va_start(arg0: [*c]([*c]u8), ...) void;
pub const ptrdiff_t = c_longlong;
pub const __vcrt_bool = bool;
pub const wchar_t = c_ushort;
pub extern fn __security_init_cookie() void;
pub extern fn __security_check_cookie(_StackCookie: usize) void;
pub extern fn __report_gsfailure(_StackCookie: usize) noreturn;
pub extern var __security_cookie: usize;
pub const __crt_bool = bool;
pub extern fn _invalid_parameter(arg0: [*c]const wchar_t, arg1: [*c]const wchar_t, arg2: [*c]const wchar_t, arg3: c_uint, arg4: usize) void;
pub extern fn _invalid_parameter_noinfo() void;
pub extern fn _invalid_parameter_noinfo_noreturn() noreturn;
pub extern fn _invoke_watson(_Expression: [*c]const wchar_t, _FunctionName: [*c]const wchar_t, _FileName: [*c]const wchar_t, _LineNo: c_uint, _Reserved: usize) noreturn;
pub const errno_t = c_int;
pub const wint_t = c_ushort;
pub const wctype_t = c_ushort;
pub const __time32_t = c_long;
pub const __time64_t = c_longlong;
pub const struct___crt_locale_data_public = extern struct {
    _locale_pctype: [*c]const c_ushort,
    _locale_mb_cur_max: c_int,
    _locale_lc_codepage: c_uint,
};
pub const __crt_locale_data_public = struct___crt_locale_data_public;
pub const struct___crt_locale_data = @OpaqueType();
pub const struct___crt_multibyte_data = @OpaqueType();
pub const struct___crt_locale_pointers = extern struct {
    locinfo: ?*struct___crt_locale_data,
    mbcinfo: ?*struct___crt_multibyte_data,
};
pub const __crt_locale_pointers = struct___crt_locale_pointers;
pub const _locale_t = [*c]__crt_locale_pointers;
pub const struct__Mbstatet = extern struct {
    _Wchar: c_ulong,
    _Byte: c_ushort,
    _State: c_ushort,
};
pub const _Mbstatet = struct__Mbstatet;
pub const mbstate_t = _Mbstatet;
pub const time_t = __time64_t;
pub const rsize_t = usize;
pub const struct_tm = extern struct {
    tm_sec: c_int,
    tm_min: c_int,
    tm_hour: c_int,
    tm_mday: c_int,
    tm_mon: c_int,
    tm_year: c_int,
    tm_wday: c_int,
    tm_yday: c_int,
    tm_isdst: c_int,
};
pub extern fn _wasctime(_Tm: [*c]const struct_tm) [*c]wchar_t;
pub extern fn _wasctime_s(_Buffer: [*c]wchar_t, _SizeInWords: usize, _Tm: [*c]const struct_tm) errno_t;
pub extern fn wcsftime(_Buffer: [*c]wchar_t, _SizeInWords: usize, _Format: [*c]const wchar_t, _Tm: [*c]const struct_tm) usize;
pub extern fn _wcsftime_l(_Buffer: [*c]wchar_t, _SizeInWords: usize, _Format: [*c]const wchar_t, _Tm: [*c]const struct_tm, _Locale: _locale_t) usize;
pub extern fn _wctime32(_Time: [*c]const __time32_t) [*c]wchar_t;
pub extern fn _wctime32_s(_Buffer: [*c]wchar_t, _SizeInWords: usize, _Time: [*c]const __time32_t) errno_t;
pub extern fn _wctime64(_Time: [*c]const __time64_t) [*c]wchar_t;
pub extern fn _wctime64_s(_Buffer: [*c]wchar_t, _SizeInWords: usize, _Time: [*c]const __time64_t) errno_t;
pub extern fn _wstrdate_s(_Buffer: [*c]wchar_t, _SizeInWords: usize) errno_t;
pub extern fn _wstrdate(_Buffer: [*c]wchar_t) [*c]wchar_t;
pub extern fn _wstrtime_s(_Buffer: [*c]wchar_t, _SizeInWords: usize) errno_t;
pub extern fn _wstrtime(_Buffer: [*c]wchar_t) [*c]wchar_t;
pub fn _wctime(_Time: [*c]const time_t) [*c]wchar_t {
    return _wctime64(_Time);
}
pub fn _wctime_s(_Buffer: [*c]wchar_t, _SizeInWords: usize, _Time: [*c]const time_t) errno_t {
    return _wctime64_s(_Buffer, _SizeInWords, _Time);
}
pub const clock_t = c_long;
pub const struct__timespec32 = extern struct {
    tv_sec: __time32_t,
    tv_nsec: c_long,
};
pub const struct__timespec64 = extern struct {
    tv_sec: __time64_t,
    tv_nsec: c_long,
};
pub const struct_timespec = extern struct {
    tv_sec: time_t,
    tv_nsec: c_long,
};
pub extern fn __daylight() [*c]c_int;
pub extern fn __dstbias() [*c]c_long;
pub extern fn __timezone() [*c]c_long;
pub extern fn __tzname() [*c]([*c]u8);
pub extern fn _get_daylight(_Daylight: [*c]c_int) errno_t;
pub extern fn _get_dstbias(_DaylightSavingsBias: [*c]c_long) errno_t;
pub extern fn _get_timezone(_TimeZone: [*c]c_long) errno_t;
pub extern fn _get_tzname(_ReturnValue: [*c]usize, _Buffer: [*c]u8, _SizeInBytes: usize, _Index: c_int) errno_t;
pub extern fn asctime(_Tm: [*c]const struct_tm) [*c]u8;
pub extern fn asctime_s(_Buffer: [*c]u8, _SizeInBytes: usize, _Tm: [*c]const struct_tm) errno_t;
pub extern fn clock() clock_t;
pub extern fn _ctime32(_Time: [*c]const __time32_t) [*c]u8;
pub extern fn _ctime32_s(_Buffer: [*c]u8, _SizeInBytes: usize, _Time: [*c]const __time32_t) errno_t;
pub extern fn _ctime64(_Time: [*c]const __time64_t) [*c]u8;
pub extern fn _ctime64_s(_Buffer: [*c]u8, _SizeInBytes: usize, _Time: [*c]const __time64_t) errno_t;
pub extern fn _difftime32(_Time1: __time32_t, _Time2: __time32_t) f64;
pub extern fn _difftime64(_Time1: __time64_t, _Time2: __time64_t) f64;
pub extern fn _gmtime32(_Time: [*c]const __time32_t) [*c]struct_tm;
pub extern fn _gmtime32_s(_Tm: [*c]struct_tm, _Time: [*c]const __time32_t) errno_t;
pub extern fn _gmtime64(_Time: [*c]const __time64_t) [*c]struct_tm;
pub extern fn _gmtime64_s(_Tm: [*c]struct_tm, _Time: [*c]const __time64_t) errno_t;
pub extern fn _localtime32(_Time: [*c]const __time32_t) [*c]struct_tm;
pub extern fn _localtime32_s(_Tm: [*c]struct_tm, _Time: [*c]const __time32_t) errno_t;
pub extern fn _localtime64(_Time: [*c]const __time64_t) [*c]struct_tm;
pub extern fn _localtime64_s(_Tm: [*c]struct_tm, _Time: [*c]const __time64_t) errno_t;
pub extern fn _mkgmtime32(_Tm: [*c]struct_tm) __time32_t;
pub extern fn _mkgmtime64(_Tm: [*c]struct_tm) __time64_t;
pub extern fn _mktime32(_Tm: [*c]struct_tm) __time32_t;
pub extern fn _mktime64(_Tm: [*c]struct_tm) __time64_t;
pub extern fn strftime(_Buffer: [*c]u8, _SizeInBytes: usize, _Format: [*c]const u8, _Tm: [*c]const struct_tm) usize;
pub extern fn _strftime_l(_Buffer: [*c]u8, _MaxSize: usize, _Format: [*c]const u8, _Tm: [*c]const struct_tm, _Locale: _locale_t) usize;
pub extern fn _strdate_s(_Buffer: [*c]u8, _SizeInBytes: usize) errno_t;
pub extern fn _strdate(_Buffer: [*c]u8) [*c]u8;
pub extern fn _strtime_s(_Buffer: [*c]u8, _SizeInBytes: usize) errno_t;
pub extern fn _strtime(_Buffer: [*c]u8) [*c]u8;
pub extern fn _time32(_Time: [*c]__time32_t) __time32_t;
pub extern fn _time64(_Time: [*c]__time64_t) __time64_t;
pub extern fn _timespec32_get(_Ts: [*c]struct__timespec32, _Base: c_int) c_int;
pub extern fn _timespec64_get(_Ts: [*c]struct__timespec64, _Base: c_int) c_int;
pub extern fn _tzset() void;
pub extern fn _getsystime(_Tm: [*c]struct_tm) c_uint;
pub extern fn _setsystime(_Tm: [*c]struct_tm, _Milliseconds: c_uint) c_uint;
pub fn ctime(_Time: [*c]const time_t) [*c]u8 {
    return _ctime64(_Time);
}
pub fn difftime(_Time1: time_t, _Time2: time_t) f64 {
    return _difftime64(_Time1, _Time2);
}
pub fn gmtime(_Time: [*c]const time_t) [*c]struct_tm {
    return _gmtime64(_Time);
}
pub fn localtime(_Time: [*c]const time_t) [*c]struct_tm {
    return _localtime64(_Time);
}
pub fn _mkgmtime(_Tm: [*c]struct_tm) time_t {
    return _mkgmtime64(_Tm);
}
pub fn mktime(_Tm: [*c]struct_tm) time_t {
    return _mktime64(_Tm);
}
pub fn time(_Time: [*c]time_t) time_t {
    return _time64(_Time);
}
pub fn timespec_get(_Ts: [*c]struct_timespec, _Base: c_int) c_int {
    return _timespec64_get(@ptrCast([*c]struct__timespec64, _Ts), _Base);
}
pub fn ctime_s(_Buffer: [*c]u8, _SizeInBytes: usize, _Time: [*c]const time_t) errno_t {
    return _ctime64_s(_Buffer, _SizeInBytes, _Time);
}
pub fn gmtime_s(_Tm: [*c]struct_tm, _Time: [*c]const time_t) errno_t {
    return _gmtime64_s(_Tm, _Time);
}
pub fn localtime_s(_Tm: [*c]struct_tm, _Time: [*c]const time_t) errno_t {
    return _localtime64_s(_Tm, _Time);
}
pub extern fn tzset() void;
pub const CXError_Success = enum_CXErrorCode.CXError_Success;
pub const CXError_Failure = enum_CXErrorCode.CXError_Failure;
pub const CXError_Crashed = enum_CXErrorCode.CXError_Crashed;
pub const CXError_InvalidArguments = enum_CXErrorCode.CXError_InvalidArguments;
pub const CXError_ASTReadError = enum_CXErrorCode.CXError_ASTReadError;
pub const enum_CXErrorCode = extern enum {
    CXError_Success = 0,
    CXError_Failure = 1,
    CXError_Crashed = 2,
    CXError_InvalidArguments = 3,
    CXError_ASTReadError = 4,
};
pub const CXString = extern struct {
    data: ?*const c_void,
    private_flags: c_uint,
};
pub const CXStringSet = extern struct {
    Strings: [*c]CXString,
    Count: c_uint,
};
pub extern fn clang_getCString(string: CXString) [*c]const u8;
pub extern fn clang_disposeString(string: CXString) void;
pub extern fn clang_disposeStringSet(set: [*c]CXStringSet) void;
pub extern fn clang_getBuildSessionTimestamp() c_ulonglong;
pub const struct_CXVirtualFileOverlayImpl = @OpaqueType();
pub const CXVirtualFileOverlay = ?*struct_CXVirtualFileOverlayImpl;
pub extern fn clang_VirtualFileOverlay_create(options: c_uint) CXVirtualFileOverlay;
pub extern fn clang_VirtualFileOverlay_addFileMapping(arg0: CXVirtualFileOverlay, virtualPath: [*c]const u8, realPath: [*c]const u8) enum_CXErrorCode;
pub extern fn clang_VirtualFileOverlay_setCaseSensitivity(arg0: CXVirtualFileOverlay, caseSensitive: c_int) enum_CXErrorCode;
pub extern fn clang_VirtualFileOverlay_writeToBuffer(arg0: CXVirtualFileOverlay, options: c_uint, out_buffer_ptr: [*c]([*c]u8), out_buffer_size: [*c]c_uint) enum_CXErrorCode;
pub extern fn clang_free(buffer: ?*c_void) void;
pub extern fn clang_VirtualFileOverlay_dispose(arg0: CXVirtualFileOverlay) void;
pub const struct_CXModuleMapDescriptorImpl = @OpaqueType();
pub const CXModuleMapDescriptor = ?*struct_CXModuleMapDescriptorImpl;
pub extern fn clang_ModuleMapDescriptor_create(options: c_uint) CXModuleMapDescriptor;
pub extern fn clang_ModuleMapDescriptor_setFrameworkModuleName(arg0: CXModuleMapDescriptor, name: [*c]const u8) enum_CXErrorCode;
pub extern fn clang_ModuleMapDescriptor_setUmbrellaHeader(arg0: CXModuleMapDescriptor, name: [*c]const u8) enum_CXErrorCode;
pub extern fn clang_ModuleMapDescriptor_writeToBuffer(arg0: CXModuleMapDescriptor, options: c_uint, out_buffer_ptr: [*c]([*c]u8), out_buffer_size: [*c]c_uint) enum_CXErrorCode;
pub extern fn clang_ModuleMapDescriptor_dispose(arg0: CXModuleMapDescriptor) void;
pub const CXIndex = ?*c_void;
pub const struct_CXTargetInfoImpl = @OpaqueType();
pub const CXTargetInfo = ?*struct_CXTargetInfoImpl;
pub const struct_CXTranslationUnitImpl = @OpaqueType();
pub const CXTranslationUnit = ?*struct_CXTranslationUnitImpl;
pub const CXClientData = ?*c_void;
pub const struct_CXUnsavedFile = extern struct {
    Filename: [*c]const u8,
    Contents: [*c]const u8,
    Length: c_ulong,
};
pub const CXAvailability_Available = enum_CXAvailabilityKind.CXAvailability_Available;
pub const CXAvailability_Deprecated = enum_CXAvailabilityKind.CXAvailability_Deprecated;
pub const CXAvailability_NotAvailable = enum_CXAvailabilityKind.CXAvailability_NotAvailable;
pub const CXAvailability_NotAccessible = enum_CXAvailabilityKind.CXAvailability_NotAccessible;
pub const enum_CXAvailabilityKind = extern enum {
    CXAvailability_Available,
    CXAvailability_Deprecated,
    CXAvailability_NotAvailable,
    CXAvailability_NotAccessible,
};
pub const struct_CXVersion = extern struct {
    Major: c_int,
    Minor: c_int,
    Subminor: c_int,
};
pub const CXVersion = struct_CXVersion;
pub const CXCursor_ExceptionSpecificationKind_None = enum_CXCursor_ExceptionSpecificationKind._None;
pub const CXCursor_ExceptionSpecificationKind_DynamicNone = enum_CXCursor_ExceptionSpecificationKind._DynamicNone;
pub const CXCursor_ExceptionSpecificationKind_Dynamic = enum_CXCursor_ExceptionSpecificationKind._Dynamic;
pub const CXCursor_ExceptionSpecificationKind_MSAny = enum_CXCursor_ExceptionSpecificationKind._MSAny;
pub const CXCursor_ExceptionSpecificationKind_BasicNoexcept = enum_CXCursor_ExceptionSpecificationKind._BasicNoexcept;
pub const CXCursor_ExceptionSpecificationKind_ComputedNoexcept = enum_CXCursor_ExceptionSpecificationKind._ComputedNoexcept;
pub const CXCursor_ExceptionSpecificationKind_Unevaluated = enum_CXCursor_ExceptionSpecificationKind._Unevaluated;
pub const CXCursor_ExceptionSpecificationKind_Uninstantiated = enum_CXCursor_ExceptionSpecificationKind._Uninstantiated;
pub const CXCursor_ExceptionSpecificationKind_Unparsed = enum_CXCursor_ExceptionSpecificationKind._Unparsed;
pub const enum_CXCursor_ExceptionSpecificationKind = extern enum {
    _None,
    _DynamicNone,
    _Dynamic,
    _MSAny,
    _BasicNoexcept,
    _ComputedNoexcept,
    _Unevaluated,
    _Uninstantiated,
    _Unparsed,
};
pub extern fn clang_createIndex(excludeDeclarationsFromPCH: c_int, displayDiagnostics: c_int) CXIndex;
pub extern fn clang_disposeIndex(index: CXIndex) void;
pub const CXGlobalOpt_None = 0;
pub const CXGlobalOpt_ThreadBackgroundPriorityForIndexing = 1;
pub const CXGlobalOpt_ThreadBackgroundPriorityForEditing = 2;
pub const CXGlobalOpt_ThreadBackgroundPriorityForAll = 3;
pub const CXGlobalOptFlags = extern enum {
    CXGlobalOpt_None = 0,
    CXGlobalOpt_ThreadBackgroundPriorityForIndexing = 1,
    CXGlobalOpt_ThreadBackgroundPriorityForEditing = 2,
    CXGlobalOpt_ThreadBackgroundPriorityForAll = 3,
};
pub extern fn clang_CXIndex_setGlobalOptions(arg0: CXIndex, options: c_uint) void;
pub extern fn clang_CXIndex_getGlobalOptions(arg0: CXIndex) c_uint;
pub extern fn clang_CXIndex_setInvocationEmissionPathOption(arg0: CXIndex, Path: [*c]const u8) void;
pub const CXFile = ?*c_void;
pub extern fn clang_getFileName(SFile: CXFile) CXString;
pub extern fn clang_getFileTime(SFile: CXFile) time_t;
pub const CXFileUniqueID = extern struct {
    data: [3]c_ulonglong,
};
pub extern fn clang_getFileUniqueID(file: CXFile, outID: [*c]CXFileUniqueID) c_int;
pub extern fn clang_isFileMultipleIncludeGuarded(tu: CXTranslationUnit, file: CXFile) c_uint;
pub extern fn clang_getFile(tu: CXTranslationUnit, file_name: [*c]const u8) CXFile;
pub extern fn clang_getFileContents(tu: CXTranslationUnit, file: CXFile, size: [*c]usize) [*c]const u8;
pub extern fn clang_File_isEqual(file1: CXFile, file2: CXFile) c_int;
pub extern fn clang_File_tryGetRealPathName(file: CXFile) CXString;
pub const CXSourceLocation = extern struct {
    ptr_data: [2](?*const c_void),
    int_data: c_uint,
};
pub const CXSourceRange = extern struct {
    ptr_data: [2](?*const c_void),
    begin_int_data: c_uint,
    end_int_data: c_uint,
};
pub extern fn clang_getNullLocation() CXSourceLocation;
pub extern fn clang_equalLocations(loc1: CXSourceLocation, loc2: CXSourceLocation) c_uint;
pub extern fn clang_getLocation(tu: CXTranslationUnit, file: CXFile, line: c_uint, column: c_uint) CXSourceLocation;
pub extern fn clang_getLocationForOffset(tu: CXTranslationUnit, file: CXFile, offset: c_uint) CXSourceLocation;
pub extern fn clang_Location_isInSystemHeader(location: CXSourceLocation) c_int;
pub extern fn clang_Location_isFromMainFile(location: CXSourceLocation) c_int;
pub extern fn clang_getNullRange() CXSourceRange;
pub extern fn clang_getRange(begin: CXSourceLocation, end: CXSourceLocation) CXSourceRange;
pub extern fn clang_equalRanges(range1: CXSourceRange, range2: CXSourceRange) c_uint;
pub extern fn clang_Range_isNull(range: CXSourceRange) c_int;
pub extern fn clang_getExpansionLocation(location: CXSourceLocation, file: [*c]CXFile, line: [*c]c_uint, column: [*c]c_uint, offset: [*c]c_uint) void;
pub extern fn clang_getPresumedLocation(location: CXSourceLocation, filename: [*c]CXString, line: [*c]c_uint, column: [*c]c_uint) void;
pub extern fn clang_getInstantiationLocation(location: CXSourceLocation, file: [*c]CXFile, line: [*c]c_uint, column: [*c]c_uint, offset: [*c]c_uint) void;
pub extern fn clang_getSpellingLocation(location: CXSourceLocation, file: [*c]CXFile, line: [*c]c_uint, column: [*c]c_uint, offset: [*c]c_uint) void;
pub extern fn clang_getFileLocation(location: CXSourceLocation, file: [*c]CXFile, line: [*c]c_uint, column: [*c]c_uint, offset: [*c]c_uint) void;
pub extern fn clang_getRangeStart(range: CXSourceRange) CXSourceLocation;
pub extern fn clang_getRangeEnd(range: CXSourceRange) CXSourceLocation;
pub const CXSourceRangeList = extern struct {
    count: c_uint,
    ranges: [*c]CXSourceRange,
};
pub extern fn clang_getSkippedRanges(tu: CXTranslationUnit, file: CXFile) [*c]CXSourceRangeList;
pub extern fn clang_getAllSkippedRanges(tu: CXTranslationUnit) [*c]CXSourceRangeList;
pub extern fn clang_disposeSourceRangeList(ranges: [*c]CXSourceRangeList) void;
pub const CXDiagnostic_Ignored = enum_CXDiagnosticSeverity.CXDiagnostic_Ignored;
pub const CXDiagnostic_Note = enum_CXDiagnosticSeverity.CXDiagnostic_Note;
pub const CXDiagnostic_Warning = enum_CXDiagnosticSeverity.CXDiagnostic_Warning;
pub const CXDiagnostic_Error = enum_CXDiagnosticSeverity.CXDiagnostic_Error;
pub const CXDiagnostic_Fatal = enum_CXDiagnosticSeverity.CXDiagnostic_Fatal;
pub const enum_CXDiagnosticSeverity = extern enum {
    CXDiagnostic_Ignored = 0,
    CXDiagnostic_Note = 1,
    CXDiagnostic_Warning = 2,
    CXDiagnostic_Error = 3,
    CXDiagnostic_Fatal = 4,
};
pub const CXDiagnostic = ?*c_void;
pub const CXDiagnosticSet = ?*c_void;
pub extern fn clang_getNumDiagnosticsInSet(Diags: CXDiagnosticSet) c_uint;
pub extern fn clang_getDiagnosticInSet(Diags: CXDiagnosticSet, Index: c_uint) CXDiagnostic;
pub const CXLoadDiag_None = enum_CXLoadDiag_Error.CXLoadDiag_None;
pub const CXLoadDiag_Unknown = enum_CXLoadDiag_Error.CXLoadDiag_Unknown;
pub const CXLoadDiag_CannotLoad = enum_CXLoadDiag_Error.CXLoadDiag_CannotLoad;
pub const CXLoadDiag_InvalidFile = enum_CXLoadDiag_Error.CXLoadDiag_InvalidFile;
pub const enum_CXLoadDiag_Error = extern enum {
    CXLoadDiag_None = 0,
    CXLoadDiag_Unknown = 1,
    CXLoadDiag_CannotLoad = 2,
    CXLoadDiag_InvalidFile = 3,
};
pub extern fn clang_loadDiagnostics(file: [*c]const u8, @"error": [*c]enum_CXLoadDiag_Error, errorString: [*c]CXString) CXDiagnosticSet;
pub extern fn clang_disposeDiagnosticSet(Diags: CXDiagnosticSet) void;
pub extern fn clang_getChildDiagnostics(D: CXDiagnostic) CXDiagnosticSet;
pub extern fn clang_getNumDiagnostics(Unit: CXTranslationUnit) c_uint;
pub extern fn clang_getDiagnostic(Unit: CXTranslationUnit, Index: c_uint) CXDiagnostic;
pub extern fn clang_getDiagnosticSetFromTU(Unit: CXTranslationUnit) CXDiagnosticSet;
pub extern fn clang_disposeDiagnostic(Diagnostic: CXDiagnostic) void;
pub const CXDiagnostic_DisplaySourceLocation = enum_CXDiagnosticDisplayOptions.CXDiagnostic_DisplaySourceLocation;
pub const CXDiagnostic_DisplayColumn = enum_CXDiagnosticDisplayOptions.CXDiagnostic_DisplayColumn;
pub const CXDiagnostic_DisplaySourceRanges = enum_CXDiagnosticDisplayOptions.CXDiagnostic_DisplaySourceRanges;
pub const CXDiagnostic_DisplayOption = enum_CXDiagnosticDisplayOptions.CXDiagnostic_DisplayOption;
pub const CXDiagnostic_DisplayCategoryId = enum_CXDiagnosticDisplayOptions.CXDiagnostic_DisplayCategoryId;
pub const CXDiagnostic_DisplayCategoryName = enum_CXDiagnosticDisplayOptions.CXDiagnostic_DisplayCategoryName;
pub const enum_CXDiagnosticDisplayOptions = extern enum {
    CXDiagnostic_DisplaySourceLocation = 1,
    CXDiagnostic_DisplayColumn = 2,
    CXDiagnostic_DisplaySourceRanges = 4,
    CXDiagnostic_DisplayOption = 8,
    CXDiagnostic_DisplayCategoryId = 16,
    CXDiagnostic_DisplayCategoryName = 32,
};
pub extern fn clang_formatDiagnostic(Diagnostic: CXDiagnostic, Options: c_uint) CXString;
pub extern fn clang_defaultDiagnosticDisplayOptions() c_uint;
pub extern fn clang_getDiagnosticSeverity(arg0: CXDiagnostic) enum_CXDiagnosticSeverity;
pub extern fn clang_getDiagnosticLocation(arg0: CXDiagnostic) CXSourceLocation;
pub extern fn clang_getDiagnosticSpelling(arg0: CXDiagnostic) CXString;
pub extern fn clang_getDiagnosticOption(Diag: CXDiagnostic, Disable: [*c]CXString) CXString;
pub extern fn clang_getDiagnosticCategory(arg0: CXDiagnostic) c_uint;
pub extern fn clang_getDiagnosticCategoryName(Category: c_uint) CXString;
pub extern fn clang_getDiagnosticCategoryText(arg0: CXDiagnostic) CXString;
pub extern fn clang_getDiagnosticNumRanges(arg0: CXDiagnostic) c_uint;
pub extern fn clang_getDiagnosticRange(Diagnostic: CXDiagnostic, Range: c_uint) CXSourceRange;
pub extern fn clang_getDiagnosticNumFixIts(Diagnostic: CXDiagnostic) c_uint;
pub extern fn clang_getDiagnosticFixIt(Diagnostic: CXDiagnostic, FixIt: c_uint, ReplacementRange: [*c]CXSourceRange) CXString;
pub extern fn clang_getTranslationUnitSpelling(CTUnit: CXTranslationUnit) CXString;
pub extern fn clang_createTranslationUnitFromSourceFile(CIdx: CXIndex, source_filename: [*c]const u8, num_clang_command_line_args: c_int, clang_command_line_args: [*c]const ([*c]const u8), num_unsaved_files: c_uint, unsaved_files: [*c]struct_CXUnsavedFile) CXTranslationUnit;
pub extern fn clang_createTranslationUnit(CIdx: CXIndex, ast_filename: [*c]const u8) CXTranslationUnit;
pub extern fn clang_createTranslationUnit2(CIdx: CXIndex, ast_filename: [*c]const u8, out_TU: [*c]CXTranslationUnit) enum_CXErrorCode;
pub const CXTranslationUnit_None = enum_CXTranslationUnit_Flags.CXTranslationUnit_None;
pub const CXTranslationUnit_DetailedPreprocessingRecord = enum_CXTranslationUnit_Flags.CXTranslationUnit_DetailedPreprocessingRecord;
pub const CXTranslationUnit_Incomplete = enum_CXTranslationUnit_Flags.CXTranslationUnit_Incomplete;
pub const CXTranslationUnit_PrecompiledPreamble = enum_CXTranslationUnit_Flags.CXTranslationUnit_PrecompiledPreamble;
pub const CXTranslationUnit_CacheCompletionResults = enum_CXTranslationUnit_Flags.CXTranslationUnit_CacheCompletionResults;
pub const CXTranslationUnit_ForSerialization = enum_CXTranslationUnit_Flags.CXTranslationUnit_ForSerialization;
pub const CXTranslationUnit_CXXChainedPCH = enum_CXTranslationUnit_Flags.CXTranslationUnit_CXXChainedPCH;
pub const CXTranslationUnit_SkipFunctionBodies = enum_CXTranslationUnit_Flags.CXTranslationUnit_SkipFunctionBodies;
pub const CXTranslationUnit_IncludeBriefCommentsInCodeCompletion = enum_CXTranslationUnit_Flags.CXTranslationUnit_IncludeBriefCommentsInCodeCompletion;
pub const CXTranslationUnit_CreatePreambleOnFirstParse = enum_CXTranslationUnit_Flags.CXTranslationUnit_CreatePreambleOnFirstParse;
pub const CXTranslationUnit_KeepGoing = enum_CXTranslationUnit_Flags.CXTranslationUnit_KeepGoing;
pub const CXTranslationUnit_SingleFileParse = enum_CXTranslationUnit_Flags.CXTranslationUnit_SingleFileParse;
pub const CXTranslationUnit_LimitSkipFunctionBodiesToPreamble = enum_CXTranslationUnit_Flags.CXTranslationUnit_LimitSkipFunctionBodiesToPreamble;
pub const CXTranslationUnit_IncludeAttributedTypes = enum_CXTranslationUnit_Flags.CXTranslationUnit_IncludeAttributedTypes;
pub const CXTranslationUnit_VisitImplicitAttributes = enum_CXTranslationUnit_Flags.CXTranslationUnit_VisitImplicitAttributes;
pub const enum_CXTranslationUnit_Flags = extern enum {
    CXTranslationUnit_None = 0,
    CXTranslationUnit_DetailedPreprocessingRecord = 1,
    CXTranslationUnit_Incomplete = 2,
    CXTranslationUnit_PrecompiledPreamble = 4,
    CXTranslationUnit_CacheCompletionResults = 8,
    CXTranslationUnit_ForSerialization = 16,
    CXTranslationUnit_CXXChainedPCH = 32,
    CXTranslationUnit_SkipFunctionBodies = 64,
    CXTranslationUnit_IncludeBriefCommentsInCodeCompletion = 128,
    CXTranslationUnit_CreatePreambleOnFirstParse = 256,
    CXTranslationUnit_KeepGoing = 512,
    CXTranslationUnit_SingleFileParse = 1024,
    CXTranslationUnit_LimitSkipFunctionBodiesToPreamble = 2048,
    CXTranslationUnit_IncludeAttributedTypes = 4096,
    CXTranslationUnit_VisitImplicitAttributes = 8192,
};
pub extern fn clang_defaultEditingTranslationUnitOptions() c_uint;
pub extern fn clang_parseTranslationUnit(CIdx: CXIndex, source_filename: [*c]const u8, command_line_args: [*c]const ([*c]const u8), num_command_line_args: c_int, unsaved_files: [*c]struct_CXUnsavedFile, num_unsaved_files: c_uint, options: c_uint) CXTranslationUnit;
pub extern fn clang_parseTranslationUnit2(CIdx: CXIndex, source_filename: [*c]const u8, command_line_args: [*c]const ([*c]const u8), num_command_line_args: c_int, unsaved_files: [*c]struct_CXUnsavedFile, num_unsaved_files: c_uint, options: c_uint, out_TU: [*c]CXTranslationUnit) enum_CXErrorCode;
pub extern fn clang_parseTranslationUnit2FullArgv(CIdx: CXIndex, source_filename: [*c]const u8, command_line_args: [*c]const ([*c]const u8), num_command_line_args: c_int, unsaved_files: [*c]struct_CXUnsavedFile, num_unsaved_files: c_uint, options: c_uint, out_TU: [*c]CXTranslationUnit) enum_CXErrorCode;
pub const CXSaveTranslationUnit_None = enum_CXSaveTranslationUnit_Flags.CXSaveTranslationUnit_None;
pub const enum_CXSaveTranslationUnit_Flags = extern enum {
    CXSaveTranslationUnit_None = 0,
};
pub extern fn clang_defaultSaveOptions(TU: CXTranslationUnit) c_uint;
pub const CXSaveError_None = enum_CXSaveError._None;
pub const CXSaveError_Unknown = enum_CXSaveError._Unknown;
pub const CXSaveError_TranslationErrors = enum_CXSaveError._TranslationErrors;
pub const CXSaveError_InvalidTU = enum_CXSaveError._InvalidTU;
pub const enum_CXSaveError = extern enum {
    _None = 0,
    _Unknown = 1,
    _TranslationErrors = 2,
    _InvalidTU = 3,
};
pub extern fn clang_saveTranslationUnit(TU: CXTranslationUnit, FileName: [*c]const u8, options: c_uint) c_int;
pub extern fn clang_suspendTranslationUnit(arg0: CXTranslationUnit) c_uint;
pub extern fn clang_disposeTranslationUnit(arg0: CXTranslationUnit) void;
pub const CXReparse_None = enum_CXReparse_Flags.CXReparse_None;
pub const enum_CXReparse_Flags = extern enum {
    CXReparse_None = 0,
};
pub extern fn clang_defaultReparseOptions(TU: CXTranslationUnit) c_uint;
pub extern fn clang_reparseTranslationUnit(TU: CXTranslationUnit, num_unsaved_files: c_uint, unsaved_files: [*c]struct_CXUnsavedFile, options: c_uint) c_int;
pub const CXTUResourceUsage_AST = enum_CXTUResourceUsageKind.CXTUResourceUsage_AST;
pub const CXTUResourceUsage_Identifiers = enum_CXTUResourceUsageKind.CXTUResourceUsage_Identifiers;
pub const CXTUResourceUsage_Selectors = enum_CXTUResourceUsageKind.CXTUResourceUsage_Selectors;
pub const CXTUResourceUsage_GlobalCompletionResults = enum_CXTUResourceUsageKind.CXTUResourceUsage_GlobalCompletionResults;
pub const CXTUResourceUsage_SourceManagerContentCache = enum_CXTUResourceUsageKind.CXTUResourceUsage_SourceManagerContentCache;
pub const CXTUResourceUsage_AST_SideTables = enum_CXTUResourceUsageKind.CXTUResourceUsage_AST_SideTables;
pub const CXTUResourceUsage_SourceManager_Membuffer_Malloc = enum_CXTUResourceUsageKind.CXTUResourceUsage_SourceManager_Membuffer_Malloc;
pub const CXTUResourceUsage_SourceManager_Membuffer_MMap = enum_CXTUResourceUsageKind.CXTUResourceUsage_SourceManager_Membuffer_MMap;
pub const CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc = enum_CXTUResourceUsageKind.CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc;
pub const CXTUResourceUsage_ExternalASTSource_Membuffer_MMap = enum_CXTUResourceUsageKind.CXTUResourceUsage_ExternalASTSource_Membuffer_MMap;
pub const CXTUResourceUsage_Preprocessor = enum_CXTUResourceUsageKind.CXTUResourceUsage_Preprocessor;
pub const CXTUResourceUsage_PreprocessingRecord = enum_CXTUResourceUsageKind.CXTUResourceUsage_PreprocessingRecord;
pub const CXTUResourceUsage_SourceManager_DataStructures = enum_CXTUResourceUsageKind.CXTUResourceUsage_SourceManager_DataStructures;
pub const CXTUResourceUsage_Preprocessor_HeaderSearch = enum_CXTUResourceUsageKind.CXTUResourceUsage_Preprocessor_HeaderSearch;
pub const CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN = enum_CXTUResourceUsageKind.CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN;
pub const CXTUResourceUsage_MEMORY_IN_BYTES_END = enum_CXTUResourceUsageKind.CXTUResourceUsage_MEMORY_IN_BYTES_END;
pub const CXTUResourceUsage_First = enum_CXTUResourceUsageKind.CXTUResourceUsage_First;
pub const CXTUResourceUsage_Last = enum_CXTUResourceUsageKind.CXTUResourceUsage_Last;
pub const enum_CXTUResourceUsageKind = extern enum {
    CXTUResourceUsage_AST = 1,
    CXTUResourceUsage_Identifiers = 2,
    CXTUResourceUsage_Selectors = 3,
    CXTUResourceUsage_GlobalCompletionResults = 4,
    CXTUResourceUsage_SourceManagerContentCache = 5,
    CXTUResourceUsage_AST_SideTables = 6,
    CXTUResourceUsage_SourceManager_Membuffer_Malloc = 7,
    CXTUResourceUsage_SourceManager_Membuffer_MMap = 8,
    CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc = 9,
    CXTUResourceUsage_ExternalASTSource_Membuffer_MMap = 10,
    CXTUResourceUsage_Preprocessor = 11,
    CXTUResourceUsage_PreprocessingRecord = 12,
    CXTUResourceUsage_SourceManager_DataStructures = 13,
    CXTUResourceUsage_Preprocessor_HeaderSearch = 14,
    CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN = 1,
    CXTUResourceUsage_MEMORY_IN_BYTES_END = 14,
    CXTUResourceUsage_First = 1,
    CXTUResourceUsage_Last = 14,
};
pub extern fn clang_getTUResourceUsageName(kind: enum_CXTUResourceUsageKind) [*c]const u8;
pub const struct_CXTUResourceUsageEntry = extern struct {
    kind: enum_CXTUResourceUsageKind,
    amount: c_ulong,
};
pub const CXTUResourceUsageEntry = struct_CXTUResourceUsageEntry;
pub const struct_CXTUResourceUsage = extern struct {
    data: ?*c_void,
    numEntries: c_uint,
    entries: [*c]CXTUResourceUsageEntry,
};
pub const CXTUResourceUsage = struct_CXTUResourceUsage;
pub extern fn clang_getCXTUResourceUsage(TU: CXTranslationUnit) CXTUResourceUsage;
pub extern fn clang_disposeCXTUResourceUsage(usage: CXTUResourceUsage) void;
pub extern fn clang_getTranslationUnitTargetInfo(CTUnit: CXTranslationUnit) CXTargetInfo;
pub extern fn clang_TargetInfo_dispose(Info: CXTargetInfo) void;
pub extern fn clang_TargetInfo_getTriple(Info: CXTargetInfo) CXString;
pub extern fn clang_TargetInfo_getPointerWidth(Info: CXTargetInfo) c_int;
pub const CXCursor_UnexposedDecl = enum_CXCursorKind.CXCursor_UnexposedDecl;
pub const CXCursor_StructDecl = enum_CXCursorKind.CXCursor_StructDecl;
pub const CXCursor_UnionDecl = enum_CXCursorKind.CXCursor_UnionDecl;
pub const CXCursor_ClassDecl = enum_CXCursorKind.CXCursor_ClassDecl;
pub const CXCursor_EnumDecl = enum_CXCursorKind.CXCursor_EnumDecl;
pub const CXCursor_FieldDecl = enum_CXCursorKind.CXCursor_FieldDecl;
pub const CXCursor_EnumConstantDecl = enum_CXCursorKind.CXCursor_EnumConstantDecl;
pub const CXCursor_FunctionDecl = enum_CXCursorKind.CXCursor_FunctionDecl;
pub const CXCursor_VarDecl = enum_CXCursorKind.CXCursor_VarDecl;
pub const CXCursor_ParmDecl = enum_CXCursorKind.CXCursor_ParmDecl;
pub const CXCursor_ObjCInterfaceDecl = enum_CXCursorKind.CXCursor_ObjCInterfaceDecl;
pub const CXCursor_ObjCCategoryDecl = enum_CXCursorKind.CXCursor_ObjCCategoryDecl;
pub const CXCursor_ObjCProtocolDecl = enum_CXCursorKind.CXCursor_ObjCProtocolDecl;
pub const CXCursor_ObjCPropertyDecl = enum_CXCursorKind.CXCursor_ObjCPropertyDecl;
pub const CXCursor_ObjCIvarDecl = enum_CXCursorKind.CXCursor_ObjCIvarDecl;
pub const CXCursor_ObjCInstanceMethodDecl = enum_CXCursorKind.CXCursor_ObjCInstanceMethodDecl;
pub const CXCursor_ObjCClassMethodDecl = enum_CXCursorKind.CXCursor_ObjCClassMethodDecl;
pub const CXCursor_ObjCImplementationDecl = enum_CXCursorKind.CXCursor_ObjCImplementationDecl;
pub const CXCursor_ObjCCategoryImplDecl = enum_CXCursorKind.CXCursor_ObjCCategoryImplDecl;
pub const CXCursor_TypedefDecl = enum_CXCursorKind.CXCursor_TypedefDecl;
pub const CXCursor_CXXMethod = enum_CXCursorKind.CXCursor_CXXMethod;
pub const CXCursor_Namespace = enum_CXCursorKind.CXCursor_Namespace;
pub const CXCursor_LinkageSpec = enum_CXCursorKind.CXCursor_LinkageSpec;
pub const CXCursor_Constructor = enum_CXCursorKind.CXCursor_Constructor;
pub const CXCursor_Destructor = enum_CXCursorKind.CXCursor_Destructor;
pub const CXCursor_ConversionFunction = enum_CXCursorKind.CXCursor_ConversionFunction;
pub const CXCursor_TemplateTypeParameter = enum_CXCursorKind.CXCursor_TemplateTypeParameter;
pub const CXCursor_NonTypeTemplateParameter = enum_CXCursorKind.CXCursor_NonTypeTemplateParameter;
pub const CXCursor_TemplateTemplateParameter = enum_CXCursorKind.CXCursor_TemplateTemplateParameter;
pub const CXCursor_FunctionTemplate = enum_CXCursorKind.CXCursor_FunctionTemplate;
pub const CXCursor_ClassTemplate = enum_CXCursorKind.CXCursor_ClassTemplate;
pub const CXCursor_ClassTemplatePartialSpecialization = enum_CXCursorKind.CXCursor_ClassTemplatePartialSpecialization;
pub const CXCursor_NamespaceAlias = enum_CXCursorKind.CXCursor_NamespaceAlias;
pub const CXCursor_UsingDirective = enum_CXCursorKind.CXCursor_UsingDirective;
pub const CXCursor_UsingDeclaration = enum_CXCursorKind.CXCursor_UsingDeclaration;
pub const CXCursor_TypeAliasDecl = enum_CXCursorKind.CXCursor_TypeAliasDecl;
pub const CXCursor_ObjCSynthesizeDecl = enum_CXCursorKind.CXCursor_ObjCSynthesizeDecl;
pub const CXCursor_ObjCDynamicDecl = enum_CXCursorKind.CXCursor_ObjCDynamicDecl;
pub const CXCursor_CXXAccessSpecifier = enum_CXCursorKind.CXCursor_CXXAccessSpecifier;
pub const CXCursor_FirstDecl = enum_CXCursorKind.CXCursor_FirstDecl;
pub const CXCursor_LastDecl = enum_CXCursorKind.CXCursor_LastDecl;
pub const CXCursor_FirstRef = enum_CXCursorKind.CXCursor_FirstRef;
pub const CXCursor_ObjCSuperClassRef = enum_CXCursorKind.CXCursor_ObjCSuperClassRef;
pub const CXCursor_ObjCProtocolRef = enum_CXCursorKind.CXCursor_ObjCProtocolRef;
pub const CXCursor_ObjCClassRef = enum_CXCursorKind.CXCursor_ObjCClassRef;
pub const CXCursor_TypeRef = enum_CXCursorKind.CXCursor_TypeRef;
pub const CXCursor_CXXBaseSpecifier = enum_CXCursorKind.CXCursor_CXXBaseSpecifier;
pub const CXCursor_TemplateRef = enum_CXCursorKind.CXCursor_TemplateRef;
pub const CXCursor_NamespaceRef = enum_CXCursorKind.CXCursor_NamespaceRef;
pub const CXCursor_MemberRef = enum_CXCursorKind.CXCursor_MemberRef;
pub const CXCursor_LabelRef = enum_CXCursorKind.CXCursor_LabelRef;
pub const CXCursor_OverloadedDeclRef = enum_CXCursorKind.CXCursor_OverloadedDeclRef;
pub const CXCursor_VariableRef = enum_CXCursorKind.CXCursor_VariableRef;
pub const CXCursor_LastRef = enum_CXCursorKind.CXCursor_LastRef;
pub const CXCursor_FirstInvalid = enum_CXCursorKind.CXCursor_FirstInvalid;
pub const CXCursor_InvalidFile = enum_CXCursorKind.CXCursor_InvalidFile;
pub const CXCursor_NoDeclFound = enum_CXCursorKind.CXCursor_NoDeclFound;
pub const CXCursor_NotImplemented = enum_CXCursorKind.CXCursor_NotImplemented;
pub const CXCursor_InvalidCode = enum_CXCursorKind.CXCursor_InvalidCode;
pub const CXCursor_LastInvalid = enum_CXCursorKind.CXCursor_LastInvalid;
pub const CXCursor_FirstExpr = enum_CXCursorKind.CXCursor_FirstExpr;
pub const CXCursor_UnexposedExpr = enum_CXCursorKind.CXCursor_UnexposedExpr;
pub const CXCursor_DeclRefExpr = enum_CXCursorKind.CXCursor_DeclRefExpr;
pub const CXCursor_MemberRefExpr = enum_CXCursorKind.CXCursor_MemberRefExpr;
pub const CXCursor_CallExpr = enum_CXCursorKind.CXCursor_CallExpr;
pub const CXCursor_ObjCMessageExpr = enum_CXCursorKind.CXCursor_ObjCMessageExpr;
pub const CXCursor_BlockExpr = enum_CXCursorKind.CXCursor_BlockExpr;
pub const CXCursor_IntegerLiteral = enum_CXCursorKind.CXCursor_IntegerLiteral;
pub const CXCursor_FloatingLiteral = enum_CXCursorKind.CXCursor_FloatingLiteral;
pub const CXCursor_ImaginaryLiteral = enum_CXCursorKind.CXCursor_ImaginaryLiteral;
pub const CXCursor_StringLiteral = enum_CXCursorKind.CXCursor_StringLiteral;
pub const CXCursor_CharacterLiteral = enum_CXCursorKind.CXCursor_CharacterLiteral;
pub const CXCursor_ParenExpr = enum_CXCursorKind.CXCursor_ParenExpr;
pub const CXCursor_UnaryOperator = enum_CXCursorKind.CXCursor_UnaryOperator;
pub const CXCursor_ArraySubscriptExpr = enum_CXCursorKind.CXCursor_ArraySubscriptExpr;
pub const CXCursor_BinaryOperator = enum_CXCursorKind.CXCursor_BinaryOperator;
pub const CXCursor_CompoundAssignOperator = enum_CXCursorKind.CXCursor_CompoundAssignOperator;
pub const CXCursor_ConditionalOperator = enum_CXCursorKind.CXCursor_ConditionalOperator;
pub const CXCursor_CStyleCastExpr = enum_CXCursorKind.CXCursor_CStyleCastExpr;
pub const CXCursor_CompoundLiteralExpr = enum_CXCursorKind.CXCursor_CompoundLiteralExpr;
pub const CXCursor_InitListExpr = enum_CXCursorKind.CXCursor_InitListExpr;
pub const CXCursor_AddrLabelExpr = enum_CXCursorKind.CXCursor_AddrLabelExpr;
pub const CXCursor_StmtExpr = enum_CXCursorKind.CXCursor_StmtExpr;
pub const CXCursor_GenericSelectionExpr = enum_CXCursorKind.CXCursor_GenericSelectionExpr;
pub const CXCursor_GNUNullExpr = enum_CXCursorKind.CXCursor_GNUNullExpr;
pub const CXCursor_CXXStaticCastExpr = enum_CXCursorKind.CXCursor_CXXStaticCastExpr;
pub const CXCursor_CXXDynamicCastExpr = enum_CXCursorKind.CXCursor_CXXDynamicCastExpr;
pub const CXCursor_CXXReinterpretCastExpr = enum_CXCursorKind.CXCursor_CXXReinterpretCastExpr;
pub const CXCursor_CXXConstCastExpr = enum_CXCursorKind.CXCursor_CXXConstCastExpr;
pub const CXCursor_CXXFunctionalCastExpr = enum_CXCursorKind.CXCursor_CXXFunctionalCastExpr;
pub const CXCursor_CXXTypeidExpr = enum_CXCursorKind.CXCursor_CXXTypeidExpr;
pub const CXCursor_CXXBoolLiteralExpr = enum_CXCursorKind.CXCursor_CXXBoolLiteralExpr;
pub const CXCursor_CXXNullPtrLiteralExpr = enum_CXCursorKind.CXCursor_CXXNullPtrLiteralExpr;
pub const CXCursor_CXXThisExpr = enum_CXCursorKind.CXCursor_CXXThisExpr;
pub const CXCursor_CXXThrowExpr = enum_CXCursorKind.CXCursor_CXXThrowExpr;
pub const CXCursor_CXXNewExpr = enum_CXCursorKind.CXCursor_CXXNewExpr;
pub const CXCursor_CXXDeleteExpr = enum_CXCursorKind.CXCursor_CXXDeleteExpr;
pub const CXCursor_UnaryExpr = enum_CXCursorKind.CXCursor_UnaryExpr;
pub const CXCursor_ObjCStringLiteral = enum_CXCursorKind.CXCursor_ObjCStringLiteral;
pub const CXCursor_ObjCEncodeExpr = enum_CXCursorKind.CXCursor_ObjCEncodeExpr;
pub const CXCursor_ObjCSelectorExpr = enum_CXCursorKind.CXCursor_ObjCSelectorExpr;
pub const CXCursor_ObjCProtocolExpr = enum_CXCursorKind.CXCursor_ObjCProtocolExpr;
pub const CXCursor_ObjCBridgedCastExpr = enum_CXCursorKind.CXCursor_ObjCBridgedCastExpr;
pub const CXCursor_PackExpansionExpr = enum_CXCursorKind.CXCursor_PackExpansionExpr;
pub const CXCursor_SizeOfPackExpr = enum_CXCursorKind.CXCursor_SizeOfPackExpr;
pub const CXCursor_LambdaExpr = enum_CXCursorKind.CXCursor_LambdaExpr;
pub const CXCursor_ObjCBoolLiteralExpr = enum_CXCursorKind.CXCursor_ObjCBoolLiteralExpr;
pub const CXCursor_ObjCSelfExpr = enum_CXCursorKind.CXCursor_ObjCSelfExpr;
pub const CXCursor_OMPArraySectionExpr = enum_CXCursorKind.CXCursor_OMPArraySectionExpr;
pub const CXCursor_ObjCAvailabilityCheckExpr = enum_CXCursorKind.CXCursor_ObjCAvailabilityCheckExpr;
pub const CXCursor_FixedPointLiteral = enum_CXCursorKind.CXCursor_FixedPointLiteral;
pub const CXCursor_LastExpr = enum_CXCursorKind.CXCursor_LastExpr;
pub const CXCursor_FirstStmt = enum_CXCursorKind.CXCursor_FirstStmt;
pub const CXCursor_UnexposedStmt = enum_CXCursorKind.CXCursor_UnexposedStmt;
pub const CXCursor_LabelStmt = enum_CXCursorKind.CXCursor_LabelStmt;
pub const CXCursor_CompoundStmt = enum_CXCursorKind.CXCursor_CompoundStmt;
pub const CXCursor_CaseStmt = enum_CXCursorKind.CXCursor_CaseStmt;
pub const CXCursor_DefaultStmt = enum_CXCursorKind.CXCursor_DefaultStmt;
pub const CXCursor_IfStmt = enum_CXCursorKind.CXCursor_IfStmt;
pub const CXCursor_SwitchStmt = enum_CXCursorKind.CXCursor_SwitchStmt;
pub const CXCursor_WhileStmt = enum_CXCursorKind.CXCursor_WhileStmt;
pub const CXCursor_DoStmt = enum_CXCursorKind.CXCursor_DoStmt;
pub const CXCursor_ForStmt = enum_CXCursorKind.CXCursor_ForStmt;
pub const CXCursor_GotoStmt = enum_CXCursorKind.CXCursor_GotoStmt;
pub const CXCursor_IndirectGotoStmt = enum_CXCursorKind.CXCursor_IndirectGotoStmt;
pub const CXCursor_ContinueStmt = enum_CXCursorKind.CXCursor_ContinueStmt;
pub const CXCursor_BreakStmt = enum_CXCursorKind.CXCursor_BreakStmt;
pub const CXCursor_ReturnStmt = enum_CXCursorKind.CXCursor_ReturnStmt;
pub const CXCursor_GCCAsmStmt = enum_CXCursorKind.CXCursor_GCCAsmStmt;
pub const CXCursor_AsmStmt = enum_CXCursorKind.CXCursor_AsmStmt;
pub const CXCursor_ObjCAtTryStmt = enum_CXCursorKind.CXCursor_ObjCAtTryStmt;
pub const CXCursor_ObjCAtCatchStmt = enum_CXCursorKind.CXCursor_ObjCAtCatchStmt;
pub const CXCursor_ObjCAtFinallyStmt = enum_CXCursorKind.CXCursor_ObjCAtFinallyStmt;
pub const CXCursor_ObjCAtThrowStmt = enum_CXCursorKind.CXCursor_ObjCAtThrowStmt;
pub const CXCursor_ObjCAtSynchronizedStmt = enum_CXCursorKind.CXCursor_ObjCAtSynchronizedStmt;
pub const CXCursor_ObjCAutoreleasePoolStmt = enum_CXCursorKind.CXCursor_ObjCAutoreleasePoolStmt;
pub const CXCursor_ObjCForCollectionStmt = enum_CXCursorKind.CXCursor_ObjCForCollectionStmt;
pub const CXCursor_CXXCatchStmt = enum_CXCursorKind.CXCursor_CXXCatchStmt;
pub const CXCursor_CXXTryStmt = enum_CXCursorKind.CXCursor_CXXTryStmt;
pub const CXCursor_CXXForRangeStmt = enum_CXCursorKind.CXCursor_CXXForRangeStmt;
pub const CXCursor_SEHTryStmt = enum_CXCursorKind.CXCursor_SEHTryStmt;
pub const CXCursor_SEHExceptStmt = enum_CXCursorKind.CXCursor_SEHExceptStmt;
pub const CXCursor_SEHFinallyStmt = enum_CXCursorKind.CXCursor_SEHFinallyStmt;
pub const CXCursor_MSAsmStmt = enum_CXCursorKind.CXCursor_MSAsmStmt;
pub const CXCursor_NullStmt = enum_CXCursorKind.CXCursor_NullStmt;
pub const CXCursor_DeclStmt = enum_CXCursorKind.CXCursor_DeclStmt;
pub const CXCursor_OMPParallelDirective = enum_CXCursorKind.CXCursor_OMPParallelDirective;
pub const CXCursor_OMPSimdDirective = enum_CXCursorKind.CXCursor_OMPSimdDirective;
pub const CXCursor_OMPForDirective = enum_CXCursorKind.CXCursor_OMPForDirective;
pub const CXCursor_OMPSectionsDirective = enum_CXCursorKind.CXCursor_OMPSectionsDirective;
pub const CXCursor_OMPSectionDirective = enum_CXCursorKind.CXCursor_OMPSectionDirective;
pub const CXCursor_OMPSingleDirective = enum_CXCursorKind.CXCursor_OMPSingleDirective;
pub const CXCursor_OMPParallelForDirective = enum_CXCursorKind.CXCursor_OMPParallelForDirective;
pub const CXCursor_OMPParallelSectionsDirective = enum_CXCursorKind.CXCursor_OMPParallelSectionsDirective;
pub const CXCursor_OMPTaskDirective = enum_CXCursorKind.CXCursor_OMPTaskDirective;
pub const CXCursor_OMPMasterDirective = enum_CXCursorKind.CXCursor_OMPMasterDirective;
pub const CXCursor_OMPCriticalDirective = enum_CXCursorKind.CXCursor_OMPCriticalDirective;
pub const CXCursor_OMPTaskyieldDirective = enum_CXCursorKind.CXCursor_OMPTaskyieldDirective;
pub const CXCursor_OMPBarrierDirective = enum_CXCursorKind.CXCursor_OMPBarrierDirective;
pub const CXCursor_OMPTaskwaitDirective = enum_CXCursorKind.CXCursor_OMPTaskwaitDirective;
pub const CXCursor_OMPFlushDirective = enum_CXCursorKind.CXCursor_OMPFlushDirective;
pub const CXCursor_SEHLeaveStmt = enum_CXCursorKind.CXCursor_SEHLeaveStmt;
pub const CXCursor_OMPOrderedDirective = enum_CXCursorKind.CXCursor_OMPOrderedDirective;
pub const CXCursor_OMPAtomicDirective = enum_CXCursorKind.CXCursor_OMPAtomicDirective;
pub const CXCursor_OMPForSimdDirective = enum_CXCursorKind.CXCursor_OMPForSimdDirective;
pub const CXCursor_OMPParallelForSimdDirective = enum_CXCursorKind.CXCursor_OMPParallelForSimdDirective;
pub const CXCursor_OMPTargetDirective = enum_CXCursorKind.CXCursor_OMPTargetDirective;
pub const CXCursor_OMPTeamsDirective = enum_CXCursorKind.CXCursor_OMPTeamsDirective;
pub const CXCursor_OMPTaskgroupDirective = enum_CXCursorKind.CXCursor_OMPTaskgroupDirective;
pub const CXCursor_OMPCancellationPointDirective = enum_CXCursorKind.CXCursor_OMPCancellationPointDirective;
pub const CXCursor_OMPCancelDirective = enum_CXCursorKind.CXCursor_OMPCancelDirective;
pub const CXCursor_OMPTargetDataDirective = enum_CXCursorKind.CXCursor_OMPTargetDataDirective;
pub const CXCursor_OMPTaskLoopDirective = enum_CXCursorKind.CXCursor_OMPTaskLoopDirective;
pub const CXCursor_OMPTaskLoopSimdDirective = enum_CXCursorKind.CXCursor_OMPTaskLoopSimdDirective;
pub const CXCursor_OMPDistributeDirective = enum_CXCursorKind.CXCursor_OMPDistributeDirective;
pub const CXCursor_OMPTargetEnterDataDirective = enum_CXCursorKind.CXCursor_OMPTargetEnterDataDirective;
pub const CXCursor_OMPTargetExitDataDirective = enum_CXCursorKind.CXCursor_OMPTargetExitDataDirective;
pub const CXCursor_OMPTargetParallelDirective = enum_CXCursorKind.CXCursor_OMPTargetParallelDirective;
pub const CXCursor_OMPTargetParallelForDirective = enum_CXCursorKind.CXCursor_OMPTargetParallelForDirective;
pub const CXCursor_OMPTargetUpdateDirective = enum_CXCursorKind.CXCursor_OMPTargetUpdateDirective;
pub const CXCursor_OMPDistributeParallelForDirective = enum_CXCursorKind.CXCursor_OMPDistributeParallelForDirective;
pub const CXCursor_OMPDistributeParallelForSimdDirective = enum_CXCursorKind.CXCursor_OMPDistributeParallelForSimdDirective;
pub const CXCursor_OMPDistributeSimdDirective = enum_CXCursorKind.CXCursor_OMPDistributeSimdDirective;
pub const CXCursor_OMPTargetParallelForSimdDirective = enum_CXCursorKind.CXCursor_OMPTargetParallelForSimdDirective;
pub const CXCursor_OMPTargetSimdDirective = enum_CXCursorKind.CXCursor_OMPTargetSimdDirective;
pub const CXCursor_OMPTeamsDistributeDirective = enum_CXCursorKind.CXCursor_OMPTeamsDistributeDirective;
pub const CXCursor_OMPTeamsDistributeSimdDirective = enum_CXCursorKind.CXCursor_OMPTeamsDistributeSimdDirective;
pub const CXCursor_OMPTeamsDistributeParallelForSimdDirective = enum_CXCursorKind.CXCursor_OMPTeamsDistributeParallelForSimdDirective;
pub const CXCursor_OMPTeamsDistributeParallelForDirective = enum_CXCursorKind.CXCursor_OMPTeamsDistributeParallelForDirective;
pub const CXCursor_OMPTargetTeamsDirective = enum_CXCursorKind.CXCursor_OMPTargetTeamsDirective;
pub const CXCursor_OMPTargetTeamsDistributeDirective = enum_CXCursorKind.CXCursor_OMPTargetTeamsDistributeDirective;
pub const CXCursor_OMPTargetTeamsDistributeParallelForDirective = enum_CXCursorKind.CXCursor_OMPTargetTeamsDistributeParallelForDirective;
pub const CXCursor_OMPTargetTeamsDistributeParallelForSimdDirective = enum_CXCursorKind.CXCursor_OMPTargetTeamsDistributeParallelForSimdDirective;
pub const CXCursor_OMPTargetTeamsDistributeSimdDirective = enum_CXCursorKind.CXCursor_OMPTargetTeamsDistributeSimdDirective;
pub const CXCursor_LastStmt = enum_CXCursorKind.CXCursor_LastStmt;
pub const CXCursor_TranslationUnit = enum_CXCursorKind.CXCursor_TranslationUnit;
pub const CXCursor_FirstAttr = enum_CXCursorKind.CXCursor_FirstAttr;
pub const CXCursor_UnexposedAttr = enum_CXCursorKind.CXCursor_UnexposedAttr;
pub const CXCursor_IBActionAttr = enum_CXCursorKind.CXCursor_IBActionAttr;
pub const CXCursor_IBOutletAttr = enum_CXCursorKind.CXCursor_IBOutletAttr;
pub const CXCursor_IBOutletCollectionAttr = enum_CXCursorKind.CXCursor_IBOutletCollectionAttr;
pub const CXCursor_CXXFinalAttr = enum_CXCursorKind.CXCursor_CXXFinalAttr;
pub const CXCursor_CXXOverrideAttr = enum_CXCursorKind.CXCursor_CXXOverrideAttr;
pub const CXCursor_AnnotateAttr = enum_CXCursorKind.CXCursor_AnnotateAttr;
pub const CXCursor_AsmLabelAttr = enum_CXCursorKind.CXCursor_AsmLabelAttr;
pub const CXCursor_PackedAttr = enum_CXCursorKind.CXCursor_PackedAttr;
pub const CXCursor_PureAttr = enum_CXCursorKind.CXCursor_PureAttr;
pub const CXCursor_ConstAttr = enum_CXCursorKind.CXCursor_ConstAttr;
pub const CXCursor_NoDuplicateAttr = enum_CXCursorKind.CXCursor_NoDuplicateAttr;
pub const CXCursor_CUDAConstantAttr = enum_CXCursorKind.CXCursor_CUDAConstantAttr;
pub const CXCursor_CUDADeviceAttr = enum_CXCursorKind.CXCursor_CUDADeviceAttr;
pub const CXCursor_CUDAGlobalAttr = enum_CXCursorKind.CXCursor_CUDAGlobalAttr;
pub const CXCursor_CUDAHostAttr = enum_CXCursorKind.CXCursor_CUDAHostAttr;
pub const CXCursor_CUDASharedAttr = enum_CXCursorKind.CXCursor_CUDASharedAttr;
pub const CXCursor_VisibilityAttr = enum_CXCursorKind.CXCursor_VisibilityAttr;
pub const CXCursor_DLLExport = enum_CXCursorKind.CXCursor_DLLExport;
pub const CXCursor_DLLImport = enum_CXCursorKind.CXCursor_DLLImport;
pub const CXCursor_NSReturnsRetained = enum_CXCursorKind.CXCursor_NSReturnsRetained;
pub const CXCursor_NSReturnsNotRetained = enum_CXCursorKind.CXCursor_NSReturnsNotRetained;
pub const CXCursor_NSReturnsAutoreleased = enum_CXCursorKind.CXCursor_NSReturnsAutoreleased;
pub const CXCursor_NSConsumesSelf = enum_CXCursorKind.CXCursor_NSConsumesSelf;
pub const CXCursor_NSConsumed = enum_CXCursorKind.CXCursor_NSConsumed;
pub const CXCursor_ObjCException = enum_CXCursorKind.CXCursor_ObjCException;
pub const CXCursor_ObjCNSObject = enum_CXCursorKind.CXCursor_ObjCNSObject;
pub const CXCursor_ObjCIndependentClass = enum_CXCursorKind.CXCursor_ObjCIndependentClass;
pub const CXCursor_ObjCPreciseLifetime = enum_CXCursorKind.CXCursor_ObjCPreciseLifetime;
pub const CXCursor_ObjCReturnsInnerPointer = enum_CXCursorKind.CXCursor_ObjCReturnsInnerPointer;
pub const CXCursor_ObjCRequiresSuper = enum_CXCursorKind.CXCursor_ObjCRequiresSuper;
pub const CXCursor_ObjCRootClass = enum_CXCursorKind.CXCursor_ObjCRootClass;
pub const CXCursor_ObjCSubclassingRestricted = enum_CXCursorKind.CXCursor_ObjCSubclassingRestricted;
pub const CXCursor_ObjCExplicitProtocolImpl = enum_CXCursorKind.CXCursor_ObjCExplicitProtocolImpl;
pub const CXCursor_ObjCDesignatedInitializer = enum_CXCursorKind.CXCursor_ObjCDesignatedInitializer;
pub const CXCursor_ObjCRuntimeVisible = enum_CXCursorKind.CXCursor_ObjCRuntimeVisible;
pub const CXCursor_ObjCBoxable = enum_CXCursorKind.CXCursor_ObjCBoxable;
pub const CXCursor_FlagEnum = enum_CXCursorKind.CXCursor_FlagEnum;
pub const CXCursor_LastAttr = enum_CXCursorKind.CXCursor_LastAttr;
pub const CXCursor_PreprocessingDirective = enum_CXCursorKind.CXCursor_PreprocessingDirective;
pub const CXCursor_MacroDefinition = enum_CXCursorKind.CXCursor_MacroDefinition;
pub const CXCursor_MacroExpansion = enum_CXCursorKind.CXCursor_MacroExpansion;
pub const CXCursor_MacroInstantiation = enum_CXCursorKind.CXCursor_MacroInstantiation;
pub const CXCursor_InclusionDirective = enum_CXCursorKind.CXCursor_InclusionDirective;
pub const CXCursor_FirstPreprocessing = enum_CXCursorKind.CXCursor_FirstPreprocessing;
pub const CXCursor_LastPreprocessing = enum_CXCursorKind.CXCursor_LastPreprocessing;
pub const CXCursor_ModuleImportDecl = enum_CXCursorKind.CXCursor_ModuleImportDecl;
pub const CXCursor_TypeAliasTemplateDecl = enum_CXCursorKind.CXCursor_TypeAliasTemplateDecl;
pub const CXCursor_StaticAssert = enum_CXCursorKind.CXCursor_StaticAssert;
pub const CXCursor_FriendDecl = enum_CXCursorKind.CXCursor_FriendDecl;
pub const CXCursor_FirstExtraDecl = enum_CXCursorKind.CXCursor_FirstExtraDecl;
pub const CXCursor_LastExtraDecl = enum_CXCursorKind.CXCursor_LastExtraDecl;
pub const CXCursor_OverloadCandidate = enum_CXCursorKind.CXCursor_OverloadCandidate;
pub const enum_CXCursorKind = extern enum {
    CXCursor_UnexposedDecl = 1,
    CXCursor_StructDecl = 2,
    CXCursor_UnionDecl = 3,
    CXCursor_ClassDecl = 4,
    CXCursor_EnumDecl = 5,
    CXCursor_FieldDecl = 6,
    CXCursor_EnumConstantDecl = 7,
    CXCursor_FunctionDecl = 8,
    CXCursor_VarDecl = 9,
    CXCursor_ParmDecl = 10,
    CXCursor_ObjCInterfaceDecl = 11,
    CXCursor_ObjCCategoryDecl = 12,
    CXCursor_ObjCProtocolDecl = 13,
    CXCursor_ObjCPropertyDecl = 14,
    CXCursor_ObjCIvarDecl = 15,
    CXCursor_ObjCInstanceMethodDecl = 16,
    CXCursor_ObjCClassMethodDecl = 17,
    CXCursor_ObjCImplementationDecl = 18,
    CXCursor_ObjCCategoryImplDecl = 19,
    CXCursor_TypedefDecl = 20,
    CXCursor_CXXMethod = 21,
    CXCursor_Namespace = 22,
    CXCursor_LinkageSpec = 23,
    CXCursor_Constructor = 24,
    CXCursor_Destructor = 25,
    CXCursor_ConversionFunction = 26,
    CXCursor_TemplateTypeParameter = 27,
    CXCursor_NonTypeTemplateParameter = 28,
    CXCursor_TemplateTemplateParameter = 29,
    CXCursor_FunctionTemplate = 30,
    CXCursor_ClassTemplate = 31,
    CXCursor_ClassTemplatePartialSpecialization = 32,
    CXCursor_NamespaceAlias = 33,
    CXCursor_UsingDirective = 34,
    CXCursor_UsingDeclaration = 35,
    CXCursor_TypeAliasDecl = 36,
    CXCursor_ObjCSynthesizeDecl = 37,
    CXCursor_ObjCDynamicDecl = 38,
    CXCursor_CXXAccessSpecifier = 39,
    CXCursor_FirstDecl,
    CXCursor_LastDecl,
    CXCursor_FirstRef,
    CXCursor_ObjCSuperClassRef = 40,
    CXCursor_ObjCProtocolRef = 41,
    CXCursor_ObjCClassRef = 42,
    CXCursor_TypeRef = 43,
    CXCursor_CXXBaseSpecifier = 44,
    CXCursor_TemplateRef = 45,
    CXCursor_NamespaceRef = 46,
    CXCursor_MemberRef = 47,
    CXCursor_LabelRef = 48,
    CXCursor_OverloadedDeclRef = 49,
    CXCursor_VariableRef = 50,
    CXCursor_LastRef,
    CXCursor_FirstInvalid,
    CXCursor_InvalidFile = 70,
    CXCursor_NoDeclFound = 71,
    CXCursor_NotImplemented = 72,
    CXCursor_InvalidCode = 73,
    CXCursor_LastInvalid,
    CXCursor_FirstExpr,
    CXCursor_UnexposedExpr = 100,
    CXCursor_DeclRefExpr = 101,
    CXCursor_MemberRefExpr = 102,
    CXCursor_CallExpr = 103,
    CXCursor_ObjCMessageExpr = 104,
    CXCursor_BlockExpr = 105,
    CXCursor_IntegerLiteral = 106,
    CXCursor_FloatingLiteral = 107,
    CXCursor_ImaginaryLiteral = 108,
    CXCursor_StringLiteral = 109,
    CXCursor_CharacterLiteral = 110,
    CXCursor_ParenExpr = 111,
    CXCursor_UnaryOperator = 112,
    CXCursor_ArraySubscriptExpr = 113,
    CXCursor_BinaryOperator = 114,
    CXCursor_CompoundAssignOperator = 115,
    CXCursor_ConditionalOperator = 116,
    CXCursor_CStyleCastExpr = 117,
    CXCursor_CompoundLiteralExpr = 118,
    CXCursor_InitListExpr = 119,
    CXCursor_AddrLabelExpr = 120,
    CXCursor_StmtExpr = 121,
    CXCursor_GenericSelectionExpr = 122,
    CXCursor_GNUNullExpr = 123,
    CXCursor_CXXStaticCastExpr = 124,
    CXCursor_CXXDynamicCastExpr = 125,
    CXCursor_CXXReinterpretCastExpr = 126,
    CXCursor_CXXConstCastExpr = 127,
    CXCursor_CXXFunctionalCastExpr = 128,
    CXCursor_CXXTypeidExpr = 129,
    CXCursor_CXXBoolLiteralExpr = 130,
    CXCursor_CXXNullPtrLiteralExpr = 131,
    CXCursor_CXXThisExpr = 132,
    CXCursor_CXXThrowExpr = 133,
    CXCursor_CXXNewExpr = 134,
    CXCursor_CXXDeleteExpr = 135,
    CXCursor_UnaryExpr = 136,
    CXCursor_ObjCStringLiteral = 137,
    CXCursor_ObjCEncodeExpr = 138,
    CXCursor_ObjCSelectorExpr = 139,
    CXCursor_ObjCProtocolExpr = 140,
    CXCursor_ObjCBridgedCastExpr = 141,
    CXCursor_PackExpansionExpr = 142,
    CXCursor_SizeOfPackExpr = 143,
    CXCursor_LambdaExpr = 144,
    CXCursor_ObjCBoolLiteralExpr = 145,
    CXCursor_ObjCSelfExpr = 146,
    CXCursor_OMPArraySectionExpr = 147,
    CXCursor_ObjCAvailabilityCheckExpr = 148,
    CXCursor_FixedPointLiteral = 149,
    CXCursor_LastExpr,
    CXCursor_FirstStmt,
    CXCursor_UnexposedStmt = 200,
    CXCursor_LabelStmt = 201,
    CXCursor_CompoundStmt = 202,
    CXCursor_CaseStmt = 203,
    CXCursor_DefaultStmt = 204,
    CXCursor_IfStmt = 205,
    CXCursor_SwitchStmt = 206,
    CXCursor_WhileStmt = 207,
    CXCursor_DoStmt = 208,
    CXCursor_ForStmt = 209,
    CXCursor_GotoStmt = 210,
    CXCursor_IndirectGotoStmt = 211,
    CXCursor_ContinueStmt = 212,
    CXCursor_BreakStmt = 213,
    CXCursor_ReturnStmt = 214,
    CXCursor_GCCAsmStmt,
    CXCursor_AsmStmt = 215,
    CXCursor_ObjCAtTryStmt = 216,
    CXCursor_ObjCAtCatchStmt = 217,
    CXCursor_ObjCAtFinallyStmt = 218,
    CXCursor_ObjCAtThrowStmt = 219,
    CXCursor_ObjCAtSynchronizedStmt = 220,
    CXCursor_ObjCAutoreleasePoolStmt = 221,
    CXCursor_ObjCForCollectionStmt = 222,
    CXCursor_CXXCatchStmt = 223,
    CXCursor_CXXTryStmt = 224,
    CXCursor_CXXForRangeStmt = 225,
    CXCursor_SEHTryStmt = 226,
    CXCursor_SEHExceptStmt = 227,
    CXCursor_SEHFinallyStmt = 228,
    CXCursor_MSAsmStmt = 229,
    CXCursor_NullStmt = 230,
    CXCursor_DeclStmt = 231,
    CXCursor_OMPParallelDirective = 232,
    CXCursor_OMPSimdDirective = 233,
    CXCursor_OMPForDirective = 234,
    CXCursor_OMPSectionsDirective = 235,
    CXCursor_OMPSectionDirective = 236,
    CXCursor_OMPSingleDirective = 237,
    CXCursor_OMPParallelForDirective = 238,
    CXCursor_OMPParallelSectionsDirective = 239,
    CXCursor_OMPTaskDirective = 240,
    CXCursor_OMPMasterDirective = 241,
    CXCursor_OMPCriticalDirective = 242,
    CXCursor_OMPTaskyieldDirective = 243,
    CXCursor_OMPBarrierDirective = 244,
    CXCursor_OMPTaskwaitDirective = 245,
    CXCursor_OMPFlushDirective = 246,
    CXCursor_SEHLeaveStmt = 247,
    CXCursor_OMPOrderedDirective = 248,
    CXCursor_OMPAtomicDirective = 249,
    CXCursor_OMPForSimdDirective = 250,
    CXCursor_OMPParallelForSimdDirective = 251,
    CXCursor_OMPTargetDirective = 252,
    CXCursor_OMPTeamsDirective = 253,
    CXCursor_OMPTaskgroupDirective = 254,
    CXCursor_OMPCancellationPointDirective = 255,
    CXCursor_OMPCancelDirective = 256,
    CXCursor_OMPTargetDataDirective = 257,
    CXCursor_OMPTaskLoopDirective = 258,
    CXCursor_OMPTaskLoopSimdDirective = 259,
    CXCursor_OMPDistributeDirective = 260,
    CXCursor_OMPTargetEnterDataDirective = 261,
    CXCursor_OMPTargetExitDataDirective = 262,
    CXCursor_OMPTargetParallelDirective = 263,
    CXCursor_OMPTargetParallelForDirective = 264,
    CXCursor_OMPTargetUpdateDirective = 265,
    CXCursor_OMPDistributeParallelForDirective = 266,
    CXCursor_OMPDistributeParallelForSimdDirective = 267,
    CXCursor_OMPDistributeSimdDirective = 268,
    CXCursor_OMPTargetParallelForSimdDirective = 269,
    CXCursor_OMPTargetSimdDirective = 270,
    CXCursor_OMPTeamsDistributeDirective = 271,
    CXCursor_OMPTeamsDistributeSimdDirective = 272,
    CXCursor_OMPTeamsDistributeParallelForSimdDirective = 273,
    CXCursor_OMPTeamsDistributeParallelForDirective = 274,
    CXCursor_OMPTargetTeamsDirective = 275,
    CXCursor_OMPTargetTeamsDistributeDirective = 276,
    CXCursor_OMPTargetTeamsDistributeParallelForDirective = 277,
    CXCursor_OMPTargetTeamsDistributeParallelForSimdDirective = 278,
    CXCursor_OMPTargetTeamsDistributeSimdDirective = 279,
    CXCursor_LastStmt,
    CXCursor_TranslationUnit = 300,
    CXCursor_FirstAttr,
    CXCursor_UnexposedAttr = 400,
    CXCursor_IBActionAttr = 401,
    CXCursor_IBOutletAttr = 402,
    CXCursor_IBOutletCollectionAttr = 403,
    CXCursor_CXXFinalAttr = 404,
    CXCursor_CXXOverrideAttr = 405,
    CXCursor_AnnotateAttr = 406,
    CXCursor_AsmLabelAttr = 407,
    CXCursor_PackedAttr = 408,
    CXCursor_PureAttr = 409,
    CXCursor_ConstAttr = 410,
    CXCursor_NoDuplicateAttr = 411,
    CXCursor_CUDAConstantAttr = 412,
    CXCursor_CUDADeviceAttr = 413,
    CXCursor_CUDAGlobalAttr = 414,
    CXCursor_CUDAHostAttr = 415,
    CXCursor_CUDASharedAttr = 416,
    CXCursor_VisibilityAttr = 417,
    CXCursor_DLLExport = 418,
    CXCursor_DLLImport = 419,
    CXCursor_NSReturnsRetained = 420,
    CXCursor_NSReturnsNotRetained = 421,
    CXCursor_NSReturnsAutoreleased = 422,
    CXCursor_NSConsumesSelf = 423,
    CXCursor_NSConsumed = 424,
    CXCursor_ObjCException = 425,
    CXCursor_ObjCNSObject = 426,
    CXCursor_ObjCIndependentClass = 427,
    CXCursor_ObjCPreciseLifetime = 428,
    CXCursor_ObjCReturnsInnerPointer = 429,
    CXCursor_ObjCRequiresSuper = 430,
    CXCursor_ObjCRootClass = 431,
    CXCursor_ObjCSubclassingRestricted = 432,
    CXCursor_ObjCExplicitProtocolImpl = 433,
    CXCursor_ObjCDesignatedInitializer = 434,
    CXCursor_ObjCRuntimeVisible = 435,
    CXCursor_ObjCBoxable = 436,
    CXCursor_FlagEnum = 437,
    CXCursor_LastAttr,
    CXCursor_PreprocessingDirective = 500,
    CXCursor_MacroDefinition = 501,
    CXCursor_MacroExpansion = 502,
    CXCursor_MacroInstantiation,
    CXCursor_InclusionDirective = 503,
    CXCursor_FirstPreprocessing,
    CXCursor_LastPreprocessing,
    CXCursor_ModuleImportDecl = 600,
    CXCursor_TypeAliasTemplateDecl = 601,
    CXCursor_StaticAssert = 602,
    CXCursor_FriendDecl = 603,
    CXCursor_FirstExtraDecl,
    CXCursor_LastExtraDecl,
    CXCursor_OverloadCandidate = 700,
};
pub const CXCursor = extern struct {
    kind: enum_CXCursorKind,
    xdata: c_int,
    data: [3](?*const c_void),
};
pub extern fn clang_getNullCursor() CXCursor;
pub extern fn clang_getTranslationUnitCursor(arg0: CXTranslationUnit) CXCursor;
pub extern fn clang_equalCursors(arg0: CXCursor, arg1: CXCursor) c_uint;
pub extern fn clang_Cursor_isNull(cursor: CXCursor) c_int;
pub extern fn clang_hashCursor(arg0: CXCursor) c_uint;
pub extern fn clang_getCursorKind(arg0: CXCursor) enum_CXCursorKind;
pub extern fn clang_isDeclaration(arg0: enum_CXCursorKind) c_uint;
pub extern fn clang_isInvalidDeclaration(arg0: CXCursor) c_uint;
pub extern fn clang_isReference(arg0: enum_CXCursorKind) c_uint;
pub extern fn clang_isExpression(arg0: enum_CXCursorKind) c_uint;
pub extern fn clang_isStatement(arg0: enum_CXCursorKind) c_uint;
pub extern fn clang_isAttribute(arg0: enum_CXCursorKind) c_uint;
pub extern fn clang_Cursor_hasAttrs(C: CXCursor) c_uint;
pub extern fn clang_isInvalid(arg0: enum_CXCursorKind) c_uint;
pub extern fn clang_isTranslationUnit(arg0: enum_CXCursorKind) c_uint;
pub extern fn clang_isPreprocessing(arg0: enum_CXCursorKind) c_uint;
pub extern fn clang_isUnexposed(arg0: enum_CXCursorKind) c_uint;
pub const CXLinkage_Invalid = enum_CXLinkageKind.CXLinkage_Invalid;
pub const CXLinkage_NoLinkage = enum_CXLinkageKind.CXLinkage_NoLinkage;
pub const CXLinkage_Internal = enum_CXLinkageKind.CXLinkage_Internal;
pub const CXLinkage_UniqueExternal = enum_CXLinkageKind.CXLinkage_UniqueExternal;
pub const CXLinkage_External = enum_CXLinkageKind.CXLinkage_External;
pub const enum_CXLinkageKind = extern enum {
    CXLinkage_Invalid,
    CXLinkage_NoLinkage,
    CXLinkage_Internal,
    CXLinkage_UniqueExternal,
    CXLinkage_External,
};
pub extern fn clang_getCursorLinkage(cursor: CXCursor) enum_CXLinkageKind;
pub const CXVisibility_Invalid = enum_CXVisibilityKind.CXVisibility_Invalid;
pub const CXVisibility_Hidden = enum_CXVisibilityKind.CXVisibility_Hidden;
pub const CXVisibility_Protected = enum_CXVisibilityKind.CXVisibility_Protected;
pub const CXVisibility_Default = enum_CXVisibilityKind.CXVisibility_Default;
pub const enum_CXVisibilityKind = extern enum {
    CXVisibility_Invalid,
    CXVisibility_Hidden,
    CXVisibility_Protected,
    CXVisibility_Default,
};
pub extern fn clang_getCursorVisibility(cursor: CXCursor) enum_CXVisibilityKind;
pub extern fn clang_getCursorAvailability(cursor: CXCursor) enum_CXAvailabilityKind;
pub const struct_CXPlatformAvailability = extern struct {
    Platform: CXString,
    Introduced: CXVersion,
    Deprecated: CXVersion,
    Obsoleted: CXVersion,
    Unavailable: c_int,
    Message: CXString,
};
pub const CXPlatformAvailability = struct_CXPlatformAvailability;
pub extern fn clang_getCursorPlatformAvailability(cursor: CXCursor, always_deprecated: [*c]c_int, deprecated_message: [*c]CXString, always_unavailable: [*c]c_int, unavailable_message: [*c]CXString, availability: [*c]CXPlatformAvailability, availability_size: c_int) c_int;
pub extern fn clang_disposeCXPlatformAvailability(availability: [*c]CXPlatformAvailability) void;
pub const CXLanguage_Invalid = enum_CXLanguageKind.CXLanguage_Invalid;
pub const CXLanguage_C = enum_CXLanguageKind.CXLanguage_C;
pub const CXLanguage_ObjC = enum_CXLanguageKind.CXLanguage_ObjC;
pub const CXLanguage_CPlusPlus = enum_CXLanguageKind.CXLanguage_CPlusPlus;
pub const enum_CXLanguageKind = extern enum {
    CXLanguage_Invalid = 0,
    CXLanguage_C = 1,
    CXLanguage_ObjC = 2,
    CXLanguage_CPlusPlus = 3,
};
pub extern fn clang_getCursorLanguage(cursor: CXCursor) enum_CXLanguageKind;
pub const CXTLS_None = enum_CXTLSKind.CXTLS_None;
pub const CXTLS_Dynamic = enum_CXTLSKind.CXTLS_Dynamic;
pub const CXTLS_Static = enum_CXTLSKind.CXTLS_Static;
pub const enum_CXTLSKind = extern enum {
    CXTLS_None = 0,
    CXTLS_Dynamic = 1,
    CXTLS_Static = 2,
};
pub extern fn clang_getCursorTLSKind(cursor: CXCursor) enum_CXTLSKind;
pub extern fn clang_Cursor_getTranslationUnit(arg0: CXCursor) CXTranslationUnit;
pub const struct_CXCursorSetImpl = @OpaqueType();
pub const CXCursorSet = ?*struct_CXCursorSetImpl;
pub extern fn clang_createCXCursorSet() CXCursorSet;
pub extern fn clang_disposeCXCursorSet(cset: CXCursorSet) void;
pub extern fn clang_CXCursorSet_contains(cset: CXCursorSet, cursor: CXCursor) c_uint;
pub extern fn clang_CXCursorSet_insert(cset: CXCursorSet, cursor: CXCursor) c_uint;
pub extern fn clang_getCursorSemanticParent(cursor: CXCursor) CXCursor;
pub extern fn clang_getCursorLexicalParent(cursor: CXCursor) CXCursor;
pub extern fn clang_getOverriddenCursors(cursor: CXCursor, overridden: [*c]([*c]CXCursor), num_overridden: [*c]c_uint) void;
pub extern fn clang_disposeOverriddenCursors(overridden: [*c]CXCursor) void;
pub extern fn clang_getIncludedFile(cursor: CXCursor) CXFile;
pub extern fn clang_getCursor(arg0: CXTranslationUnit, arg1: CXSourceLocation) CXCursor;
pub extern fn clang_getCursorLocation(arg0: CXCursor) CXSourceLocation;
pub extern fn clang_getCursorExtent(arg0: CXCursor) CXSourceRange;
pub const CXType_Invalid = enum_CXTypeKind.CXType_Invalid;
pub const CXType_Unexposed = enum_CXTypeKind.CXType_Unexposed;
pub const CXType_Void = enum_CXTypeKind.CXType_Void;
pub const CXType_Bool = enum_CXTypeKind.CXType_Bool;
pub const CXType_Char_U = enum_CXTypeKind.CXType_Char_U;
pub const CXType_UChar = enum_CXTypeKind.CXType_UChar;
pub const CXType_Char16 = enum_CXTypeKind.CXType_Char16;
pub const CXType_Char32 = enum_CXTypeKind.CXType_Char32;
pub const CXType_UShort = enum_CXTypeKind.CXType_UShort;
pub const CXType_UInt = enum_CXTypeKind.CXType_UInt;
pub const CXType_ULong = enum_CXTypeKind.CXType_ULong;
pub const CXType_ULongLong = enum_CXTypeKind.CXType_ULongLong;
pub const CXType_UInt128 = enum_CXTypeKind.CXType_UInt128;
pub const CXType_Char_S = enum_CXTypeKind.CXType_Char_S;
pub const CXType_SChar = enum_CXTypeKind.CXType_SChar;
pub const CXType_WChar = enum_CXTypeKind.CXType_WChar;
pub const CXType_Short = enum_CXTypeKind.CXType_Short;
pub const CXType_Int = enum_CXTypeKind.CXType_Int;
pub const CXType_Long = enum_CXTypeKind.CXType_Long;
pub const CXType_LongLong = enum_CXTypeKind.CXType_LongLong;
pub const CXType_Int128 = enum_CXTypeKind.CXType_Int128;
pub const CXType_Float = enum_CXTypeKind.CXType_Float;
pub const CXType_Double = enum_CXTypeKind.CXType_Double;
pub const CXType_LongDouble = enum_CXTypeKind.CXType_LongDouble;
pub const CXType_NullPtr = enum_CXTypeKind.CXType_NullPtr;
pub const CXType_Overload = enum_CXTypeKind.CXType_Overload;
pub const CXType_Dependent = enum_CXTypeKind.CXType_Dependent;
pub const CXType_ObjCId = enum_CXTypeKind.CXType_ObjCId;
pub const CXType_ObjCClass = enum_CXTypeKind.CXType_ObjCClass;
pub const CXType_ObjCSel = enum_CXTypeKind.CXType_ObjCSel;
pub const CXType_Float128 = enum_CXTypeKind.CXType_Float128;
pub const CXType_Half = enum_CXTypeKind.CXType_Half;
pub const CXType_Float16 = enum_CXTypeKind.CXType_Float16;
pub const CXType_ShortAccum = enum_CXTypeKind.CXType_ShortAccum;
pub const CXType_Accum = enum_CXTypeKind.CXType_Accum;
pub const CXType_LongAccum = enum_CXTypeKind.CXType_LongAccum;
pub const CXType_UShortAccum = enum_CXTypeKind.CXType_UShortAccum;
pub const CXType_UAccum = enum_CXTypeKind.CXType_UAccum;
pub const CXType_ULongAccum = enum_CXTypeKind.CXType_ULongAccum;
pub const CXType_FirstBuiltin = enum_CXTypeKind.CXType_FirstBuiltin;
pub const CXType_LastBuiltin = enum_CXTypeKind.CXType_LastBuiltin;
pub const CXType_Complex = enum_CXTypeKind.CXType_Complex;
pub const CXType_Pointer = enum_CXTypeKind.CXType_Pointer;
pub const CXType_BlockPointer = enum_CXTypeKind.CXType_BlockPointer;
pub const CXType_LValueReference = enum_CXTypeKind.CXType_LValueReference;
pub const CXType_RValueReference = enum_CXTypeKind.CXType_RValueReference;
pub const CXType_Record = enum_CXTypeKind.CXType_Record;
pub const CXType_Enum = enum_CXTypeKind.CXType_Enum;
pub const CXType_Typedef = enum_CXTypeKind.CXType_Typedef;
pub const CXType_ObjCInterface = enum_CXTypeKind.CXType_ObjCInterface;
pub const CXType_ObjCObjectPointer = enum_CXTypeKind.CXType_ObjCObjectPointer;
pub const CXType_FunctionNoProto = enum_CXTypeKind.CXType_FunctionNoProto;
pub const CXType_FunctionProto = enum_CXTypeKind.CXType_FunctionProto;
pub const CXType_ConstantArray = enum_CXTypeKind.CXType_ConstantArray;
pub const CXType_Vector = enum_CXTypeKind.CXType_Vector;
pub const CXType_IncompleteArray = enum_CXTypeKind.CXType_IncompleteArray;
pub const CXType_VariableArray = enum_CXTypeKind.CXType_VariableArray;
pub const CXType_DependentSizedArray = enum_CXTypeKind.CXType_DependentSizedArray;
pub const CXType_MemberPointer = enum_CXTypeKind.CXType_MemberPointer;
pub const CXType_Auto = enum_CXTypeKind.CXType_Auto;
pub const CXType_Elaborated = enum_CXTypeKind.CXType_Elaborated;
pub const CXType_Pipe = enum_CXTypeKind.CXType_Pipe;
pub const CXType_OCLImage1dRO = enum_CXTypeKind.CXType_OCLImage1dRO;
pub const CXType_OCLImage1dArrayRO = enum_CXTypeKind.CXType_OCLImage1dArrayRO;
pub const CXType_OCLImage1dBufferRO = enum_CXTypeKind.CXType_OCLImage1dBufferRO;
pub const CXType_OCLImage2dRO = enum_CXTypeKind.CXType_OCLImage2dRO;
pub const CXType_OCLImage2dArrayRO = enum_CXTypeKind.CXType_OCLImage2dArrayRO;
pub const CXType_OCLImage2dDepthRO = enum_CXTypeKind.CXType_OCLImage2dDepthRO;
pub const CXType_OCLImage2dArrayDepthRO = enum_CXTypeKind.CXType_OCLImage2dArrayDepthRO;
pub const CXType_OCLImage2dMSAARO = enum_CXTypeKind.CXType_OCLImage2dMSAARO;
pub const CXType_OCLImage2dArrayMSAARO = enum_CXTypeKind.CXType_OCLImage2dArrayMSAARO;
pub const CXType_OCLImage2dMSAADepthRO = enum_CXTypeKind.CXType_OCLImage2dMSAADepthRO;
pub const CXType_OCLImage2dArrayMSAADepthRO = enum_CXTypeKind.CXType_OCLImage2dArrayMSAADepthRO;
pub const CXType_OCLImage3dRO = enum_CXTypeKind.CXType_OCLImage3dRO;
pub const CXType_OCLImage1dWO = enum_CXTypeKind.CXType_OCLImage1dWO;
pub const CXType_OCLImage1dArrayWO = enum_CXTypeKind.CXType_OCLImage1dArrayWO;
pub const CXType_OCLImage1dBufferWO = enum_CXTypeKind.CXType_OCLImage1dBufferWO;
pub const CXType_OCLImage2dWO = enum_CXTypeKind.CXType_OCLImage2dWO;
pub const CXType_OCLImage2dArrayWO = enum_CXTypeKind.CXType_OCLImage2dArrayWO;
pub const CXType_OCLImage2dDepthWO = enum_CXTypeKind.CXType_OCLImage2dDepthWO;
pub const CXType_OCLImage2dArrayDepthWO = enum_CXTypeKind.CXType_OCLImage2dArrayDepthWO;
pub const CXType_OCLImage2dMSAAWO = enum_CXTypeKind.CXType_OCLImage2dMSAAWO;
pub const CXType_OCLImage2dArrayMSAAWO = enum_CXTypeKind.CXType_OCLImage2dArrayMSAAWO;
pub const CXType_OCLImage2dMSAADepthWO = enum_CXTypeKind.CXType_OCLImage2dMSAADepthWO;
pub const CXType_OCLImage2dArrayMSAADepthWO = enum_CXTypeKind.CXType_OCLImage2dArrayMSAADepthWO;
pub const CXType_OCLImage3dWO = enum_CXTypeKind.CXType_OCLImage3dWO;
pub const CXType_OCLImage1dRW = enum_CXTypeKind.CXType_OCLImage1dRW;
pub const CXType_OCLImage1dArrayRW = enum_CXTypeKind.CXType_OCLImage1dArrayRW;
pub const CXType_OCLImage1dBufferRW = enum_CXTypeKind.CXType_OCLImage1dBufferRW;
pub const CXType_OCLImage2dRW = enum_CXTypeKind.CXType_OCLImage2dRW;
pub const CXType_OCLImage2dArrayRW = enum_CXTypeKind.CXType_OCLImage2dArrayRW;
pub const CXType_OCLImage2dDepthRW = enum_CXTypeKind.CXType_OCLImage2dDepthRW;
pub const CXType_OCLImage2dArrayDepthRW = enum_CXTypeKind.CXType_OCLImage2dArrayDepthRW;
pub const CXType_OCLImage2dMSAARW = enum_CXTypeKind.CXType_OCLImage2dMSAARW;
pub const CXType_OCLImage2dArrayMSAARW = enum_CXTypeKind.CXType_OCLImage2dArrayMSAARW;
pub const CXType_OCLImage2dMSAADepthRW = enum_CXTypeKind.CXType_OCLImage2dMSAADepthRW;
pub const CXType_OCLImage2dArrayMSAADepthRW = enum_CXTypeKind.CXType_OCLImage2dArrayMSAADepthRW;
pub const CXType_OCLImage3dRW = enum_CXTypeKind.CXType_OCLImage3dRW;
pub const CXType_OCLSampler = enum_CXTypeKind.CXType_OCLSampler;
pub const CXType_OCLEvent = enum_CXTypeKind.CXType_OCLEvent;
pub const CXType_OCLQueue = enum_CXTypeKind.CXType_OCLQueue;
pub const CXType_OCLReserveID = enum_CXTypeKind.CXType_OCLReserveID;
pub const CXType_ObjCObject = enum_CXTypeKind.CXType_ObjCObject;
pub const CXType_ObjCTypeParam = enum_CXTypeKind.CXType_ObjCTypeParam;
pub const CXType_Attributed = enum_CXTypeKind.CXType_Attributed;
pub const CXType_OCLIntelSubgroupAVCMcePayload = enum_CXTypeKind.CXType_OCLIntelSubgroupAVCMcePayload;
pub const CXType_OCLIntelSubgroupAVCImePayload = enum_CXTypeKind.CXType_OCLIntelSubgroupAVCImePayload;
pub const CXType_OCLIntelSubgroupAVCRefPayload = enum_CXTypeKind.CXType_OCLIntelSubgroupAVCRefPayload;
pub const CXType_OCLIntelSubgroupAVCSicPayload = enum_CXTypeKind.CXType_OCLIntelSubgroupAVCSicPayload;
pub const CXType_OCLIntelSubgroupAVCMceResult = enum_CXTypeKind.CXType_OCLIntelSubgroupAVCMceResult;
pub const CXType_OCLIntelSubgroupAVCImeResult = enum_CXTypeKind.CXType_OCLIntelSubgroupAVCImeResult;
pub const CXType_OCLIntelSubgroupAVCRefResult = enum_CXTypeKind.CXType_OCLIntelSubgroupAVCRefResult;
pub const CXType_OCLIntelSubgroupAVCSicResult = enum_CXTypeKind.CXType_OCLIntelSubgroupAVCSicResult;
pub const CXType_OCLIntelSubgroupAVCImeResultSingleRefStreamout = enum_CXTypeKind.CXType_OCLIntelSubgroupAVCImeResultSingleRefStreamout;
pub const CXType_OCLIntelSubgroupAVCImeResultDualRefStreamout = enum_CXTypeKind.CXType_OCLIntelSubgroupAVCImeResultDualRefStreamout;
pub const CXType_OCLIntelSubgroupAVCImeSingleRefStreamin = enum_CXTypeKind.CXType_OCLIntelSubgroupAVCImeSingleRefStreamin;
pub const CXType_OCLIntelSubgroupAVCImeDualRefStreamin = enum_CXTypeKind.CXType_OCLIntelSubgroupAVCImeDualRefStreamin;
pub const enum_CXTypeKind = extern enum {
    CXType_Invalid = 0,
    CXType_Unexposed = 1,
    CXType_Void = 2,
    CXType_Bool = 3,
    CXType_Char_U = 4,
    CXType_UChar = 5,
    CXType_Char16 = 6,
    CXType_Char32 = 7,
    CXType_UShort = 8,
    CXType_UInt = 9,
    CXType_ULong = 10,
    CXType_ULongLong = 11,
    CXType_UInt128 = 12,
    CXType_Char_S = 13,
    CXType_SChar = 14,
    CXType_WChar = 15,
    CXType_Short = 16,
    CXType_Int = 17,
    CXType_Long = 18,
    CXType_LongLong = 19,
    CXType_Int128 = 20,
    CXType_Float = 21,
    CXType_Double = 22,
    CXType_LongDouble = 23,
    CXType_NullPtr = 24,
    CXType_Overload = 25,
    CXType_Dependent = 26,
    CXType_ObjCId = 27,
    CXType_ObjCClass = 28,
    CXType_ObjCSel = 29,
    CXType_Float128 = 30,
    CXType_Half = 31,
    CXType_Float16 = 32,
    CXType_ShortAccum = 33,
    CXType_Accum = 34,
    CXType_LongAccum = 35,
    CXType_UShortAccum = 36,
    CXType_UAccum = 37,
    CXType_ULongAccum = 38,
    CXType_FirstBuiltin,
    CXType_LastBuiltin,
    CXType_Complex = 100,
    CXType_Pointer = 101,
    CXType_BlockPointer = 102,
    CXType_LValueReference = 103,
    CXType_RValueReference = 104,
    CXType_Record = 105,
    CXType_Enum = 106,
    CXType_Typedef = 107,
    CXType_ObjCInterface = 108,
    CXType_ObjCObjectPointer = 109,
    CXType_FunctionNoProto = 110,
    CXType_FunctionProto = 111,
    CXType_ConstantArray = 112,
    CXType_Vector = 113,
    CXType_IncompleteArray = 114,
    CXType_VariableArray = 115,
    CXType_DependentSizedArray = 116,
    CXType_MemberPointer = 117,
    CXType_Auto = 118,
    CXType_Elaborated = 119,
    CXType_Pipe = 120,
    CXType_OCLImage1dRO = 121,
    CXType_OCLImage1dArrayRO = 122,
    CXType_OCLImage1dBufferRO = 123,
    CXType_OCLImage2dRO = 124,
    CXType_OCLImage2dArrayRO = 125,
    CXType_OCLImage2dDepthRO = 126,
    CXType_OCLImage2dArrayDepthRO = 127,
    CXType_OCLImage2dMSAARO = 128,
    CXType_OCLImage2dArrayMSAARO = 129,
    CXType_OCLImage2dMSAADepthRO = 130,
    CXType_OCLImage2dArrayMSAADepthRO = 131,
    CXType_OCLImage3dRO = 132,
    CXType_OCLImage1dWO = 133,
    CXType_OCLImage1dArrayWO = 134,
    CXType_OCLImage1dBufferWO = 135,
    CXType_OCLImage2dWO = 136,
    CXType_OCLImage2dArrayWO = 137,
    CXType_OCLImage2dDepthWO = 138,
    CXType_OCLImage2dArrayDepthWO = 139,
    CXType_OCLImage2dMSAAWO = 140,
    CXType_OCLImage2dArrayMSAAWO = 141,
    CXType_OCLImage2dMSAADepthWO = 142,
    CXType_OCLImage2dArrayMSAADepthWO = 143,
    CXType_OCLImage3dWO = 144,
    CXType_OCLImage1dRW = 145,
    CXType_OCLImage1dArrayRW = 146,
    CXType_OCLImage1dBufferRW = 147,
    CXType_OCLImage2dRW = 148,
    CXType_OCLImage2dArrayRW = 149,
    CXType_OCLImage2dDepthRW = 150,
    CXType_OCLImage2dArrayDepthRW = 151,
    CXType_OCLImage2dMSAARW = 152,
    CXType_OCLImage2dArrayMSAARW = 153,
    CXType_OCLImage2dMSAADepthRW = 154,
    CXType_OCLImage2dArrayMSAADepthRW = 155,
    CXType_OCLImage3dRW = 156,
    CXType_OCLSampler = 157,
    CXType_OCLEvent = 158,
    CXType_OCLQueue = 159,
    CXType_OCLReserveID = 160,
    CXType_ObjCObject = 161,
    CXType_ObjCTypeParam = 162,
    CXType_Attributed = 163,
    CXType_OCLIntelSubgroupAVCMcePayload = 164,
    CXType_OCLIntelSubgroupAVCImePayload = 165,
    CXType_OCLIntelSubgroupAVCRefPayload = 166,
    CXType_OCLIntelSubgroupAVCSicPayload = 167,
    CXType_OCLIntelSubgroupAVCMceResult = 168,
    CXType_OCLIntelSubgroupAVCImeResult = 169,
    CXType_OCLIntelSubgroupAVCRefResult = 170,
    CXType_OCLIntelSubgroupAVCSicResult = 171,
    CXType_OCLIntelSubgroupAVCImeResultSingleRefStreamout = 172,
    CXType_OCLIntelSubgroupAVCImeResultDualRefStreamout = 173,
    CXType_OCLIntelSubgroupAVCImeSingleRefStreamin = 174,
    CXType_OCLIntelSubgroupAVCImeDualRefStreamin = 175,
};
pub const CXCallingConv_Default = enum_CXCallingConv._Default;
pub const CXCallingConv_C = enum_CXCallingConv._C;
pub const CXCallingConv_X86StdCall = enum_CXCallingConv._X86StdCall;
pub const CXCallingConv_X86FastCall = enum_CXCallingConv._X86FastCall;
pub const CXCallingConv_X86ThisCall = enum_CXCallingConv._X86ThisCall;
pub const CXCallingConv_X86Pascal = enum_CXCallingConv._X86Pascal;
pub const CXCallingConv_AAPCS = enum_CXCallingConv._AAPCS;
pub const CXCallingConv_AAPCS_VFP = enum_CXCallingConv._AAPCS_VFP;
pub const CXCallingConv_X86RegCall = enum_CXCallingConv._X86RegCall;
pub const CXCallingConv_IntelOclBicc = enum_CXCallingConv._IntelOclBicc;
pub const CXCallingConv_Win64 = enum_CXCallingConv._Win64;
pub const CXCallingConv_X86_64Win64 = enum_CXCallingConv._X86_64Win64;
pub const CXCallingConv_X86_64SysV = enum_CXCallingConv._X86_64SysV;
pub const CXCallingConv_X86VectorCall = enum_CXCallingConv._X86VectorCall;
pub const CXCallingConv_Swift = enum_CXCallingConv._Swift;
pub const CXCallingConv_PreserveMost = enum_CXCallingConv._PreserveMost;
pub const CXCallingConv_PreserveAll = enum_CXCallingConv._PreserveAll;
pub const CXCallingConv_AArch64VectorCall = enum_CXCallingConv._AArch64VectorCall;
pub const CXCallingConv_Invalid = enum_CXCallingConv._Invalid;
pub const CXCallingConv_Unexposed = enum_CXCallingConv._Unexposed;
pub const enum_CXCallingConv = extern enum {
    _Default = 0,
    _C = 1,
    _X86StdCall = 2,
    _X86FastCall = 3,
    _X86ThisCall = 4,
    _X86Pascal = 5,
    _AAPCS = 6,
    _AAPCS_VFP = 7,
    _X86RegCall = 8,
    _IntelOclBicc = 9,
    _Win64 = 10,
    _X86_64Win64 = 10,
    _X86_64SysV = 11,
    _X86VectorCall = 12,
    _Swift = 13,
    _PreserveMost = 14,
    _PreserveAll = 15,
    _AArch64VectorCall = 16,
    _Invalid = 100,
    _Unexposed = 200,
};
pub const CXType = extern struct {
    kind: enum_CXTypeKind,
    data: [2](?*c_void),
};
pub extern fn clang_getCursorType(C: CXCursor) CXType;
pub extern fn clang_getTypeSpelling(CT: CXType) CXString;
pub extern fn clang_getTypedefDeclUnderlyingType(C: CXCursor) CXType;
pub extern fn clang_getEnumDeclIntegerType(C: CXCursor) CXType;
pub extern fn clang_getEnumConstantDeclValue(C: CXCursor) c_longlong;
pub extern fn clang_getEnumConstantDeclUnsignedValue(C: CXCursor) c_ulonglong;
pub extern fn clang_getFieldDeclBitWidth(C: CXCursor) c_int;
pub extern fn clang_Cursor_getNumArguments(C: CXCursor) c_int;
pub extern fn clang_Cursor_getArgument(C: CXCursor, i: c_uint) CXCursor;
pub const CXTemplateArgumentKind_Null = enum_CXTemplateArgumentKind._Null;
pub const CXTemplateArgumentKind_Type = enum_CXTemplateArgumentKind._Type;
pub const CXTemplateArgumentKind_Declaration = enum_CXTemplateArgumentKind._Declaration;
pub const CXTemplateArgumentKind_NullPtr = enum_CXTemplateArgumentKind._NullPtr;
pub const CXTemplateArgumentKind_Integral = enum_CXTemplateArgumentKind._Integral;
pub const CXTemplateArgumentKind_Template = enum_CXTemplateArgumentKind._Template;
pub const CXTemplateArgumentKind_TemplateExpansion = enum_CXTemplateArgumentKind._TemplateExpansion;
pub const CXTemplateArgumentKind_Expression = enum_CXTemplateArgumentKind._Expression;
pub const CXTemplateArgumentKind_Pack = enum_CXTemplateArgumentKind._Pack;
pub const CXTemplateArgumentKind_Invalid = enum_CXTemplateArgumentKind._Invalid;
pub const enum_CXTemplateArgumentKind = extern enum {
    _Null,
    _Type,
    _Declaration,
    _NullPtr,
    _Integral,
    _Template,
    _TemplateExpansion,
    _Expression,
    _Pack,
    _Invalid,
};
pub extern fn clang_Cursor_getNumTemplateArguments(C: CXCursor) c_int;
pub extern fn clang_Cursor_getTemplateArgumentKind(C: CXCursor, I: c_uint) enum_CXTemplateArgumentKind;
pub extern fn clang_Cursor_getTemplateArgumentType(C: CXCursor, I: c_uint) CXType;
pub extern fn clang_Cursor_getTemplateArgumentValue(C: CXCursor, I: c_uint) c_longlong;
pub extern fn clang_Cursor_getTemplateArgumentUnsignedValue(C: CXCursor, I: c_uint) c_ulonglong;
pub extern fn clang_equalTypes(A: CXType, B: CXType) c_uint;
pub extern fn clang_getCanonicalType(T: CXType) CXType;
pub extern fn clang_isConstQualifiedType(T: CXType) c_uint;
pub extern fn clang_Cursor_isMacroFunctionLike(C: CXCursor) c_uint;
pub extern fn clang_Cursor_isMacroBuiltin(C: CXCursor) c_uint;
pub extern fn clang_Cursor_isFunctionInlined(C: CXCursor) c_uint;
pub extern fn clang_isVolatileQualifiedType(T: CXType) c_uint;
pub extern fn clang_isRestrictQualifiedType(T: CXType) c_uint;
pub extern fn clang_getAddressSpace(T: CXType) c_uint;
pub extern fn clang_getTypedefName(CT: CXType) CXString;
pub extern fn clang_getPointeeType(T: CXType) CXType;
pub extern fn clang_getTypeDeclaration(T: CXType) CXCursor;
pub extern fn clang_getDeclObjCTypeEncoding(C: CXCursor) CXString;
pub extern fn clang_Type_getObjCEncoding(type_0: CXType) CXString;
pub extern fn clang_getTypeKindSpelling(K: enum_CXTypeKind) CXString;
pub extern fn clang_getFunctionTypeCallingConv(T: CXType) enum_CXCallingConv;
pub extern fn clang_getResultType(T: CXType) CXType;
pub extern fn clang_getExceptionSpecificationType(T: CXType) c_int;
pub extern fn clang_getNumArgTypes(T: CXType) c_int;
pub extern fn clang_getArgType(T: CXType, i: c_uint) CXType;
pub extern fn clang_Type_getObjCObjectBaseType(T: CXType) CXType;
pub extern fn clang_Type_getNumObjCProtocolRefs(T: CXType) c_uint;
pub extern fn clang_Type_getObjCProtocolDecl(T: CXType, i: c_uint) CXCursor;
pub extern fn clang_Type_getNumObjCTypeArgs(T: CXType) c_uint;
pub extern fn clang_Type_getObjCTypeArg(T: CXType, i: c_uint) CXType;
pub extern fn clang_isFunctionTypeVariadic(T: CXType) c_uint;
pub extern fn clang_getCursorResultType(C: CXCursor) CXType;
pub extern fn clang_getCursorExceptionSpecificationType(C: CXCursor) c_int;
pub extern fn clang_isPODType(T: CXType) c_uint;
pub extern fn clang_getElementType(T: CXType) CXType;
pub extern fn clang_getNumElements(T: CXType) c_longlong;
pub extern fn clang_getArrayElementType(T: CXType) CXType;
pub extern fn clang_getArraySize(T: CXType) c_longlong;
pub extern fn clang_Type_getNamedType(T: CXType) CXType;
pub extern fn clang_Type_isTransparentTagTypedef(T: CXType) c_uint;
pub const CXTypeNullability_NonNull = enum_CXTypeNullabilityKind.CXTypeNullability_NonNull;
pub const CXTypeNullability_Nullable = enum_CXTypeNullabilityKind.CXTypeNullability_Nullable;
pub const CXTypeNullability_Unspecified = enum_CXTypeNullabilityKind.CXTypeNullability_Unspecified;
pub const CXTypeNullability_Invalid = enum_CXTypeNullabilityKind.CXTypeNullability_Invalid;
pub const enum_CXTypeNullabilityKind = extern enum {
    CXTypeNullability_NonNull = 0,
    CXTypeNullability_Nullable = 1,
    CXTypeNullability_Unspecified = 2,
    CXTypeNullability_Invalid = 3,
};
pub extern fn clang_Type_getNullability(T: CXType) enum_CXTypeNullabilityKind;
pub const CXTypeLayoutError_Invalid = enum_CXTypeLayoutError._Invalid;
pub const CXTypeLayoutError_Incomplete = enum_CXTypeLayoutError._Incomplete;
pub const CXTypeLayoutError_Dependent = enum_CXTypeLayoutError._Dependent;
pub const CXTypeLayoutError_NotConstantSize = enum_CXTypeLayoutError._NotConstantSize;
pub const CXTypeLayoutError_InvalidFieldName = enum_CXTypeLayoutError._InvalidFieldName;
pub const enum_CXTypeLayoutError = extern enum {
    _Invalid = -1,
    _Incomplete = -2,
    _Dependent = -3,
    _NotConstantSize = -4,
    _InvalidFieldName = -5,
};
pub extern fn clang_Type_getAlignOf(T: CXType) c_longlong;
pub extern fn clang_Type_getClassType(T: CXType) CXType;
pub extern fn clang_Type_getSizeOf(T: CXType) c_longlong;
pub extern fn clang_Type_getOffsetOf(T: CXType, S: [*c]const u8) c_longlong;
pub extern fn clang_Type_getModifiedType(T: CXType) CXType;
pub extern fn clang_Cursor_getOffsetOfField(C: CXCursor) c_longlong;
pub extern fn clang_Cursor_isAnonymous(C: CXCursor) c_uint;
pub const CXRefQualifier_None = enum_CXRefQualifierKind.CXRefQualifier_None;
pub const CXRefQualifier_LValue = enum_CXRefQualifierKind.CXRefQualifier_LValue;
pub const CXRefQualifier_RValue = enum_CXRefQualifierKind.CXRefQualifier_RValue;
pub const enum_CXRefQualifierKind = extern enum {
    CXRefQualifier_None = 0,
    CXRefQualifier_LValue = 1,
    CXRefQualifier_RValue = 2,
};
pub extern fn clang_Type_getNumTemplateArguments(T: CXType) c_int;
pub extern fn clang_Type_getTemplateArgumentAsType(T: CXType, i: c_uint) CXType;
pub extern fn clang_Type_getCXXRefQualifier(T: CXType) enum_CXRefQualifierKind;
pub extern fn clang_Cursor_isBitField(C: CXCursor) c_uint;
pub extern fn clang_isVirtualBase(arg0: CXCursor) c_uint;
pub const CX_CXXInvalidAccessSpecifier = enum_CX_CXXAccessSpecifier.CX_CXXInvalidAccessSpecifier;
pub const CX_CXXPublic = enum_CX_CXXAccessSpecifier.CX_CXXPublic;
pub const CX_CXXProtected = enum_CX_CXXAccessSpecifier.CX_CXXProtected;
pub const CX_CXXPrivate = enum_CX_CXXAccessSpecifier.CX_CXXPrivate;
pub const enum_CX_CXXAccessSpecifier = extern enum {
    CX_CXXInvalidAccessSpecifier,
    CX_CXXPublic,
    CX_CXXProtected,
    CX_CXXPrivate,
};
pub extern fn clang_getCXXAccessSpecifier(arg0: CXCursor) enum_CX_CXXAccessSpecifier;
pub const CX_SC_Invalid = enum_CX_StorageClass.CX_SC_Invalid;
pub const CX_SC_None = enum_CX_StorageClass.CX_SC_None;
pub const CX_SC_Extern = enum_CX_StorageClass.CX_SC_Extern;
pub const CX_SC_Static = enum_CX_StorageClass.CX_SC_Static;
pub const CX_SC_PrivateExtern = enum_CX_StorageClass.CX_SC_PrivateExtern;
pub const CX_SC_OpenCLWorkGroupLocal = enum_CX_StorageClass.CX_SC_OpenCLWorkGroupLocal;
pub const CX_SC_Auto = enum_CX_StorageClass.CX_SC_Auto;
pub const CX_SC_Register = enum_CX_StorageClass.CX_SC_Register;
pub const enum_CX_StorageClass = extern enum {
    CX_SC_Invalid,
    CX_SC_None,
    CX_SC_Extern,
    CX_SC_Static,
    CX_SC_PrivateExtern,
    CX_SC_OpenCLWorkGroupLocal,
    CX_SC_Auto,
    CX_SC_Register,
};
pub extern fn clang_Cursor_getStorageClass(arg0: CXCursor) enum_CX_StorageClass;
pub extern fn clang_getNumOverloadedDecls(cursor: CXCursor) c_uint;
pub extern fn clang_getOverloadedDecl(cursor: CXCursor, index: c_uint) CXCursor;
pub extern fn clang_getIBOutletCollectionType(arg0: CXCursor) CXType;
pub const CXChildVisit_Break = enum_CXChildVisitResult.CXChildVisit_Break;
pub const CXChildVisit_Continue = enum_CXChildVisitResult.CXChildVisit_Continue;
pub const CXChildVisit_Recurse = enum_CXChildVisitResult.CXChildVisit_Recurse;
pub const enum_CXChildVisitResult = extern enum {
    CXChildVisit_Break,
    CXChildVisit_Continue,
    CXChildVisit_Recurse,
};
pub const CXCursorVisitor = ?extern fn (CXCursor, CXCursor, CXClientData) enum_CXChildVisitResult;
pub extern fn clang_visitChildren(parent: CXCursor, visitor: CXCursorVisitor, client_data: CXClientData) c_uint;
pub extern fn clang_getCursorUSR(arg0: CXCursor) CXString;
pub extern fn clang_constructUSR_ObjCClass(class_name: [*c]const u8) CXString;
pub extern fn clang_constructUSR_ObjCCategory(class_name: [*c]const u8, category_name: [*c]const u8) CXString;
pub extern fn clang_constructUSR_ObjCProtocol(protocol_name: [*c]const u8) CXString;
pub extern fn clang_constructUSR_ObjCIvar(name: [*c]const u8, classUSR: CXString) CXString;
pub extern fn clang_constructUSR_ObjCMethod(name: [*c]const u8, isInstanceMethod: c_uint, classUSR: CXString) CXString;
pub extern fn clang_constructUSR_ObjCProperty(property: [*c]const u8, classUSR: CXString) CXString;
pub extern fn clang_getCursorSpelling(arg0: CXCursor) CXString;
pub extern fn clang_Cursor_getSpellingNameRange(arg0: CXCursor, pieceIndex: c_uint, options: c_uint) CXSourceRange;
pub const CXPrintingPolicy = ?*c_void;
pub const CXPrintingPolicy_Indentation = enum_CXPrintingPolicyProperty.CXPrintingPolicy_Indentation;
pub const CXPrintingPolicy_SuppressSpecifiers = enum_CXPrintingPolicyProperty.CXPrintingPolicy_SuppressSpecifiers;
pub const CXPrintingPolicy_SuppressTagKeyword = enum_CXPrintingPolicyProperty.CXPrintingPolicy_SuppressTagKeyword;
pub const CXPrintingPolicy_IncludeTagDefinition = enum_CXPrintingPolicyProperty.CXPrintingPolicy_IncludeTagDefinition;
pub const CXPrintingPolicy_SuppressScope = enum_CXPrintingPolicyProperty.CXPrintingPolicy_SuppressScope;
pub const CXPrintingPolicy_SuppressUnwrittenScope = enum_CXPrintingPolicyProperty.CXPrintingPolicy_SuppressUnwrittenScope;
pub const CXPrintingPolicy_SuppressInitializers = enum_CXPrintingPolicyProperty.CXPrintingPolicy_SuppressInitializers;
pub const CXPrintingPolicy_ConstantArraySizeAsWritten = enum_CXPrintingPolicyProperty.CXPrintingPolicy_ConstantArraySizeAsWritten;
pub const CXPrintingPolicy_AnonymousTagLocations = enum_CXPrintingPolicyProperty.CXPrintingPolicy_AnonymousTagLocations;
pub const CXPrintingPolicy_SuppressStrongLifetime = enum_CXPrintingPolicyProperty.CXPrintingPolicy_SuppressStrongLifetime;
pub const CXPrintingPolicy_SuppressLifetimeQualifiers = enum_CXPrintingPolicyProperty.CXPrintingPolicy_SuppressLifetimeQualifiers;
pub const CXPrintingPolicy_SuppressTemplateArgsInCXXConstructors = enum_CXPrintingPolicyProperty.CXPrintingPolicy_SuppressTemplateArgsInCXXConstructors;
pub const CXPrintingPolicy_Bool = enum_CXPrintingPolicyProperty.CXPrintingPolicy_Bool;
pub const CXPrintingPolicy_Restrict = enum_CXPrintingPolicyProperty.CXPrintingPolicy_Restrict;
pub const CXPrintingPolicy_Alignof = enum_CXPrintingPolicyProperty.CXPrintingPolicy_Alignof;
pub const CXPrintingPolicy_UnderscoreAlignof = enum_CXPrintingPolicyProperty.CXPrintingPolicy_UnderscoreAlignof;
pub const CXPrintingPolicy_UseVoidForZeroParams = enum_CXPrintingPolicyProperty.CXPrintingPolicy_UseVoidForZeroParams;
pub const CXPrintingPolicy_TerseOutput = enum_CXPrintingPolicyProperty.CXPrintingPolicy_TerseOutput;
pub const CXPrintingPolicy_PolishForDeclaration = enum_CXPrintingPolicyProperty.CXPrintingPolicy_PolishForDeclaration;
pub const CXPrintingPolicy_Half = enum_CXPrintingPolicyProperty.CXPrintingPolicy_Half;
pub const CXPrintingPolicy_MSWChar = enum_CXPrintingPolicyProperty.CXPrintingPolicy_MSWChar;
pub const CXPrintingPolicy_IncludeNewlines = enum_CXPrintingPolicyProperty.CXPrintingPolicy_IncludeNewlines;
pub const CXPrintingPolicy_MSVCFormatting = enum_CXPrintingPolicyProperty.CXPrintingPolicy_MSVCFormatting;
pub const CXPrintingPolicy_ConstantsAsWritten = enum_CXPrintingPolicyProperty.CXPrintingPolicy_ConstantsAsWritten;
pub const CXPrintingPolicy_SuppressImplicitBase = enum_CXPrintingPolicyProperty.CXPrintingPolicy_SuppressImplicitBase;
pub const CXPrintingPolicy_FullyQualifiedName = enum_CXPrintingPolicyProperty.CXPrintingPolicy_FullyQualifiedName;
pub const CXPrintingPolicy_LastProperty = enum_CXPrintingPolicyProperty.CXPrintingPolicy_LastProperty;
pub const enum_CXPrintingPolicyProperty = extern enum {
    CXPrintingPolicy_Indentation = 0,
    CXPrintingPolicy_SuppressSpecifiers = 1,
    CXPrintingPolicy_SuppressTagKeyword = 2,
    CXPrintingPolicy_IncludeTagDefinition = 3,
    CXPrintingPolicy_SuppressScope = 4,
    CXPrintingPolicy_SuppressUnwrittenScope = 5,
    CXPrintingPolicy_SuppressInitializers = 6,
    CXPrintingPolicy_ConstantArraySizeAsWritten = 7,
    CXPrintingPolicy_AnonymousTagLocations = 8,
    CXPrintingPolicy_SuppressStrongLifetime = 9,
    CXPrintingPolicy_SuppressLifetimeQualifiers = 10,
    CXPrintingPolicy_SuppressTemplateArgsInCXXConstructors = 11,
    CXPrintingPolicy_Bool = 12,
    CXPrintingPolicy_Restrict = 13,
    CXPrintingPolicy_Alignof = 14,
    CXPrintingPolicy_UnderscoreAlignof = 15,
    CXPrintingPolicy_UseVoidForZeroParams = 16,
    CXPrintingPolicy_TerseOutput = 17,
    CXPrintingPolicy_PolishForDeclaration = 18,
    CXPrintingPolicy_Half = 19,
    CXPrintingPolicy_MSWChar = 20,
    CXPrintingPolicy_IncludeNewlines = 21,
    CXPrintingPolicy_MSVCFormatting = 22,
    CXPrintingPolicy_ConstantsAsWritten = 23,
    CXPrintingPolicy_SuppressImplicitBase = 24,
    CXPrintingPolicy_FullyQualifiedName = 25,
    CXPrintingPolicy_LastProperty = 25,
};
pub extern fn clang_PrintingPolicy_getProperty(Policy: CXPrintingPolicy, Property: enum_CXPrintingPolicyProperty) c_uint;
pub extern fn clang_PrintingPolicy_setProperty(Policy: CXPrintingPolicy, Property: enum_CXPrintingPolicyProperty, Value: c_uint) void;
pub extern fn clang_getCursorPrintingPolicy(arg0: CXCursor) CXPrintingPolicy;
pub extern fn clang_PrintingPolicy_dispose(Policy: CXPrintingPolicy) void;
pub extern fn clang_getCursorPrettyPrinted(Cursor: CXCursor, Policy: CXPrintingPolicy) CXString;
pub extern fn clang_getCursorDisplayName(arg0: CXCursor) CXString;
pub extern fn clang_getCursorReferenced(arg0: CXCursor) CXCursor;
pub extern fn clang_getCursorDefinition(arg0: CXCursor) CXCursor;
pub extern fn clang_isCursorDefinition(arg0: CXCursor) c_uint;
pub extern fn clang_getCanonicalCursor(arg0: CXCursor) CXCursor;
pub extern fn clang_Cursor_getObjCSelectorIndex(arg0: CXCursor) c_int;
pub extern fn clang_Cursor_isDynamicCall(C: CXCursor) c_int;
pub extern fn clang_Cursor_getReceiverType(C: CXCursor) CXType;
pub const CXObjCPropertyAttr_noattr = 0;
pub const CXObjCPropertyAttr_readonly = 1;
pub const CXObjCPropertyAttr_getter = 2;
pub const CXObjCPropertyAttr_assign = 4;
pub const CXObjCPropertyAttr_readwrite = 8;
pub const CXObjCPropertyAttr_retain = 16;
pub const CXObjCPropertyAttr_copy = 32;
pub const CXObjCPropertyAttr_nonatomic = 64;
pub const CXObjCPropertyAttr_setter = 128;
pub const CXObjCPropertyAttr_atomic = 256;
pub const CXObjCPropertyAttr_weak = 512;
pub const CXObjCPropertyAttr_strong = 1024;
pub const CXObjCPropertyAttr_unsafe_unretained = 2048;
pub const CXObjCPropertyAttr_class = 4096;
pub const CXObjCPropertyAttrKind = extern enum {
    CXObjCPropertyAttr_noattr = 0,
    CXObjCPropertyAttr_readonly = 1,
    CXObjCPropertyAttr_getter = 2,
    CXObjCPropertyAttr_assign = 4,
    CXObjCPropertyAttr_readwrite = 8,
    CXObjCPropertyAttr_retain = 16,
    CXObjCPropertyAttr_copy = 32,
    CXObjCPropertyAttr_nonatomic = 64,
    CXObjCPropertyAttr_setter = 128,
    CXObjCPropertyAttr_atomic = 256,
    CXObjCPropertyAttr_weak = 512,
    CXObjCPropertyAttr_strong = 1024,
    CXObjCPropertyAttr_unsafe_unretained = 2048,
    CXObjCPropertyAttr_class = 4096,
};
pub extern fn clang_Cursor_getObjCPropertyAttributes(C: CXCursor, reserved: c_uint) c_uint;
pub extern fn clang_Cursor_getObjCPropertyGetterName(C: CXCursor) CXString;
pub extern fn clang_Cursor_getObjCPropertySetterName(C: CXCursor) CXString;
pub const CXObjCDeclQualifier_None = 0;
pub const CXObjCDeclQualifier_In = 1;
pub const CXObjCDeclQualifier_Inout = 2;
pub const CXObjCDeclQualifier_Out = 4;
pub const CXObjCDeclQualifier_Bycopy = 8;
pub const CXObjCDeclQualifier_Byref = 16;
pub const CXObjCDeclQualifier_Oneway = 32;
pub const CXObjCDeclQualifierKind = extern enum {
    CXObjCDeclQualifier_None = 0,
    CXObjCDeclQualifier_In = 1,
    CXObjCDeclQualifier_Inout = 2,
    CXObjCDeclQualifier_Out = 4,
    CXObjCDeclQualifier_Bycopy = 8,
    CXObjCDeclQualifier_Byref = 16,
    CXObjCDeclQualifier_Oneway = 32,
};
pub extern fn clang_Cursor_getObjCDeclQualifiers(C: CXCursor) c_uint;
pub extern fn clang_Cursor_isObjCOptional(C: CXCursor) c_uint;
pub extern fn clang_Cursor_isVariadic(C: CXCursor) c_uint;
pub extern fn clang_Cursor_isExternalSymbol(C: CXCursor, language: [*c]CXString, definedIn: [*c]CXString, isGenerated: [*c]c_uint) c_uint;
pub extern fn clang_Cursor_getCommentRange(C: CXCursor) CXSourceRange;
pub extern fn clang_Cursor_getRawCommentText(C: CXCursor) CXString;
pub extern fn clang_Cursor_getBriefCommentText(C: CXCursor) CXString;
pub extern fn clang_Cursor_getMangling(arg0: CXCursor) CXString;
pub extern fn clang_Cursor_getCXXManglings(arg0: CXCursor) [*c]CXStringSet;
pub extern fn clang_Cursor_getObjCManglings(arg0: CXCursor) [*c]CXStringSet;
pub const CXModule = ?*c_void;
pub extern fn clang_Cursor_getModule(C: CXCursor) CXModule;
pub extern fn clang_getModuleForFile(arg0: CXTranslationUnit, arg1: CXFile) CXModule;
pub extern fn clang_Module_getASTFile(Module: CXModule) CXFile;
pub extern fn clang_Module_getParent(Module: CXModule) CXModule;
pub extern fn clang_Module_getName(Module: CXModule) CXString;
pub extern fn clang_Module_getFullName(Module: CXModule) CXString;
pub extern fn clang_Module_isSystem(Module: CXModule) c_int;
pub extern fn clang_Module_getNumTopLevelHeaders(arg0: CXTranslationUnit, Module: CXModule) c_uint;
pub extern fn clang_Module_getTopLevelHeader(arg0: CXTranslationUnit, Module: CXModule, Index: c_uint) CXFile;
pub extern fn clang_CXXConstructor_isConvertingConstructor(C: CXCursor) c_uint;
pub extern fn clang_CXXConstructor_isCopyConstructor(C: CXCursor) c_uint;
pub extern fn clang_CXXConstructor_isDefaultConstructor(C: CXCursor) c_uint;
pub extern fn clang_CXXConstructor_isMoveConstructor(C: CXCursor) c_uint;
pub extern fn clang_CXXField_isMutable(C: CXCursor) c_uint;
pub extern fn clang_CXXMethod_isDefaulted(C: CXCursor) c_uint;
pub extern fn clang_CXXMethod_isPureVirtual(C: CXCursor) c_uint;
pub extern fn clang_CXXMethod_isStatic(C: CXCursor) c_uint;
pub extern fn clang_CXXMethod_isVirtual(C: CXCursor) c_uint;
pub extern fn clang_CXXRecord_isAbstract(C: CXCursor) c_uint;
pub extern fn clang_EnumDecl_isScoped(C: CXCursor) c_uint;
pub extern fn clang_CXXMethod_isConst(C: CXCursor) c_uint;
pub extern fn clang_getTemplateCursorKind(C: CXCursor) enum_CXCursorKind;
pub extern fn clang_getSpecializedCursorTemplate(C: CXCursor) CXCursor;
pub extern fn clang_getCursorReferenceNameRange(C: CXCursor, NameFlags: c_uint, PieceIndex: c_uint) CXSourceRange;
pub const CXNameRange_WantQualifier = enum_CXNameRefFlags.CXNameRange_WantQualifier;
pub const CXNameRange_WantTemplateArgs = enum_CXNameRefFlags.CXNameRange_WantTemplateArgs;
pub const CXNameRange_WantSinglePiece = enum_CXNameRefFlags.CXNameRange_WantSinglePiece;
pub const enum_CXNameRefFlags = extern enum {
    CXNameRange_WantQualifier = 1,
    CXNameRange_WantTemplateArgs = 2,
    CXNameRange_WantSinglePiece = 4,
};
pub const CXToken_Punctuation = enum_CXTokenKind.CXToken_Punctuation;
pub const CXToken_Keyword = enum_CXTokenKind.CXToken_Keyword;
pub const CXToken_Identifier = enum_CXTokenKind.CXToken_Identifier;
pub const CXToken_Literal = enum_CXTokenKind.CXToken_Literal;
pub const CXToken_Comment = enum_CXTokenKind.CXToken_Comment;
pub const enum_CXTokenKind = extern enum {
    CXToken_Punctuation,
    CXToken_Keyword,
    CXToken_Identifier,
    CXToken_Literal,
    CXToken_Comment,
};
pub const CXTokenKind = enum_CXTokenKind;
pub const CXToken = extern struct {
    int_data: [4]c_uint,
    ptr_data: ?*c_void,
};
pub extern fn clang_getToken(TU: CXTranslationUnit, Location: CXSourceLocation) [*c]CXToken;
pub extern fn clang_getTokenKind(arg0: CXToken) CXTokenKind;
pub extern fn clang_getTokenSpelling(arg0: CXTranslationUnit, arg1: CXToken) CXString;
pub extern fn clang_getTokenLocation(arg0: CXTranslationUnit, arg1: CXToken) CXSourceLocation;
pub extern fn clang_getTokenExtent(arg0: CXTranslationUnit, arg1: CXToken) CXSourceRange;
pub extern fn clang_tokenize(TU: CXTranslationUnit, Range: CXSourceRange, Tokens: [*c]([*c]CXToken), NumTokens: [*c]c_uint) void;
pub extern fn clang_annotateTokens(TU: CXTranslationUnit, Tokens: [*c]CXToken, NumTokens: c_uint, Cursors: [*c]CXCursor) void;
pub extern fn clang_disposeTokens(TU: CXTranslationUnit, Tokens: [*c]CXToken, NumTokens: c_uint) void;
pub extern fn clang_getCursorKindSpelling(Kind: enum_CXCursorKind) CXString;
pub extern fn clang_getDefinitionSpellingAndExtent(arg0: CXCursor, startBuf: [*c]([*c]const u8), endBuf: [*c]([*c]const u8), startLine: [*c]c_uint, startColumn: [*c]c_uint, endLine: [*c]c_uint, endColumn: [*c]c_uint) void;
pub extern fn clang_enableStackTraces() void;
pub extern fn clang_executeOnThread(@"fn": ?extern fn (?*c_void) void, user_data: ?*c_void, stack_size: c_uint) void;
pub const CXCompletionString = ?*c_void;
pub const CXCompletionResult = extern struct {
    CursorKind: enum_CXCursorKind,
    CompletionString: CXCompletionString,
};
pub const CXCompletionChunk_Optional = enum_CXCompletionChunkKind.CXCompletionChunk_Optional;
pub const CXCompletionChunk_TypedText = enum_CXCompletionChunkKind.CXCompletionChunk_TypedText;
pub const CXCompletionChunk_Text = enum_CXCompletionChunkKind.CXCompletionChunk_Text;
pub const CXCompletionChunk_Placeholder = enum_CXCompletionChunkKind.CXCompletionChunk_Placeholder;
pub const CXCompletionChunk_Informative = enum_CXCompletionChunkKind.CXCompletionChunk_Informative;
pub const CXCompletionChunk_CurrentParameter = enum_CXCompletionChunkKind.CXCompletionChunk_CurrentParameter;
pub const CXCompletionChunk_LeftParen = enum_CXCompletionChunkKind.CXCompletionChunk_LeftParen;
pub const CXCompletionChunk_RightParen = enum_CXCompletionChunkKind.CXCompletionChunk_RightParen;
pub const CXCompletionChunk_LeftBracket = enum_CXCompletionChunkKind.CXCompletionChunk_LeftBracket;
pub const CXCompletionChunk_RightBracket = enum_CXCompletionChunkKind.CXCompletionChunk_RightBracket;
pub const CXCompletionChunk_LeftBrace = enum_CXCompletionChunkKind.CXCompletionChunk_LeftBrace;
pub const CXCompletionChunk_RightBrace = enum_CXCompletionChunkKind.CXCompletionChunk_RightBrace;
pub const CXCompletionChunk_LeftAngle = enum_CXCompletionChunkKind.CXCompletionChunk_LeftAngle;
pub const CXCompletionChunk_RightAngle = enum_CXCompletionChunkKind.CXCompletionChunk_RightAngle;
pub const CXCompletionChunk_Comma = enum_CXCompletionChunkKind.CXCompletionChunk_Comma;
pub const CXCompletionChunk_ResultType = enum_CXCompletionChunkKind.CXCompletionChunk_ResultType;
pub const CXCompletionChunk_Colon = enum_CXCompletionChunkKind.CXCompletionChunk_Colon;
pub const CXCompletionChunk_SemiColon = enum_CXCompletionChunkKind.CXCompletionChunk_SemiColon;
pub const CXCompletionChunk_Equal = enum_CXCompletionChunkKind.CXCompletionChunk_Equal;
pub const CXCompletionChunk_HorizontalSpace = enum_CXCompletionChunkKind.CXCompletionChunk_HorizontalSpace;
pub const CXCompletionChunk_VerticalSpace = enum_CXCompletionChunkKind.CXCompletionChunk_VerticalSpace;
pub const enum_CXCompletionChunkKind = extern enum {
    CXCompletionChunk_Optional,
    CXCompletionChunk_TypedText,
    CXCompletionChunk_Text,
    CXCompletionChunk_Placeholder,
    CXCompletionChunk_Informative,
    CXCompletionChunk_CurrentParameter,
    CXCompletionChunk_LeftParen,
    CXCompletionChunk_RightParen,
    CXCompletionChunk_LeftBracket,
    CXCompletionChunk_RightBracket,
    CXCompletionChunk_LeftBrace,
    CXCompletionChunk_RightBrace,
    CXCompletionChunk_LeftAngle,
    CXCompletionChunk_RightAngle,
    CXCompletionChunk_Comma,
    CXCompletionChunk_ResultType,
    CXCompletionChunk_Colon,
    CXCompletionChunk_SemiColon,
    CXCompletionChunk_Equal,
    CXCompletionChunk_HorizontalSpace,
    CXCompletionChunk_VerticalSpace,
};
pub extern fn clang_getCompletionChunkKind(completion_string: CXCompletionString, chunk_number: c_uint) enum_CXCompletionChunkKind;
pub extern fn clang_getCompletionChunkText(completion_string: CXCompletionString, chunk_number: c_uint) CXString;
pub extern fn clang_getCompletionChunkCompletionString(completion_string: CXCompletionString, chunk_number: c_uint) CXCompletionString;
pub extern fn clang_getNumCompletionChunks(completion_string: CXCompletionString) c_uint;
pub extern fn clang_getCompletionPriority(completion_string: CXCompletionString) c_uint;
pub extern fn clang_getCompletionAvailability(completion_string: CXCompletionString) enum_CXAvailabilityKind;
pub extern fn clang_getCompletionNumAnnotations(completion_string: CXCompletionString) c_uint;
pub extern fn clang_getCompletionAnnotation(completion_string: CXCompletionString, annotation_number: c_uint) CXString;
pub extern fn clang_getCompletionParent(completion_string: CXCompletionString, kind: [*c]enum_CXCursorKind) CXString;
pub extern fn clang_getCompletionBriefComment(completion_string: CXCompletionString) CXString;
pub extern fn clang_getCursorCompletionString(cursor: CXCursor) CXCompletionString;
pub const CXCodeCompleteResults = extern struct {
    Results: [*c]CXCompletionResult,
    NumResults: c_uint,
};
pub extern fn clang_getCompletionNumFixIts(results: [*c]CXCodeCompleteResults, completion_index: c_uint) c_uint;
pub extern fn clang_getCompletionFixIt(results: [*c]CXCodeCompleteResults, completion_index: c_uint, fixit_index: c_uint, replacement_range: [*c]CXSourceRange) CXString;
pub const CXCodeComplete_IncludeMacros = enum_CXCodeComplete_Flags.CXCodeComplete_IncludeMacros;
pub const CXCodeComplete_IncludeCodePatterns = enum_CXCodeComplete_Flags.CXCodeComplete_IncludeCodePatterns;
pub const CXCodeComplete_IncludeBriefComments = enum_CXCodeComplete_Flags.CXCodeComplete_IncludeBriefComments;
pub const CXCodeComplete_SkipPreamble = enum_CXCodeComplete_Flags.CXCodeComplete_SkipPreamble;
pub const CXCodeComplete_IncludeCompletionsWithFixIts = enum_CXCodeComplete_Flags.CXCodeComplete_IncludeCompletionsWithFixIts;
pub const enum_CXCodeComplete_Flags = extern enum {
    CXCodeComplete_IncludeMacros = 1,
    CXCodeComplete_IncludeCodePatterns = 2,
    CXCodeComplete_IncludeBriefComments = 4,
    CXCodeComplete_SkipPreamble = 8,
    CXCodeComplete_IncludeCompletionsWithFixIts = 16,
};
pub const CXCompletionContext_Unexposed = enum_CXCompletionContext._Unexposed;
pub const CXCompletionContext_AnyType = enum_CXCompletionContext._AnyType;
pub const CXCompletionContext_AnyValue = enum_CXCompletionContext._AnyValue;
pub const CXCompletionContext_ObjCObjectValue = enum_CXCompletionContext._ObjCObjectValue;
pub const CXCompletionContext_ObjCSelectorValue = enum_CXCompletionContext._ObjCSelectorValue;
pub const CXCompletionContext_CXXClassTypeValue = enum_CXCompletionContext._CXXClassTypeValue;
pub const CXCompletionContext_DotMemberAccess = enum_CXCompletionContext._DotMemberAccess;
pub const CXCompletionContext_ArrowMemberAccess = enum_CXCompletionContext._ArrowMemberAccess;
pub const CXCompletionContext_ObjCPropertyAccess = enum_CXCompletionContext._ObjCPropertyAccess;
pub const CXCompletionContext_EnumTag = enum_CXCompletionContext._EnumTag;
pub const CXCompletionContext_UnionTag = enum_CXCompletionContext._UnionTag;
pub const CXCompletionContext_StructTag = enum_CXCompletionContext._StructTag;
pub const CXCompletionContext_ClassTag = enum_CXCompletionContext._ClassTag;
pub const CXCompletionContext_Namespace = enum_CXCompletionContext._Namespace;
pub const CXCompletionContext_NestedNameSpecifier = enum_CXCompletionContext._NestedNameSpecifier;
pub const CXCompletionContext_ObjCInterface = enum_CXCompletionContext._ObjCInterface;
pub const CXCompletionContext_ObjCProtocol = enum_CXCompletionContext._ObjCProtocol;
pub const CXCompletionContext_ObjCCategory = enum_CXCompletionContext._ObjCCategory;
pub const CXCompletionContext_ObjCInstanceMessage = enum_CXCompletionContext._ObjCInstanceMessage;
pub const CXCompletionContext_ObjCClassMessage = enum_CXCompletionContext._ObjCClassMessage;
pub const CXCompletionContext_ObjCSelectorName = enum_CXCompletionContext._ObjCSelectorName;
pub const CXCompletionContext_MacroName = enum_CXCompletionContext._MacroName;
pub const CXCompletionContext_NaturalLanguage = enum_CXCompletionContext._NaturalLanguage;
pub const CXCompletionContext_IncludedFile = enum_CXCompletionContext._IncludedFile;
pub const CXCompletionContext_Unknown = enum_CXCompletionContext._Unknown;
pub const enum_CXCompletionContext = extern enum {
    _Unexposed = 0,
    _AnyType = 1,
    _AnyValue = 2,
    _ObjCObjectValue = 4,
    _ObjCSelectorValue = 8,
    _CXXClassTypeValue = 16,
    _DotMemberAccess = 32,
    _ArrowMemberAccess = 64,
    _ObjCPropertyAccess = 128,
    _EnumTag = 256,
    _UnionTag = 512,
    _StructTag = 1024,
    _ClassTag = 2048,
    _Namespace = 4096,
    _NestedNameSpecifier = 8192,
    _ObjCInterface = 16384,
    _ObjCProtocol = 32768,
    _ObjCCategory = 65536,
    _ObjCInstanceMessage = 131072,
    _ObjCClassMessage = 262144,
    _ObjCSelectorName = 524288,
    _MacroName = 1048576,
    _NaturalLanguage = 2097152,
    _IncludedFile = 4194304,
    _Unknown = 8388607,
};
pub extern fn clang_defaultCodeCompleteOptions() c_uint;
pub extern fn clang_codeCompleteAt(TU: CXTranslationUnit, complete_filename: [*c]const u8, complete_line: c_uint, complete_column: c_uint, unsaved_files: [*c]struct_CXUnsavedFile, num_unsaved_files: c_uint, options: c_uint) [*c]CXCodeCompleteResults;
pub extern fn clang_sortCodeCompletionResults(Results: [*c]CXCompletionResult, NumResults: c_uint) void;
pub extern fn clang_disposeCodeCompleteResults(Results: [*c]CXCodeCompleteResults) void;
pub extern fn clang_codeCompleteGetNumDiagnostics(Results: [*c]CXCodeCompleteResults) c_uint;
pub extern fn clang_codeCompleteGetDiagnostic(Results: [*c]CXCodeCompleteResults, Index: c_uint) CXDiagnostic;
pub extern fn clang_codeCompleteGetContexts(Results: [*c]CXCodeCompleteResults) c_ulonglong;
pub extern fn clang_codeCompleteGetContainerKind(Results: [*c]CXCodeCompleteResults, IsIncomplete: [*c]c_uint) enum_CXCursorKind;
pub extern fn clang_codeCompleteGetContainerUSR(Results: [*c]CXCodeCompleteResults) CXString;
pub extern fn clang_codeCompleteGetObjCSelector(Results: [*c]CXCodeCompleteResults) CXString;
pub extern fn clang_getClangVersion() CXString;
pub extern fn clang_toggleCrashRecovery(isEnabled: c_uint) void;
pub const CXInclusionVisitor = ?extern fn (CXFile, [*c]CXSourceLocation, c_uint, CXClientData) void;
pub extern fn clang_getInclusions(tu: CXTranslationUnit, visitor: CXInclusionVisitor, client_data: CXClientData) void;
pub const CXEval_Int = 1;
pub const CXEval_Float = 2;
pub const CXEval_ObjCStrLiteral = 3;
pub const CXEval_StrLiteral = 4;
pub const CXEval_CFStr = 5;
pub const CXEval_Other = 6;
pub const CXEval_UnExposed = 0;
pub const CXEvalResultKind = extern enum {
    CXEval_Int = 1,
    CXEval_Float = 2,
    CXEval_ObjCStrLiteral = 3,
    CXEval_StrLiteral = 4,
    CXEval_CFStr = 5,
    CXEval_Other = 6,
    CXEval_UnExposed = 0,
};
pub const CXEvalResult = ?*c_void;
pub extern fn clang_Cursor_Evaluate(C: CXCursor) CXEvalResult;
pub extern fn clang_EvalResult_getKind(E: CXEvalResult) CXEvalResultKind;
pub extern fn clang_EvalResult_getAsInt(E: CXEvalResult) c_int;
pub extern fn clang_EvalResult_getAsLongLong(E: CXEvalResult) c_longlong;
pub extern fn clang_EvalResult_isUnsignedInt(E: CXEvalResult) c_uint;
pub extern fn clang_EvalResult_getAsUnsigned(E: CXEvalResult) c_ulonglong;
pub extern fn clang_EvalResult_getAsDouble(E: CXEvalResult) f64;
pub extern fn clang_EvalResult_getAsStr(E: CXEvalResult) [*c]const u8;
pub extern fn clang_EvalResult_dispose(E: CXEvalResult) void;
pub const CXRemapping = ?*c_void;
pub extern fn clang_getRemappings(path: [*c]const u8) CXRemapping;
pub extern fn clang_getRemappingsFromFileList(filePaths: [*c]([*c]const u8), numFiles: c_uint) CXRemapping;
pub extern fn clang_remap_getNumFiles(arg0: CXRemapping) c_uint;
pub extern fn clang_remap_getFilenames(arg0: CXRemapping, index: c_uint, original: [*c]CXString, transformed: [*c]CXString) void;
pub extern fn clang_remap_dispose(arg0: CXRemapping) void;
pub const CXVisit_Break = enum_CXVisitorResult.CXVisit_Break;
pub const CXVisit_Continue = enum_CXVisitorResult.CXVisit_Continue;
pub const enum_CXVisitorResult = extern enum {
    CXVisit_Break,
    CXVisit_Continue,
};
pub const struct_CXCursorAndRangeVisitor = extern struct {
    context: ?*c_void,
    visit: ?extern fn (?*c_void, CXCursor, CXSourceRange) enum_CXVisitorResult,
};
pub const CXCursorAndRangeVisitor = struct_CXCursorAndRangeVisitor;
pub const CXResult_Success = 0;
pub const CXResult_Invalid = 1;
pub const CXResult_VisitBreak = 2;
pub const CXResult = extern enum {
    CXResult_Success = 0,
    CXResult_Invalid = 1,
    CXResult_VisitBreak = 2,
};
pub extern fn clang_findReferencesInFile(cursor: CXCursor, file: CXFile, visitor: CXCursorAndRangeVisitor) CXResult;
pub extern fn clang_findIncludesInFile(TU: CXTranslationUnit, file: CXFile, visitor: CXCursorAndRangeVisitor) CXResult;
pub const CXIdxClientFile = ?*c_void;
pub const CXIdxClientEntity = ?*c_void;
pub const CXIdxClientContainer = ?*c_void;
pub const CXIdxClientASTFile = ?*c_void;
pub const CXIdxLoc = extern struct {
    ptr_data: [2](?*c_void),
    int_data: c_uint,
};
pub const CXIdxIncludedFileInfo = extern struct {
    hashLoc: CXIdxLoc,
    filename: [*c]const u8,
    file: CXFile,
    isImport: c_int,
    isAngled: c_int,
    isModuleImport: c_int,
};
pub const CXIdxImportedASTFileInfo = extern struct {
    file: CXFile,
    module: CXModule,
    loc: CXIdxLoc,
    isImplicit: c_int,
};
pub const CXIdxEntity_Unexposed = 0;
pub const CXIdxEntity_Typedef = 1;
pub const CXIdxEntity_Function = 2;
pub const CXIdxEntity_Variable = 3;
pub const CXIdxEntity_Field = 4;
pub const CXIdxEntity_EnumConstant = 5;
pub const CXIdxEntity_ObjCClass = 6;
pub const CXIdxEntity_ObjCProtocol = 7;
pub const CXIdxEntity_ObjCCategory = 8;
pub const CXIdxEntity_ObjCInstanceMethod = 9;
pub const CXIdxEntity_ObjCClassMethod = 10;
pub const CXIdxEntity_ObjCProperty = 11;
pub const CXIdxEntity_ObjCIvar = 12;
pub const CXIdxEntity_Enum = 13;
pub const CXIdxEntity_Struct = 14;
pub const CXIdxEntity_Union = 15;
pub const CXIdxEntity_CXXClass = 16;
pub const CXIdxEntity_CXXNamespace = 17;
pub const CXIdxEntity_CXXNamespaceAlias = 18;
pub const CXIdxEntity_CXXStaticVariable = 19;
pub const CXIdxEntity_CXXStaticMethod = 20;
pub const CXIdxEntity_CXXInstanceMethod = 21;
pub const CXIdxEntity_CXXConstructor = 22;
pub const CXIdxEntity_CXXDestructor = 23;
pub const CXIdxEntity_CXXConversionFunction = 24;
pub const CXIdxEntity_CXXTypeAlias = 25;
pub const CXIdxEntity_CXXInterface = 26;
pub const CXIdxEntityKind = extern enum {
    CXIdxEntity_Unexposed = 0,
    CXIdxEntity_Typedef = 1,
    CXIdxEntity_Function = 2,
    CXIdxEntity_Variable = 3,
    CXIdxEntity_Field = 4,
    CXIdxEntity_EnumConstant = 5,
    CXIdxEntity_ObjCClass = 6,
    CXIdxEntity_ObjCProtocol = 7,
    CXIdxEntity_ObjCCategory = 8,
    CXIdxEntity_ObjCInstanceMethod = 9,
    CXIdxEntity_ObjCClassMethod = 10,
    CXIdxEntity_ObjCProperty = 11,
    CXIdxEntity_ObjCIvar = 12,
    CXIdxEntity_Enum = 13,
    CXIdxEntity_Struct = 14,
    CXIdxEntity_Union = 15,
    CXIdxEntity_CXXClass = 16,
    CXIdxEntity_CXXNamespace = 17,
    CXIdxEntity_CXXNamespaceAlias = 18,
    CXIdxEntity_CXXStaticVariable = 19,
    CXIdxEntity_CXXStaticMethod = 20,
    CXIdxEntity_CXXInstanceMethod = 21,
    CXIdxEntity_CXXConstructor = 22,
    CXIdxEntity_CXXDestructor = 23,
    CXIdxEntity_CXXConversionFunction = 24,
    CXIdxEntity_CXXTypeAlias = 25,
    CXIdxEntity_CXXInterface = 26,
};
pub const CXIdxEntityLang_None = 0;
pub const CXIdxEntityLang_C = 1;
pub const CXIdxEntityLang_ObjC = 2;
pub const CXIdxEntityLang_CXX = 3;
pub const CXIdxEntityLang_Swift = 4;
pub const CXIdxEntityLanguage = extern enum {
    CXIdxEntityLang_None = 0,
    CXIdxEntityLang_C = 1,
    CXIdxEntityLang_ObjC = 2,
    CXIdxEntityLang_CXX = 3,
    CXIdxEntityLang_Swift = 4,
};
pub const CXIdxEntity_NonTemplate = 0;
pub const CXIdxEntity_Template = 1;
pub const CXIdxEntity_TemplatePartialSpecialization = 2;
pub const CXIdxEntity_TemplateSpecialization = 3;
pub const CXIdxEntityCXXTemplateKind = extern enum {
    CXIdxEntity_NonTemplate = 0,
    CXIdxEntity_Template = 1,
    CXIdxEntity_TemplatePartialSpecialization = 2,
    CXIdxEntity_TemplateSpecialization = 3,
};
pub const CXIdxAttr_Unexposed = 0;
pub const CXIdxAttr_IBAction = 1;
pub const CXIdxAttr_IBOutlet = 2;
pub const CXIdxAttr_IBOutletCollection = 3;
pub const CXIdxAttrKind = extern enum {
    CXIdxAttr_Unexposed = 0,
    CXIdxAttr_IBAction = 1,
    CXIdxAttr_IBOutlet = 2,
    CXIdxAttr_IBOutletCollection = 3,
};
pub const CXIdxAttrInfo = extern struct {
    kind: CXIdxAttrKind,
    cursor: CXCursor,
    loc: CXIdxLoc,
};
pub const CXIdxEntityInfo = extern struct {
    kind: CXIdxEntityKind,
    templateKind: CXIdxEntityCXXTemplateKind,
    lang: CXIdxEntityLanguage,
    name: [*c]const u8,
    USR: [*c]const u8,
    cursor: CXCursor,
    attributes: [*c]const ([*c]const CXIdxAttrInfo),
    numAttributes: c_uint,
};
pub const CXIdxContainerInfo = extern struct {
    cursor: CXCursor,
};
pub const CXIdxIBOutletCollectionAttrInfo = extern struct {
    attrInfo: [*c]const CXIdxAttrInfo,
    objcClass: [*c]const CXIdxEntityInfo,
    classCursor: CXCursor,
    classLoc: CXIdxLoc,
};
pub const CXIdxDeclFlag_Skipped = 1;
pub const CXIdxDeclInfoFlags = extern enum {
    CXIdxDeclFlag_Skipped = 1,
};
pub const CXIdxDeclInfo = extern struct {
    entityInfo: [*c]const CXIdxEntityInfo,
    cursor: CXCursor,
    loc: CXIdxLoc,
    semanticContainer: [*c]const CXIdxContainerInfo,
    lexicalContainer: [*c]const CXIdxContainerInfo,
    isRedeclaration: c_int,
    isDefinition: c_int,
    isContainer: c_int,
    declAsContainer: [*c]const CXIdxContainerInfo,
    isImplicit: c_int,
    attributes: [*c]const ([*c]const CXIdxAttrInfo),
    numAttributes: c_uint,
    flags: c_uint,
};
pub const CXIdxObjCContainer_ForwardRef = 0;
pub const CXIdxObjCContainer_Interface = 1;
pub const CXIdxObjCContainer_Implementation = 2;
pub const CXIdxObjCContainerKind = extern enum {
    CXIdxObjCContainer_ForwardRef = 0,
    CXIdxObjCContainer_Interface = 1,
    CXIdxObjCContainer_Implementation = 2,
};
pub const CXIdxObjCContainerDeclInfo = extern struct {
    declInfo: [*c]const CXIdxDeclInfo,
    kind: CXIdxObjCContainerKind,
};
pub const CXIdxBaseClassInfo = extern struct {
    base: [*c]const CXIdxEntityInfo,
    cursor: CXCursor,
    loc: CXIdxLoc,
};
pub const CXIdxObjCProtocolRefInfo = extern struct {
    protocol: [*c]const CXIdxEntityInfo,
    cursor: CXCursor,
    loc: CXIdxLoc,
};
pub const CXIdxObjCProtocolRefListInfo = extern struct {
    protocols: [*c]const ([*c]const CXIdxObjCProtocolRefInfo),
    numProtocols: c_uint,
};
pub const CXIdxObjCInterfaceDeclInfo = extern struct {
    containerInfo: [*c]const CXIdxObjCContainerDeclInfo,
    superInfo: [*c]const CXIdxBaseClassInfo,
    protocols: [*c]const CXIdxObjCProtocolRefListInfo,
};
pub const CXIdxObjCCategoryDeclInfo = extern struct {
    containerInfo: [*c]const CXIdxObjCContainerDeclInfo,
    objcClass: [*c]const CXIdxEntityInfo,
    classCursor: CXCursor,
    classLoc: CXIdxLoc,
    protocols: [*c]const CXIdxObjCProtocolRefListInfo,
};
pub const CXIdxObjCPropertyDeclInfo = extern struct {
    declInfo: [*c]const CXIdxDeclInfo,
    getter: [*c]const CXIdxEntityInfo,
    setter: [*c]const CXIdxEntityInfo,
};
pub const CXIdxCXXClassDeclInfo = extern struct {
    declInfo: [*c]const CXIdxDeclInfo,
    bases: [*c]const ([*c]const CXIdxBaseClassInfo),
    numBases: c_uint,
};
pub const CXIdxEntityRef_Direct = 1;
pub const CXIdxEntityRef_Implicit = 2;
pub const CXIdxEntityRefKind = extern enum {
    CXIdxEntityRef_Direct = 1,
    CXIdxEntityRef_Implicit = 2,
};
pub const CXSymbolRole_None = 0;
pub const CXSymbolRole_Declaration = 1;
pub const CXSymbolRole_Definition = 2;
pub const CXSymbolRole_Reference = 4;
pub const CXSymbolRole_Read = 8;
pub const CXSymbolRole_Write = 16;
pub const CXSymbolRole_Call = 32;
pub const CXSymbolRole_Dynamic = 64;
pub const CXSymbolRole_AddressOf = 128;
pub const CXSymbolRole_Implicit = 256;
pub const CXSymbolRole = extern enum {
    CXSymbolRole_None = 0,
    CXSymbolRole_Declaration = 1,
    CXSymbolRole_Definition = 2,
    CXSymbolRole_Reference = 4,
    CXSymbolRole_Read = 8,
    CXSymbolRole_Write = 16,
    CXSymbolRole_Call = 32,
    CXSymbolRole_Dynamic = 64,
    CXSymbolRole_AddressOf = 128,
    CXSymbolRole_Implicit = 256,
};
pub const CXIdxEntityRefInfo = extern struct {
    kind: CXIdxEntityRefKind,
    cursor: CXCursor,
    loc: CXIdxLoc,
    referencedEntity: [*c]const CXIdxEntityInfo,
    parentEntity: [*c]const CXIdxEntityInfo,
    container: [*c]const CXIdxContainerInfo,
    role: CXSymbolRole,
};
pub const IndexerCallbacks = extern struct {
    abortQuery: ?extern fn (CXClientData, ?*c_void) c_int,
    diagnostic: ?extern fn (CXClientData, CXDiagnosticSet, ?*c_void) void,
    enteredMainFile: ?extern fn (CXClientData, CXFile, ?*c_void) CXIdxClientFile,
    ppIncludedFile: ?extern fn (CXClientData, [*c]const CXIdxIncludedFileInfo) CXIdxClientFile,
    importedASTFile: ?extern fn (CXClientData, [*c]const CXIdxImportedASTFileInfo) CXIdxClientASTFile,
    startedTranslationUnit: ?extern fn (CXClientData, ?*c_void) CXIdxClientContainer,
    indexDeclaration: ?extern fn (CXClientData, [*c]const CXIdxDeclInfo) void,
    indexEntityReference: ?extern fn (CXClientData, [*c]const CXIdxEntityRefInfo) void,
};
pub extern fn clang_index_isEntityObjCContainerKind(arg0: CXIdxEntityKind) c_int;
pub extern fn clang_index_getObjCContainerDeclInfo(arg0: [*c]const CXIdxDeclInfo) [*c]const CXIdxObjCContainerDeclInfo;
pub extern fn clang_index_getObjCInterfaceDeclInfo(arg0: [*c]const CXIdxDeclInfo) [*c]const CXIdxObjCInterfaceDeclInfo;
pub extern fn clang_index_getObjCCategoryDeclInfo(arg0: [*c]const CXIdxDeclInfo) [*c]const CXIdxObjCCategoryDeclInfo;
pub extern fn clang_index_getObjCProtocolRefListInfo(arg0: [*c]const CXIdxDeclInfo) [*c]const CXIdxObjCProtocolRefListInfo;
pub extern fn clang_index_getObjCPropertyDeclInfo(arg0: [*c]const CXIdxDeclInfo) [*c]const CXIdxObjCPropertyDeclInfo;
pub extern fn clang_index_getIBOutletCollectionAttrInfo(arg0: [*c]const CXIdxAttrInfo) [*c]const CXIdxIBOutletCollectionAttrInfo;
pub extern fn clang_index_getCXXClassDeclInfo(arg0: [*c]const CXIdxDeclInfo) [*c]const CXIdxCXXClassDeclInfo;
pub extern fn clang_index_getClientContainer(arg0: [*c]const CXIdxContainerInfo) CXIdxClientContainer;
pub extern fn clang_index_setClientContainer(arg0: [*c]const CXIdxContainerInfo, arg1: CXIdxClientContainer) void;
pub extern fn clang_index_getClientEntity(arg0: [*c]const CXIdxEntityInfo) CXIdxClientEntity;
pub extern fn clang_index_setClientEntity(arg0: [*c]const CXIdxEntityInfo, arg1: CXIdxClientEntity) void;
pub const CXIndexAction = ?*c_void;
pub extern fn clang_IndexAction_create(CIdx: CXIndex) CXIndexAction;
pub extern fn clang_IndexAction_dispose(arg0: CXIndexAction) void;
pub const CXIndexOpt_None = 0;
pub const CXIndexOpt_SuppressRedundantRefs = 1;
pub const CXIndexOpt_IndexFunctionLocalSymbols = 2;
pub const CXIndexOpt_IndexImplicitTemplateInstantiations = 4;
pub const CXIndexOpt_SuppressWarnings = 8;
pub const CXIndexOpt_SkipParsedBodiesInSession = 16;
pub const CXIndexOptFlags = extern enum {
    CXIndexOpt_None = 0,
    CXIndexOpt_SuppressRedundantRefs = 1,
    CXIndexOpt_IndexFunctionLocalSymbols = 2,
    CXIndexOpt_IndexImplicitTemplateInstantiations = 4,
    CXIndexOpt_SuppressWarnings = 8,
    CXIndexOpt_SkipParsedBodiesInSession = 16,
};
pub extern fn clang_indexSourceFile(arg0: CXIndexAction, client_data: CXClientData, index_callbacks: [*c]IndexerCallbacks, index_callbacks_size: c_uint, index_options: c_uint, source_filename: [*c]const u8, command_line_args: [*c]const ([*c]const u8), num_command_line_args: c_int, unsaved_files: [*c]struct_CXUnsavedFile, num_unsaved_files: c_uint, out_TU: [*c]CXTranslationUnit, TU_options: c_uint) c_int;
pub extern fn clang_indexSourceFileFullArgv(arg0: CXIndexAction, client_data: CXClientData, index_callbacks: [*c]IndexerCallbacks, index_callbacks_size: c_uint, index_options: c_uint, source_filename: [*c]const u8, command_line_args: [*c]const ([*c]const u8), num_command_line_args: c_int, unsaved_files: [*c]struct_CXUnsavedFile, num_unsaved_files: c_uint, out_TU: [*c]CXTranslationUnit, TU_options: c_uint) c_int;
pub extern fn clang_indexTranslationUnit(arg0: CXIndexAction, client_data: CXClientData, index_callbacks: [*c]IndexerCallbacks, index_callbacks_size: c_uint, index_options: c_uint, arg5: CXTranslationUnit) c_int;
pub extern fn clang_indexLoc_getFileLocation(loc: CXIdxLoc, indexFile: [*c]CXIdxClientFile, file: [*c]CXFile, line: [*c]c_uint, column: [*c]c_uint, offset: [*c]c_uint) void;
pub extern fn clang_indexLoc_getCXSourceLocation(loc: CXIdxLoc) CXSourceLocation;
pub const CXFieldVisitor = ?extern fn (CXCursor, CXClientData) enum_CXVisitorResult;
pub extern fn clang_Type_visitFields(T: CXType, visitor: CXFieldVisitor, client_data: CXClientData) c_uint;
pub const __precond = expr;
pub const __FLT16_MAX_EXP__ = 15;
pub const __BIGGEST_ALIGNMENT__ = 16;
pub const __SIZEOF_FLOAT__ = 4;
pub const __INT64_FMTd__ = c"lld";
pub const __STDC_VERSION__ = c_long(201112);
pub const __requires_lock_held = lock;
pub const __INT_LEAST32_FMTi__ = c"i";
pub const __INT_LEAST8_FMTi__ = c"hhi";
pub const __function_ignore_lock_checking = lock;
pub const __LDBL_EPSILON__ = 0.000000;
pub const __LZCNT__ = 1;
pub const __INT_LEAST32_FMTd__ = c"d";
pub const __STDC_UTF_32__ = 1;
pub const __INVPCID__ = 1;
pub const __SIG_ATOMIC_WIDTH__ = 32;
pub const __postcond = expr;
pub const __UINT_FAST64_FMTX__ = c"llX";
pub const __clang_version__ = c"8.0.0 (tags/RELEASE_800/rc5)";
pub const _Maybevalid_ = _Maybevalid_impl_;
pub const __UINT_LEAST8_FMTo__ = c"hho";
pub const __SIZEOF_DOUBLE__ = 8;
pub const __INTMAX_FMTd__ = c"lld";
pub const CINDEX_VERSION_MAJOR = 0;
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __INT_LEAST16_FMTi__ = c"hi";
pub const _Deref2_ret1_impl_ = p1;
pub const __FMA__ = 1;
pub const __MMX__ = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = 1;
pub const CINDEX_VERSION_MINOR = 50;
pub const __SIZE_FMTX__ = c"llX";
pub const _Requires_lock_held_ = lock;
pub const __inner_data_entrypoint = category;
pub const __byte_readableTo = size;
pub const __WCHAR_WIDTH__ = 16;
pub const __FSGSBASE__ = 1;
pub const __requires_lock_not_held = lock;
pub const _Deref_post1_impl_ = p1;
pub const __PTRDIFF_FMTd__ = c"lld";
pub const __DBL_MIN_EXP__ = -1021;
pub const __declare_lock_level = level;
pub const __FLT_EVAL_METHOD__ = 0;
pub const __SSE_MATH__ = 1;
pub const _Readable_bytes_impl_ = size;
pub const _Releases_lock_ = lock;
pub const __UINT_FAST8_FMTo__ = c"hho";
pub const __UINT_LEAST64_MAX__ = c_ulonglong(18446744073709551615);
pub const _Requires_exclusive_lock_held_ = lock;
pub const __UINT_LEAST64_FMTx__ = c"llx";
pub const __INT8_MAX__ = 127;
pub const __override = __inner_override;
pub const __DBL_HAS_DENORM__ = 1;
pub const __FLT16_HAS_QUIET_NAN__ = 1;
pub const __ATOMIC_RELAXED = 0;
pub const __DBL_DECIMAL_DIG__ = 17;
pub const __SIZEOF_SHORT__ = 2;
pub const __UINT_FAST16_MAX__ = 65535;
pub const __UINT16_FMTX__ = c"hX";
pub const __write_guarded_by = lock;
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __SSSE3__ = 1;
pub const __CONSTANT_CFSTRINGS__ = 1;
pub const __AVX2__ = 1;
pub const __WINT_MAX__ = 65535;
pub const __LDBL_MAX_EXP__ = 1024;
pub const _Analysis_assume_nullterminated_ = x;
pub const __NO_MATH_INLINES = 1;
pub const _WIN64 = 1;
pub const __LONG_MAX__ = c_long(2147483647);
pub const __STDC_HOSTED__ = 1;
pub const __pic__ = 2;
pub const __acquires_lock = lock;
pub const __INT_FAST16_FMTi__ = c"hi";
pub const __PTRDIFF_WIDTH__ = 64;
pub const __INT_LEAST32_TYPE__ = int;
pub const __SCHAR_MAX__ = 127;
pub const _Function_ignore_lock_checking_ = lock;
pub const _HAS_EXCEPTIONS = 1;
pub const __LDBL_DENORM_MIN__ = 0.000000;
pub const __FLT16_MIN_EXP__ = -14;
pub const _Releases_shared_lock_ = lock;
pub const __INT64_C_SUFFIX__ = LL;
pub const _Analysis_suppress_lock_checking_ = lock;
pub const __LDBL_MANT_DIG__ = 53;
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES = 0;
pub const CLK_TCK = CLOCKS_PER_SEC;
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub const __UINT64_FMTX__ = c"llX";
pub const _Releases_exclusive_lock_ = lock;
pub const _Analysis_assume_lock_acquired_ = lock;
pub const __UINT64_MAX__ = c_ulonglong(18446744073709551615);
pub const __DBL_MANT_DIG__ = 53;
pub const __FLT_DECIMAL_DIG__ = 9;
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const __DBL_DIG__ = 15;
pub const __ATOMIC_ACQUIRE = 2;
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const __inexpressible_writableTo = size;
pub const __FLT16_HAS_DENORM__ = 1;
pub const _Acquires_nonreentrant_lock_ = lock;
pub const __requires_exclusive_lock_held = lock;
pub const __UINT_FAST16_FMTu__ = c"hu";
pub const __INTPTR_FMTi__ = c"lli";
pub const __UINT_FAST8_FMTX__ = c"hhX";
pub const __LITTLE_ENDIAN__ = 1;
pub const __inner_typefix = ctype;
pub const __SSE__ = 1;
pub const __FLT_HAS_QUIET_NAN__ = 1;
pub const __SIZEOF_SIZE_T__ = 8;
pub const __UINT_LEAST16_FMTo__ = c"ho";
pub const __UINT8_FMTo__ = c"hho";
pub const _MSC_FULL_VER = 191526729;
pub const __UINT_LEAST16_FMTx__ = c"hx";
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __RETURN_POLICY_DST = _FunctionCall;
pub const __UINT_FAST16_FMTX__ = c"hX";
pub const __UINT_FAST32_FMTx__ = c"x";
pub const __VERSION__ = c"4.2.1 Compatible Clang 8.0.0 (tags/RELEASE_800/rc5)";
pub const __UINTPTR_MAX__ = c_ulonglong(18446744073709551615);
pub const __UINT_FAST8_FMTu__ = c"hhu";
pub const __UINT_LEAST8_FMTu__ = c"hhu";
pub const __UINT_LEAST64_FMTo__ = c"llo";
pub const _Post_satisfies_impl_ = expr;
pub const __fallthrough = __inner_fallthrough;
pub const __UINT_LEAST8_MAX__ = 255;
pub const _Deref_ret1_impl_ = p1;
pub const _Pre_satisfies_impl_ = expr;
pub const __RDRND__ = 1;
pub const __SIZEOF_WCHAR_T__ = 2;
pub const __MOVBE__ = 1;
pub const __LDBL_MAX__ = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878;
pub const __UINT16_MAX__ = 65535;
pub const __x86_64 = 1;
pub const __code_model_small_ = 1;
pub const __SIZEOF_WINT_T__ = 2;
pub const __UINTMAX_FMTo__ = c"llo";
pub const __FLT_DIG__ = 6;
pub const __UINT_LEAST8_FMTX__ = c"hhX";
pub const __INT16_MAX__ = 32767;
pub const __CLRCALL_OR_CDECL = __cdecl;
pub const __WINT_UNSIGNED__ = 1;
pub const __FLT_MAX_10_EXP__ = 38;
pub const __UINTPTR_FMTX__ = c"llX";
pub const __UINT_LEAST16_FMTu__ = c"hu";
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __WINT_WIDTH__ = 16;
pub const _MSC_EXTENSIONS = 1;
pub const __F16C__ = 1;
pub const _CRT_PACKING = 8;
pub const _Create_lock_level_ = level;
pub const __SHRT_MAX__ = 32767;
pub const _M_AMD64 = 100;
pub const __POINTER_WIDTH__ = 64;
pub const _Releases_nonreentrant_lock_ = lock;
pub const __PTRDIFF_MAX__ = c_longlong(9223372036854775807);
pub const __tune_corei7__ = 1;
pub const __FLT16_DIG__ = 3;
pub const __INT32_FMTd__ = c"d";
pub const __DBL_MIN__ = 0.000000;
pub const __SIZEOF_LONG__ = 4;
pub const _WIN32 = 1;
pub const _Acquires_shared_lock_ = lock;
pub const __INTPTR_WIDTH__ = 64;
pub const __FLT16_MAX_10_EXP__ = 4;
pub const _CRT_BUILD_DESKTOP_APP = 1;
pub const __crt_typefix = ctype;
pub const __INT_FAST32_TYPE__ = int;
pub const _CRT_INT_MAX = 2147483647;
pub const _Deref_pre1_impl_ = p1;
pub const __guarded_by = lock;
pub const _Post1_impl_ = p1;
pub const __NO_INLINE__ = 1;
pub const __UINT_FAST32_FMTX__ = c"X";
pub const __INT_FAST32_MAX__ = 2147483647;
pub const __corei7__ = 1;
pub const __UINTMAX_FMTu__ = c"llu";
pub const __BMI__ = 1;
pub const __FLT_RADIX__ = 2;
pub const _Group_impl_ = annos;
pub const __FLT16_HAS_INFINITY__ = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const __FLT16_DECIMAL_DIG__ = 5;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const __INT_FAST8_FMTd__ = c"hhd";
pub const __INT32_TYPE__ = int;
pub const _Satisfies_impl_ = expr;
pub const _ARGMAX = 100;
pub const __UINTMAX_WIDTH__ = 64;
pub const __FLT_MIN__ = 0.000000;
pub const __INT64_FMTi__ = c"lli";
pub const __UINT_FAST64_FMTu__ = c"llu";
pub const __INT8_FMTd__ = c"hhd";
pub const __readableTo = extent;
pub const _ARM_WINAPI_PARTITION_DESKTOP_SDK_AVAILABLE = 0;
pub const __INT_FAST16_TYPE__ = short;
pub const _Requires_shared_lock_held_ = lock;
pub const __FLT_MAX_EXP__ = 128;
pub const __XSAVE__ = 1;
pub const __useHeader = _Use_decl_anno_impl_;
pub const _SAL_nop_impl_ = X;
pub const __releases_shared_lock = lock;
pub const __DBL_MAX_10_EXP__ = 308;
pub const __LDBL_MIN__ = 0.000000;
pub const __INT_FAST64_FMTi__ = c"lli";
pub const _CRT_SIZE_MAX = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(size_t, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(size_t, -1) else size_t(-1);
pub const __INT_LEAST8_FMTd__ = c"hhd";
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __UINT_LEAST32_FMTX__ = c"X";
pub const __PIC__ = 2;
pub const __GOT_SECURE_LIB__ = __STDC_SECURE_LIB__;
pub const _MSC_BUILD = 1;
pub const __UINTMAX_MAX__ = c_ulonglong(18446744073709551615);
pub const __UINT_FAST16_FMTo__ = c"ho";
pub const _SAL_VERSION = 20;
pub const __LDBL_DECIMAL_DIG__ = 17;
pub const __CRTDECL = __CLRCALL_PURE_OR_CDECL;
pub const __UINT_LEAST64_FMTX__ = c"llX";
pub const __clang_minor__ = 0;
pub const _Acquires_lock_ = lock;
pub const __STDC_WANT_SECURE_LIB__ = 1;
pub const __has_lock_level = level;
pub const __UINT_FAST64_FMTo__ = c"llo";
pub const __SIZE_FMTx__ = c"llx";
pub const __DBL_MAX__ = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878;
pub const __DBL_EPSILON__ = 0.000000;
pub const __UINT64_FMTx__ = c"llx";
pub const __inner_blocksOn = resource;
pub const _MSC_VER = 1915;
pub const _Always_impl_ = annos;
pub const _USE_ATTRIBUTES_FOR_SAL = 0;
pub const __CHAR_BIT__ = 8;
pub const __INT16_FMTi__ = c"hi";
pub const _DEBUG = 1;
pub const __callback = __inner_callback;
pub const __UINT_FAST32_MAX__ = c_uint(4294967295);
pub const __analysis_assume = expr;
pub const __UINT8_FMTX__ = c"hhX";
pub const __FLT_EPSILON__ = 0.000000;
pub const __UINTPTR_WIDTH__ = 64;
pub const __byte_writableTo = size;
pub const _Guarded_by_ = lock;
pub const __llvm__ = 1;
pub const __UINT_FAST64_MAX__ = c_ulonglong(18446744073709551615);
pub const __INT_FAST32_FMTi__ = c"i";
pub const CLOCKS_PER_SEC = if (@typeId(@typeOf(1000)) == @import("builtin").TypeId.Pointer) @ptrCast(clock_t, 1000) else if (@typeId(@typeOf(1000)) == @import("builtin").TypeId.Int) @intToPtr(clock_t, 1000) else clock_t(1000);
pub const _UNALIGNED = __unaligned;
pub const _Has_lock_kind_ = kind;
pub const __FLT_HAS_INFINITY__ = 1;
pub const __RETURN_POLICY_SAME = _FunctionCall;
pub const __AES__ = 1;
pub const NULL = if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Pointer) @ptrCast([*c]void, 0) else if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Int) @intToPtr([*c]void, 0) else ([*c]void)(0);
pub const __UINT8_FMTx__ = c"hhx";
pub const __INTMAX_C_SUFFIX__ = LL;
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const _Post_ = _Post_impl_;
pub const __INT16_FMTd__ = c"hd";
pub const _Write_guarded_by_ = lock;
pub const __UINT32_FMTX__ = c"X";
pub const __releases_exclusive_lock = lock;
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const __UINT32_C_SUFFIX__ = U;
pub const __INT32_MAX__ = 2147483647;
pub const __INTMAX_WIDTH__ = 64;
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const _Writable_bytes_impl_ = size;
pub const __RETURN_POLICY_VOID = _FunctionCall;
pub const __SIZE_FMTo__ = c"llo";
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const __INT_FAST8_FMTi__ = c"hhi";
pub const __UINT_LEAST32_FMTo__ = c"o";
pub const __STDC_UTF_16__ = 1;
pub const __inner_control_entrypoint = category;
pub const __UINT_LEAST32_MAX__ = c_uint(4294967295);
pub const __ATOMIC_RELEASE = 3;
pub const __UINT_FAST16_FMTx__ = c"hx";
pub const __UINTMAX_C_SUFFIX__ = ULL;
pub const __FLT_MIN_EXP__ = -125;
pub const __SIZEOF_LONG_DOUBLE__ = 8;
pub const __UINT_LEAST64_FMTu__ = c"llu";
pub const _ACRTIMP_ALT = _ACRTIMP;
pub const __acquires_shared_lock = lock;
pub const __ORDER_PDP_ENDIAN__ = 3412;
pub const __elem_writableTo = size;
pub const __INT_FAST64_FMTd__ = c"lld";
pub const _On_failure_impl_ = annos;
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const __acquires_exclusive_lock = lock;
pub const __INT16_TYPE__ = short;
pub const _INTEGRAL_MAX_BITS = 64;
pub const __SSE2_MATH__ = 1;
pub const __FLT_MANT_DIG__ = 24;
pub const __requires_shared_lock_held = lock;
pub const __UINT_FAST64_FMTx__ = c"llx";
pub const __INT_FAST8_MAX__ = 127;
pub const __INTPTR_FMTd__ = c"lld";
pub const __SIZE_WIDTH__ = 64;
pub const __UINT_LEAST8_FMTx__ = c"hhx";
pub const __INT_LEAST64_FMTi__ = c"lli";
pub const __SSE4_2__ = 1;
pub const __AVX__ = 1;
pub const __INT_FAST16_MAX__ = 32767;
pub const __INTPTR_MAX__ = c_longlong(9223372036854775807);
pub const _Notref_ = _Notref_impl_;
pub const _Pre1_impl_ = p1;
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __UINT64_FMTu__ = c"llu";
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __SSE2__ = 1;
pub const __INT_MAX__ = 2147483647;
pub const __INTMAX_FMTi__ = c"lli";
pub const __DBL_DENORM_MIN__ = 0.000000;
pub const __FLT16_MANT_DIG__ = 11;
pub const __clang_major__ = 8;
pub const __UINT32_MAX__ = c_uint(4294967295);
pub const _SA_annotes0 = n;
pub const __analysis_suppress_lock_checking = lock;
pub const _CRT_INSECURE_DEPRECATE_MEMORY = _Replacement;
pub const __FLT_DENORM_MIN__ = 0.000000;
pub const __DBL_MAX_EXP__ = 1024;
pub const __INT8_FMTi__ = c"hhi";
pub const __UINT_LEAST16_MAX__ = 65535;
pub const __LDBL_HAS_DENORM__ = 1;
pub const __CLRCALL_PURE_OR_CDECL = __cdecl;
pub const __FLT16_MIN_10_EXP__ = -13;
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const __UINT_FAST8_MAX__ = 255;
pub const __SAL_H_VERSION = 180000000;
pub const __DBL_MIN_10_EXP__ = -307;
pub const __UINT8_FMTu__ = c"hhu";
pub const __INT_FAST64_MAX__ = c_longlong(9223372036854775807);
pub const __SSE3__ = 1;
pub const __UINT16_FMTu__ = c"hu";
pub const _Deref2_pre1_impl_ = p1;
pub const __ATOMIC_SEQ_CST = 5;
pub const __SIZE_FMTu__ = c"llu";
pub const __LDBL_MIN_EXP__ = -1021;
pub const __UINT_FAST32_FMTu__ = c"u";
pub const __analysis_assume_lock_released = lock;
pub const __clang_patchlevel__ = 0;
pub const __has_lock_property = kind;
pub const __STDC_SECURE_LIB__ = c_long(200411);
pub const __SIZEOF_LONG_LONG__ = 8;
pub const __BMI2__ = 1;
pub const _Use_decl_annotations_ = _Use_decl_anno_impl_;
pub const __PCLMUL__ = 1;
pub const __FXSR__ = 1;
pub const _Readable_elements_impl_ = size;
pub const _Analysis_assume_lock_not_held_ = lock;
pub const __UINT8_MAX__ = 255;
pub const __WCHAR_UNSIGNED__ = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub const __UINT32_FMTx__ = c"x";
pub const __UINT16_FMTo__ = c"ho";
pub const __POPCNT__ = 1;
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const __UINT32_FMTu__ = c"u";
pub const _Acquires_exclusive_lock_ = lock;
pub const _Notvalid_ = _Notvalid_impl_;
pub const __SIZEOF_POINTER__ = 8;
pub const __elem_readableTo = size;
pub const __SIZE_MAX__ = c_ulonglong(18446744073709551615);
pub const __writableTo = size;
pub const __INT_FAST16_FMTd__ = c"hd";
pub const __UINT_LEAST32_FMTu__ = c"u";
pub const _Pre_ = _Pre_impl_;
pub const __FLT_MAX__ = 340282346999999984391321947108527833088.000000;
pub const __corei7 = 1;
pub const __ATOMIC_CONSUME = 1;
pub const _SECURECRT_FILL_BUFFER_PATTERN = 254;
pub const __x86_64__ = 1;
pub const __LDBL_HAS_INFINITY__ = 1;
pub const __UINTMAX_FMTx__ = c"llx";
pub const __UINT64_C_SUFFIX__ = ULL;
pub const __INT_LEAST16_MAX__ = 32767;
pub const __FLT_MIN_10_EXP__ = -37;
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY = 0;
pub const _Analysis_assume_lock_released_ = lock;
pub const __UINT32_FMTo__ = c"o";
pub const __UINTPTR_FMTo__ = c"llo";
pub const __INT_LEAST16_FMTd__ = c"hd";
pub const __UINTPTR_FMTx__ = c"llx";
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const __INT_LEAST64_FMTd__ = c"lld";
pub const __INT_LEAST16_TYPE__ = short;
pub const _GrouP_impl_ = annos;
pub const _USE_DECLSPECS_FOR_SAL = 0;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __LDBL_MIN_10_EXP__ = -307;
pub const __INT_LEAST8_MAX__ = 127;
pub const __SIZEOF_INT__ = 4;
pub const _Valid_ = _Valid_impl_;
pub const _Success_impl_ = expr;
pub const _Writable_elements_impl_ = size;
pub const __amd64 = 1;
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const TIME_UTC = 1;
pub const __LDBL_MAX_10_EXP__ = 308;
pub const __SIZEOF_INT128__ = 16;
pub const __UINT_FAST8_FMTx__ = c"hhx";
pub const __inexpressible_readableTo = size;
pub const __UINT16_FMTx__ = c"hx";
pub const __UINTPTR_FMTu__ = c"llu";
pub const __UINT_LEAST16_FMTX__ = c"hX";
pub const _Requires_lock_not_held_ = lock;
pub const __amd64__ = 1;
pub const _Analysis_assume_lock_held_ = lock;
pub const __UINT_FAST32_FMTo__ = c"o";
pub const __clang__ = 1;
pub const __ANNOTATION = fun;
pub const __PTRDIFF_FMTi__ = c"lli";
pub const __SSE4_1__ = 1;
pub const __LDBL_DIG__ = 15;
pub const __XSAVEOPT__ = 1;
pub const __UINT64_FMTo__ = c"llo";
pub const __INT_FAST32_FMTd__ = c"d";
pub const _TRUNCATE = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(size_t, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(size_t, -1) else size_t(-1);
pub const __ATOMIC_ACQ_REL = 4;
pub const _WConst_return = _CONST_RETURN;
pub const _Has_lock_level_ = level;
pub const _Ret1_impl_ = p1;
pub const __LONG_LONG_MAX__ = c_longlong(9223372036854775807);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY = 0;
pub const _CRT_FUNCTIONS_REQUIRED = 1;
pub const __INTMAX_MAX__ = c_longlong(9223372036854775807);
pub const __UINT_LEAST32_FMTx__ = c"x";
pub const __WCHAR_MAX__ = 65535;
pub const __INT64_MAX__ = c_longlong(9223372036854775807);
pub const __releases_lock = lock;
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __INT_LEAST64_MAX__ = c_longlong(9223372036854775807);
pub const __UINTMAX_FMTX__ = c"llX";
pub const _M_X64 = 100;
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const __FLT_HAS_DENORM__ = 1;
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const _Deref2_post1_impl_ = p1;
pub const __analysis_assume_lock_acquired = lock;
pub const __INT32_FMTi__ = c"i";
pub const __DBL_HAS_INFINITY__ = 1;
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT = 0;
pub const _Analysis_assume_ = expr;
pub const __FINITE_MATH_ONLY__ = 0;
pub const __crt_locale_data = struct___crt_locale_data;
pub const __crt_multibyte_data = struct___crt_multibyte_data;
pub const tm = struct_tm;
pub const _timespec32 = struct__timespec32;
pub const _timespec64 = struct__timespec64;
pub const timespec = struct_timespec;
pub const CXErrorCode = enum_CXErrorCode;
pub const CXVirtualFileOverlayImpl = struct_CXVirtualFileOverlayImpl;
pub const CXModuleMapDescriptorImpl = struct_CXModuleMapDescriptorImpl;
pub const CXTargetInfoImpl = struct_CXTargetInfoImpl;
pub const CXTranslationUnitImpl = struct_CXTranslationUnitImpl;
pub const CXUnsavedFile = struct_CXUnsavedFile;
pub const CXAvailabilityKind = enum_CXAvailabilityKind;
pub const CXCursor_ExceptionSpecificationKind = enum_CXCursor_ExceptionSpecificationKind;
pub const CXDiagnosticSeverity = enum_CXDiagnosticSeverity;
pub const CXLoadDiag_Error = enum_CXLoadDiag_Error;
pub const CXDiagnosticDisplayOptions = enum_CXDiagnosticDisplayOptions;
pub const CXTranslationUnit_Flags = enum_CXTranslationUnit_Flags;
pub const CXSaveTranslationUnit_Flags = enum_CXSaveTranslationUnit_Flags;
pub const CXSaveError = enum_CXSaveError;
pub const CXReparse_Flags = enum_CXReparse_Flags;
pub const CXTUResourceUsageKind = enum_CXTUResourceUsageKind;
pub const CXCursorKind = enum_CXCursorKind;
pub const CXLinkageKind = enum_CXLinkageKind;
pub const CXVisibilityKind = enum_CXVisibilityKind;
pub const CXLanguageKind = enum_CXLanguageKind;
pub const CXTLSKind = enum_CXTLSKind;
pub const CXCursorSetImpl = struct_CXCursorSetImpl;
pub const CXTypeKind = enum_CXTypeKind;
pub const CXCallingConv = enum_CXCallingConv;
pub const CXTemplateArgumentKind = enum_CXTemplateArgumentKind;
pub const CXTypeNullabilityKind = enum_CXTypeNullabilityKind;
pub const CXTypeLayoutError = enum_CXTypeLayoutError;
pub const CXRefQualifierKind = enum_CXRefQualifierKind;
pub const CX_CXXAccessSpecifier = enum_CX_CXXAccessSpecifier;
pub const CX_StorageClass = enum_CX_StorageClass;
pub const CXChildVisitResult = enum_CXChildVisitResult;
pub const CXPrintingPolicyProperty = enum_CXPrintingPolicyProperty;
pub const CXNameRefFlags = enum_CXNameRefFlags;
pub const CXCompletionChunkKind = enum_CXCompletionChunkKind;
pub const CXCodeComplete_Flags = enum_CXCodeComplete_Flags;
pub const CXCompletionContext = enum_CXCompletionContext;
pub const CXVisitorResult = enum_CXVisitorResult;

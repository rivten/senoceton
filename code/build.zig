const Builder = @import("std").build.Builder;
const builtin = @import("builtin");

const build_root = "../build/";

pub fn build(b: *Builder) void {
    b.build_root = build_root;
    b.verbose_cimport = false;
    //b.release_mode = builtin.Mode.ReleaseFast;
    b.release_mode = builtin.Mode.Debug;
    const mode = b.standardReleaseOptions();

    var exe = b.addExecutable("senoceton", "../code/senoceton.zig");
    exe.setBuildMode(mode);
    exe.setOutputDir(build_root);

    if (builtin.os == builtin.Os.windows) {
        b.addNativeSystemLibPath("C:/Program Files/LLVM/lib");
        b.addNativeSystemIncludeDir("C:/Program Files/LLVM/include");
        exe.linkSystemLibrary("libclang.lib");
    } else if (builtin.os == builtin.Os.linux) {
        exe.linkSystemLibrary("libClang");
    } else {
        unreachable;
    }
    exe.linkSystemLibrary("c");

    b.default_step.dependOn(&exe.step);
}

const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const detours = b.addModule("detours", .{
        .root_source_file = b.path("src/detours.zig"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    detours.addLibraryPath(.{ .cwd_relative = "libs" });
}

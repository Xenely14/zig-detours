const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const detours = b.addModule("detours", .{
        .root_source_file = .{ .path = "src/detours.zig" },
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    detours.addLibraryPath(.{ .path = "libs" });
}

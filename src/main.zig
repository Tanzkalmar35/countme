//! By convention, main.zig is where your main function lives in the case that
//! you are building an executable. If you are making a library, the convention
//! is to delete this file and start with root.zig instead.
const std = @import("std");
const fs = std.fs;

pub fn main() !void {
    const cwd = fs.cwd();
    var file = try cwd.openFile("../data/tasks.csv", .{ .mode = .write_only });

    defer file.close();

    try file.writeAll("This is an example entry!!!");
}

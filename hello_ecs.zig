const std = @import("std");
const print = std.debug.print;
const ArrayList = std.ArrayList;
const my_allocator = std.testing.allocator;

pub fn main() !void {
    var my_array_list = ArrayList(u8).init( my_allocator);

    try my_array_list.append(5);

    var allocated_things = my_array_list.allocatedSlice();

    print("{d}", .{allocated_things[0]});
}
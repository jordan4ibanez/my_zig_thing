const std = @import("std");
const print = std.debug.print;


pub const MyClass = struct {
    my_value: i32,

    pub fn new() MyClass {
        return MyClass {
            .my_value = 0,
        };
    }

    pub fn add(self: *MyClass, value: i32) void {
        self.my_value += value;
    }

    pub fn debug(self: MyClass) void {
        print("my_value is: {d}", .{self.my_value});
    }

};



pub fn main() !void {    
    
    var classy = MyClass.new();

    classy.add(5);

    classy.add(10);

    classy.debug();


}
const std = @import("std");
const print = std.debug.print;
const ArrayList = std.ArrayList;
const StringHashMap   = std.StringHashMap;
const my_allocator = std.testing.allocator;


// Entity Component System Structure
pub const ECS = struct {
    components: StringHashMap(ArrayList(u16)),
    entity_count: u32,

    pub fn new() ECS {
        return ECS {
            .components = StringHashMap(ArrayList(u16)).init(my_allocator),
            .entity_count = 0
        };
    }

    pub fn add_component(self: *ECS, component: []const u8) void {
        try 
            self.components.getOrPut(component)
        
        catch return;
    }

    pub fn get_component(self: ECS) bool {
        return self.entity_count > 5;
    }

    pub fn exists(self: ECS) bool {
        return self.entity_count > 5;
    }
};

pub fn main() !void {

    var my_ecs = ECS.new();

    // test putting in bloop
    const testing = my_ecs.add_component("bloop");

    
    print("it wurk: {}", .{testing});

    //my_ecs.get_component();

    //var my_array_list = ArrayList(u8).init( my_allocator);

    //try my_array_list.append(5);

    //var allocated_things = my_array_list.allocatedSlice();

    //print("{d}", .{allocated_things[0]});
}
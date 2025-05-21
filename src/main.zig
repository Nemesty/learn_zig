const std = @import("std");

pub fn main() void {
    // ### Variables et assignement ###
    std.debug.print("⚡ Variable et assignement ⚡\n", .{});
    const pi = 3.14;
    var age: u8 = 33;
    age += 1;
    std.debug.print("La valeur de PI est de {d}\n", .{pi});
    std.debug.print("Tu as {d} ans !\n", .{age});
}

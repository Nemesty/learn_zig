const std = @import("std");

pub fn main() void {
    // --- Variables et constantes ---
    std.debug.print("\n⚡ Variable et constantes ⚡\n", .{});
    const pi = 3.14;
    var age: u8 = undefined;
    age = 33;
    age += 1;
    std.debug.print("La valeur de PI est de {d}\n", .{pi});
    std.debug.print("Tu as {d} ans !\n", .{age});

    // --- Tableaux ---
    std.debug.print("\n⚡ Tableaux ⚡\n", .{});
    const hey = [3]u8{ 'H', 'e', 'y' };
    const google = [_]u8{ 'G', 'o', 'o', 'g', 'l', 'e' };
    std.debug.print("La première lettre du tableau hey est : {c}\n", .{hey[0]});
    std.debug.print("La longueur du tableau google est : {d}", .{google.len});
}

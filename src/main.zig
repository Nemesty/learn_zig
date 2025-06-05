const std = @import("std");

pub fn main() void {
    {
        // --- Variables et constantes ---
        std.debug.print("\n⚡ Variable et constantes ⚡\n", .{});
        const pi = 3.14;
        var age: u8 = undefined;
        age = 33;
        age += 1;
        std.debug.print("La valeur de PI est de {d}\n", .{pi});
        std.debug.print("Tu as {d} ans !\n", .{age});
    }

    {
        // --- Tableaux ---
        std.debug.print("\n⚡ Tableaux ⚡\n", .{});
        const hey = [3]u8{ 'H', 'e', 'y' };
        const google = [_]u8{ 'G', 'o', 'o', 'g', 'l', 'e' };
        std.debug.print("La première lettre du tableau hey est : {c}\n", .{hey[0]});
        std.debug.print("La longueur du tableau google est : {d}\n", .{google.len});
    }

    {
        // --- Conditions ---
        std.debug.print("\n⚡ Conditions ⚡\n", .{});
        var age: i8 = -2;
        age += 1;
        if ((age < 18 and age > 0) or age > 60) {
            std.debug.print("Vous avez {d} ans, vous ne pouvez donc pas entrer.\n", .{age});
        } else if (age >= 18 and age <= 60) {
            std.debug.print("Vous avez {d} ans, vous pouvez donc entrer !", .{age});
        } else {
            std.debug.print("❌ ERREUR ❌ Vous n'êtes pas né !!!\n", .{});
        }
        const fullLife = true;
        var lifeBar: u8 = 0;
        lifeBar += if (fullLife) 100 else 50;
        std.debug.print("Vous avez {d}% de votre santé.\n", .{lifeBar});
    }
}

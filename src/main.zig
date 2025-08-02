// --- Import ---
const std = @import("std");

// --- Fonction sans argument ni retour ---
fn sayWelcome() void {
    std.debug.print("\n⚡⚡⚡ Zig, en action ! ⚡⚡⚡\n", .{});
}

// --- Fonction avec argument sans retour ---
fn showTitle(title: []const u8) void {
    std.debug.print("\n\n⚡ {s} ⚡ \n", .{title});
}

// --- Fonction Main, le point de départ de tout programe executable ---
pub fn main() void {
    sayWelcome();

    // --- Variables et constantes ---
    {
        showTitle("Variable et constantes");
        const pi = 3.14;
        var age: u8 = undefined;
        age = 33;
        age += 1;
        std.debug.print("La valeur de PI est de {d}\n", .{pi});
        std.debug.print("Tu as {d} ans !", .{age});
    }

    // --- Tableaux ---
    {
        showTitle("Tableaux");
        const hey = [3]u8{ 'H', 'e', 'y' };
        const google = [_]u8{ 'G', 'o', 'o', 'g', 'l', 'e' };
        std.debug.print("La première lettre du tableau hey est : {c}\n", .{hey[0]});
        std.debug.print("La longueur du tableau google est : {d}", .{google.len});
    }

    // --- Conditions ---
    {
        showTitle("Conditions");
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
        std.debug.print("Vous avez {d}% de votre santé.", .{lifeBar});
    }

    // --- Boucle While ---
    {
        showTitle("Boucle While");
        var i: u8 = 0;
        while (i < 12) : (i += 1) {
            if (i % 2 == 0) continue;
            if (i == 11) break;
            std.debug.print("i = {d}", .{i});
        }
    }

    // --- Boucle For ---
    {
        showTitle("Boucle For");
        const pseudo = [_]u8{ 'N', 'e', 'm', 'e', 's', 't', 'y' };
        std.debug.print("Bonjour ", .{});
        for (pseudo, 0..) |character, index| {
            _ = index;
            std.debug.print("{c}", .{character});
        }
        std.debug.print(" !", .{});
    }
}

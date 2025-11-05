const std = @import("std");

const IndexError = error{OutOfMemory};

// --- Fonctions ---

// --- Fonction sans argument ni retour ---
pub fn sayWelcome() void {
    std.debug.print("\n⚡⚡⚡ Zig, en action ! ⚡⚡⚡\n\n", .{});
}

// --- Fonction avec argument sans retour ---
pub fn showTitle(title: []const u8) void {
    std.debug.print("\n⚡ {s} ⚡ \n", .{title});
}

// --- Fonction avec argument et retour ---
pub fn addNumber(a: u8, b: u8) u8 {
    return a + b;
}

// --- Fonction avec argument, retour et erreur ---
pub fn getPokemon(index: u8) IndexError!u8 {
    if (index >= 152) {
        return IndexError.OutOfMemory;
    }
    return index;
}

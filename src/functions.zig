const std = @import("std");
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

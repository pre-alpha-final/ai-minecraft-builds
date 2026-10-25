import { system, world } from "@minecraft/server";
import { EVENT_ID } from "./clear_area_input.js";
import { createClearController } from "./clear_area_loader.js";

const controller = createClearController({ world, system });

system.afterEvents.scriptEventReceive.subscribe(event => {
    if (event.id !== EVENT_ID || event.message !== "read_sign") return;
    const player = event.sourceEntity;
    if (!player || player.typeId !== "minecraft:player") return;
    try {
        controller.start(player);
    } catch (error) {
        player.sendMessage(`Clear aborted: ${error instanceof Error ? error.message : String(error)}`);
    }
});

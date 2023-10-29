{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_enemy_emu",
  "eventList": [],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"movement_speed","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"2",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"attack_damage","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"1",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"enemy_health","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"8",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"attack_cooldown","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"convert_seconds_to_frames(2)",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"heal_item","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"obj_healing_egg",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"heal_item_drop_chance","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"0.4",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"min_heal_item_drop_radius","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"3",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"max_heal_item_drop_radius","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"3",},
  ],
  "parent": {
    "name": "Enemies",
    "path": "folders/Objects/Enemies.yy",
  },
  "parentObjectId": {
    "name": "obj_enemy_parent",
    "path": "objects/obj_enemy_parent/obj_enemy_parent.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [],
  "solid": false,
  "spriteId": {
    "name": "spr_neutral_emu_back_facing",
    "path": "sprites/spr_neutral_emu_back_facing/spr_neutral_emu_back_facing.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}
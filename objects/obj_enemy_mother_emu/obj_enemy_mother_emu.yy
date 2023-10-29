{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_enemy_mother_emu",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"movement_speed","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"2",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"attack_damage","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"2",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"enemy_health","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"100",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"attack_cooldown","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"convert_seconds_to_frames(2)",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"heal_item","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"obj_healing_egg",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"min_heal_item_drop_radius","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"3",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"max_heal_item_drop_radius","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"3",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"heal_item_drop_chance","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"0",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"time_reduction","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"convert_seconds_to_microseconds(0)",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"propertyId":{"name":"movement_speed_cap","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"value":"3",},
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
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"over_half_health_swap_time","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"convert_seconds_to_microseconds(15)","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"below_half_health_swap_time","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"convert_seconds_to_microseconds(10)","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"healthbar_left_offset","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"15","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"healthbar_length","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"30","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"healthbar_bottom_offset","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"50","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"healthbar_height","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"10","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_neutral_emu_back_facing",
    "path": "sprites/spr_neutral_emu_back_facing/spr_neutral_emu_back_facing.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}
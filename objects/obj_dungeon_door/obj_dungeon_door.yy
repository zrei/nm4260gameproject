{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_dungeon_door",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"obj_projectile","path":"objects/obj_projectile/obj_projectile.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":12,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "Doors",
    "path": "folders/Objects/Dungeon Room/Doors.yy",
  },
  "parentObjectId": {
    "name": "obj_bullet_destroy_upon_collide_parent",
    "path": "objects/obj_bullet_destroy_upon_collide_parent/obj_bullet_destroy_upon_collide_parent.yy",
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
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"connected_dungeon_room","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":4,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"entrance_direction","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":4,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_dungeon_door",
    "path": "sprites/spr_dungeon_door/spr_dungeon_door.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}
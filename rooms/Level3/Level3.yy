{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "Level3",
  "creationCodeFile": "rooms/Level3/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"level_3_dungeon_room_1","path":"rooms/Level3/Level3.yy",},
    {"name":"level_3_dungeon_room_2","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_1_normal_2","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_1_normal_1","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_1_normal_3","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_2_fire_1","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_2_fire_2","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_2_fire_3","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_3_grass_1","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_3_grass_2","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_3_grass_3","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_4_water_3","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_4_water_2","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_4_water_1","path":"rooms/Level3/Level3.yy",},
    {"name":"inst_71D144","path":"rooms/Level3/Level3.yy",},
    {"name":"inst_11FFB3F5","path":"rooms/Level3/Level3.yy",},
    {"name":"inst_EBA9256","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_1_normal_4","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_1_normal_5","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_1_normal_6","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_2_fire_4","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_2_fire_5","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_2_fire_6","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_3_grass_4","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_3_grass_5","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_3_grass_6","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_4_water_4","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_4_water_5","path":"rooms/Level3/Level3.yy",},
    {"name":"wave_room_1_wave_4_water_6","path":"rooms/Level3/Level3.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Dungeon_Rooms","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[
        {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Room_1","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"level_3_dungeon_room_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_dungeon_room","path":"objects/obj_dungeon_room/obj_dungeon_room.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_dungeon_room","path":"objects/obj_dungeon_room/obj_dungeon_room.yy",},"propertyId":{"name":"has_north_door","path":"objects/obj_dungeon_room/obj_dungeon_room.yy",},"value":"True",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_dungeon_room","path":"objects/obj_dungeon_room/obj_dungeon_room.yy",},"propertyId":{"name":"north_door_connecting_room","path":"objects/obj_dungeon_room/obj_dungeon_room.yy",},"value":"level_3_dungeon_room_2",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":0.0,},
          ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
        {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Room_2","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"level_3_dungeon_room_2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_arena_room","path":"objects/obj_arena_room/obj_arena_room.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_dungeon_room","path":"objects/obj_dungeon_room/obj_dungeon_room.yy",},"propertyId":{"name":"has_north_door","path":"objects/obj_dungeon_room/obj_dungeon_room.yy",},"value":"True",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_dungeon_room","path":"objects/obj_dungeon_room/obj_dungeon_room.yy",},"propertyId":{"name":"north_door_type","path":"objects/obj_dungeon_room/obj_dungeon_room.yy",},"value":"DOOR_TYPE.TO_NEXT_LEVEL",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_dungeon_room","path":"objects/obj_dungeon_room/obj_dungeon_room.yy",},"propertyId":{"name":"has_south_door","path":"objects/obj_dungeon_room/obj_dungeon_room.yy",},"value":"True",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_dungeon_room","path":"objects/obj_dungeon_room/obj_dungeon_room.yy",},"propertyId":{"name":"south_door_connecting_room","path":"objects/obj_dungeon_room/obj_dungeon_room.yy",},"value":"level_3_dungeon_room_1",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":912.0,"y":0.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_1_normal_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_emu",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1024.0,"y":480.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_1_normal_2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_emu",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1024.0,"y":128.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_1_normal_3","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_emu",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1600.0,"y":128.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_1_normal_4","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_emu",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1600.0,"y":320.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_1_normal_5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_emu",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1600.0,"y":480.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_1_normal_6","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_emu",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1024.0,"y":320.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_2_fire_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_fire_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"2",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1024.0,"y":320.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_2_fire_2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_fire_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"2",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1600.0,"y":320.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_2_fire_3","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_fire_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"2",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1600.0,"y":128.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_2_fire_4","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_fire_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"2",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1600.0,"y":480.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_2_fire_5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_fire_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"2",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1024.0,"y":480.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_2_fire_6","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_fire_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"2",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1024.0,"y":128.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_3_grass_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_grass_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"3",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1024.0,"y":128.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_3_grass_2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_grass_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"3",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1024.0,"y":320.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_3_grass_3","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_grass_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"3",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1600.0,"y":128.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_3_grass_4","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_grass_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"3",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1024.0,"y":480.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_3_grass_5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_grass_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"3",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1600.0,"y":480.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_3_grass_6","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_grass_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"3",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1600.0,"y":320.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_4_water_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_water_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"4",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1600.0,"y":128.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_4_water_2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_water_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"4",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1024.0,"y":320.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_4_water_3","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_water_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"4",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1024.0,"y":128.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_4_water_4","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_water_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"4",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1024.0,"y":480.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_4_water_5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_water_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"4",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1600.0,"y":480.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"wave_room_1_wave_4_water_6","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"properties":[
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"enemy_to_spawn","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"obj_enemy_water_emu",},
                {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemy_spawner","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"propertyId":{"name":"wave_number","path":"objects/obj_enemy_spawner/obj_enemy_spawner.yy",},"value":"4",},
              ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1600.0,"y":320.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_71D144","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_fire_swapper","path":"objects/obj_fire_swapper/obj_fire_swapper.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1120.0,"y":320.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_11FFB3F5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_grass_swapper","path":"objects/obj_grass_swapper/obj_grass_swapper.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1312.0,"y":320.0,},
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_EBA9256","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_water_swapper","path":"objects/obj_water_swapper/obj_water_swapper.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1504.0,"y":320.0,},
          ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
      ],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Walls","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":42,"SerialiseWidth":42,"TileCompressedData":[
-7,1,-3,-2147483648,-7,1,-2,-2147483648,-7,1,-3,-2147483648,-7,1,-6,-2147483648,1,1,-15,-2147483648,4,1,-2147483648,-2147483648,1,-15,-2147483648,1,1,-6,-2147483648,1,1,-15,-2147483648,4,1,-2147483648,-2147483648,1,-15,-2147483648,
1,1,-6,-2147483648,1,1,-15,-2147483648,4,1,-2147483648,-2147483648,1,-15,-2147483648,1,1,-6,-2147483648,1,1,-15,-2147483648,4,1,-2147483648,-2147483648,1,-15,-2147483648,1,1,-6,-2147483648,1,1,-15,-2147483648,4,1,-2147483648,-2147483648,
1,-15,-2147483648,1,1,-6,-2147483648,1,1,-15,-2147483648,4,1,-2147483648,-2147483648,1,-15,-2147483648,1,1,-6,-2147483648,1,1,-15,-2147483648,4,1,-2147483648,-2147483648,1,-15,-2147483648,1,1,-6,-2147483648,1,1,-15,-2147483648,4,
1,-2147483648,-2147483648,1,-15,-2147483648,1,1,-6,-2147483648,1,1,-15,-2147483648,4,1,-2147483648,-2147483648,1,-15,-2147483648,1,1,-6,-2147483648,1,1,-15,-2147483648,4,1,-2147483648,-2147483648,1,-15,-2147483648,1,1,-6,-2147483648,1,1,
-15,-2147483648,4,1,-2147483648,-2147483648,1,-15,-2147483648,1,1,-6,-2147483648,-17,1,-2,-2147483648,-7,1,-3,-2147483648,-7,1,-1224,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_wall","path":"tilesets/ts_wall/ts_wall.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"spr_level_3_background","path":"sprites/spr_level_3_background/spr_level_3_background.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":true,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 2000,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 2000,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}
///drawevent_dispatcher_remove(key);

// Removes from the DrawEvent Dispatcher and the List Keys the reference of the script added
var key = argument0;

if(ds_map_exists(global.DrawEvent_dispatcher, key)){
    ds_map_delete(global.DrawEvent_dispatcher, key);
    ds_list_delete(global.DrawEvent_dispatcher_keys, key);
}

// If args were passed to a script with this key, it will be removed from the map.
if(ds_map_exists(global.DrawEvent_dispatcher_args, key)){
    ds_map_delete(global.DrawEvent_dispatcher_args, key); 
}

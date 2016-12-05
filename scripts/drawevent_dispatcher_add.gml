///drawevent_dispatcher_add(key, script, argument_array)

var key = argument0;
var script = argument1;
var args = argument2;

// Add a script to be executed every time a Draw Event is triggered.
ds_map_add(global.DrawEvent_dispatcher, key, script);
ds_list_add(global.DrawEvent_dispatcher_keys, key);

// Check if args were passed as list, and if theres not an empty list
if(is_array(args) && array_length_1d(args) > 0){
    ds_map_add(global.DrawEvent_dispatcher_args, key, args);
}

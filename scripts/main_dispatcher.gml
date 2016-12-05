///main_dispatcher()

switch(event_type){
    case(ev_draw):
        var dp_draw_keys_size = ds_list_size(global.DrawEvent_dispatcher_keys);
        
        if dp_draw_keys_size > 0 {
            show_debug_message("Entered Draw Dispatcher event");
            for(var i = 0; i < dp_draw_keys_size; i++){
                var key = ds_list_find_value(global.DrawEvent_dispatcher_keys, i);
                
                if(!is_undefined(key)){ // If Key isn't undefined
                    
                    var script = ds_map_find_value(global.DrawEvent_dispatcher, key);
                    var args = ds_map_find_value(global.DrawEvent_dispatcher_args, key);
                    
                    if(!is_undefined(script)){ // If Script isn't undefined
                        
                        if(!is_undefined(args)){
                            script_execute(script, args);
                        }else{
                            script_execute(script);
                        }
                    }
                }
            }
        }
        break;
}

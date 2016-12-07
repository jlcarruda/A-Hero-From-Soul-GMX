///main_dispatcher()

var dp_draw_script_size = ds_map_size(global.DrawEvent_dispatcher_keys);

switch(event_type){
    case(ev_draw):
        
        if dp_draw_script_size > 0 {
            for(var i = 0; i < dp_draw_script_size; i++){
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

// If the DrawEvent dispatcher has no scripts, then clear the dispatcher entirely
if(dp_draw_script_size == 0){
    drawevent_dispatcher_clear();
}

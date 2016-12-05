///start_game_script()
// This script should be called when the first room of the game starts.
// Put in this script whatever is necessary to be made in the event of creation of the first room

randomize();

/* Create Event Dispatchers, Keys List and Args Map
    - Dispatchers are data structures that allows the listing of scripts that 
waits for certain events to be executed (like Event Listeners)
    - A Dispatcher is a Map[key, script] data structure
    - The Dispatcher Keys are registered in a List data structure (Its dinamically
sized)
    - The Dispatcher also have a Map for its args (an array with all the script arguments)
    - The Key is a common value in both Maps (dispatcher and args)
    
    --- IMPORTANT: Only dispatcher scripts can be added into the Dispatcher.

*/

global.DrawEvent_dispatcher = ds_map_create();
global.DrawEvent_dispatcher_keys = ds_list_create();
global.DrawEvent_dispatcher_args = ds_map_create();

global.StepEvent_dispatcher = ds_map_create();
global.StepEvent_dispatcher_keys = ds_list_create();
global.StepEvent_dispatcher_args = ds_map_create();

// TODO: Maybe need some command or Script stacking?


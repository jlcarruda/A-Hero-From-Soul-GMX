///create_static_object
var obj = 0;
do {
    var parent = object_get_parent(obj);
    if(parent == P_StaticObject || object_is_ancestor(parent, P_StaticObject) && !instance_exists(obj)){
        show_debug_message("Adding static class object " + object_get_name(obj) + "[id = " + string(obj) + "] to the room");
        instance_create(-1, -1, obj);
    }
    obj++
} until (!object_exists(obj))

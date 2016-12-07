///dp_draw_text([x, y, string, relative_object])
// Encapsulates the draw_text() native function into script, for use on Dispatchers
var args_array = argument0;
if(is_array(args_array) && array_length_1d(args_array) >= 3){
    var xPos = args_array[0];
    var yPos = args_array[1];
    var str = args_array[2];
    
    
    draw_text(xPos, yPos, str);        
}


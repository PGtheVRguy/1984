windowHeight = 144
windowWidth = 160

var _scale = 5

display_set_gui_size(windowWidth,windowHeight) //Im to lazy to get the GUI to scale right
window_set_size(windowWidth*_scale,windowHeight*_scale) //Upscales the game so you can actually see it

window_set_position((display_get_width()/2)-(windowWidth*_scale)/2,(display_get_height()/2)-(windowHeight*_scale)/2)
//That centers the game window
if mouse_check_button_pressed(mb_left)
    lockmouse = 1
if keyboard_check_pressed(vk_escape)
    lockmouse = 0
if lockmouse
{
    var l = layer_get_id("Background")
    layer_x(l, (layer_get_x(l) - (window_mouse_get_x() - (window_get_width() / 2))))
    yaw -= ((window_mouse_get_x() - (window_get_width() / 2)) / 10)
    if (yaw > 360)
        yaw = 0
    if (yaw < 0)
        yaw = 360
    if keyboard_check(ord("A"))
    {
        x -= (dsin(yaw) * 5)
        y -= (dcos(yaw) * 5)
    }
    if keyboard_check(ord("D"))
    {
        x += (dsin(yaw) * 5)
        y += (dcos(yaw) * 5)
    }
    if keyboard_check(ord("W"))
    {
        x += (dcos(yaw) * 5)
        y -= (dsin(yaw) * 5)
    }
    if keyboard_check(ord("S"))
    {
        x -= (dcos(yaw) * 5)
        y += (dsin(yaw) * 5)
    }
    if keyboard_check(ord("E"))
        cubez -= 5
    if keyboard_check(ord("Q"))
        cubez += 5
    window_mouse_set((window_get_width() / 2), (window_get_height() / 2))
    window_set_cursor(cr_none)
}
else
    window_set_cursor(cr_default)
gpu_set_ztestenable(1)
gpu_set_zwriteenable(1)
vertex_format_begin()
vertex_format_add_position_3d()
vertex_format_add_normal()
vertex_format_add_texcoord()
vertex_format_add_color()
var vertex_format = vertex_format_end()
vbuffer = vertex_create_buffer()
vertex_begin(vbuffer, vertex_format)
var x1 = 400
var x2 = 500
vertex_add_point(vbuffer, x1, x1, cubez, 0, 0, 1, 0, 0, 16777215, 1)
vertex_add_point(vbuffer, x2, x1, cubez, 0, 0, 1, 1, 0, 16777215, 1)
vertex_add_point(vbuffer, x2, x2, cubez, 0, 0, 1, 1, 1, 16777215, 1)
vertex_add_point(vbuffer, x2, x2, cubez, 0, 0, 1, 1, 1, 16777215, 1)
vertex_add_point(vbuffer, x1, x2, cubez, 0, 0, 1, 0, 1, 16777215, 1)
vertex_add_point(vbuffer, x1, x1, cubez, 0, 0, 1, 0, 0, 16777215, 1)
vertex_add_point(vbuffer, x1, x1, (cubez - 100), 0, 0, 1, 0, 0, 16777215, 1)
vertex_add_point(vbuffer, x2, x1, (cubez - 100), 0, 0, 1, 1, 0, 16777215, 1)
vertex_add_point(vbuffer, x2, x2, (cubez - 100), 0, 0, 1, 1, 1, 16777215, 1)
vertex_add_point(vbuffer, x2, x2, (cubez - 100), 0, 0, 1, 1, 1, 16777215, 1)
vertex_add_point(vbuffer, x1, x2, (cubez - 100), 0, 0, 1, 0, 1, 16777215, 1)
vertex_add_point(vbuffer, x1, x1, (cubez - 100), 0, 0, 1, 0, 0, 16777215, 1)
vertex_add_point(vbuffer, x1, x1, cubez, 0, 0, 1, 0, 0, 16777215, 1)
vertex_add_point(vbuffer, x1, x2, cubez, 0, 0, 1, 0, 1, 16777215, 1)
vertex_add_point(vbuffer, x1, x2, (cubez - 100), 0, 0, 1, 0, 1, 16777215, 1)
vertex_add_point(vbuffer, x1, x1, (cubez - 100), 0, 0, 1, 0, 0, 16777215, 1)
vertex_add_point(vbuffer, x1, x2, (cubez - 100), 0, 0, 1, 0, 1, 16777215, 1)
vertex_add_point(vbuffer, x1, x1, cubez, 0, 0, 1, 0, 0, 16777215, 1)
vertex_add_point(vbuffer, x2, x2, cubez, 0, 0, 1, 1, 1, 16777215, 1)
vertex_add_point(vbuffer, x2, x1, cubez, 0, 0, 1, 1, 0, 16777215, 1)
vertex_add_point(vbuffer, x2, x1, (cubez - 100), 0, 0, 1, 1, 0, 16777215, 1)
vertex_add_point(vbuffer, x2, x2, (cubez - 100), 0, 0, 1, 1, 1, 16777215, 1)
vertex_add_point(vbuffer, x2, x1, (cubez - 100), 0, 0, 1, 1, 0, 16777215, 1)
vertex_add_point(vbuffer, x2, x2, cubez, 0, 0, 1, 1, 1, 16777215, 1)
vertex_add_point(vbuffer, x1, x1, cubez, 0, 0, 1, 0, 0, 16777215, 1)
vertex_add_point(vbuffer, x2, x1, cubez, 0, 0, 1, 1, 0, 16777215, 1)
vertex_add_point(vbuffer, x2, x1, (cubez - 100), 0, 0, 1, 1, 0, 16777215, 1)
vertex_add_point(vbuffer, x1, x1, (cubez - 100), 0, 0, 1, 0, 0, 16777215, 1)
vertex_add_point(vbuffer, x2, x1, (cubez - 100), 0, 0, 1, 1, 0, 16777215, 1)
vertex_add_point(vbuffer, x1, x1, cubez, 0, 0, 1, 0, 0, 16777215, 1)
vertex_add_point(vbuffer, x2, x2, cubez, 0, 0, 1, 1, 1, 16777215, 1)
vertex_add_point(vbuffer, x1, x2, cubez, 0, 0, 1, 0, 1, 16777215, 1)
vertex_add_point(vbuffer, x1, x2, (cubez - 100), 0, 0, 1, 0, 1, 16777215, 1)
vertex_add_point(vbuffer, x2, x2, (cubez - 100), 0, 0, 1, 1, 1, 16777215, 1)
vertex_add_point(vbuffer, x1, x2, (cubez - 100), 0, 0, 1, 0, 1, 16777215, 1)
vertex_add_point(vbuffer, x2, x2, cubez, 0, 0, 1, 1, 1, 16777215, 1)
vertex_end(vbuffer)

var camera = camera_get_active()
var h_mod = dsin(z)
var xto = (x + (dcos(yaw) * (1 - abs(h_mod))))
var yto = (y - (dsin(yaw) * (1 - abs(h_mod))))
var zto = z
camera_set_view_mat(camera, matrix_build_lookat(x, y, z, xto, yto, zto, 0, 0, 1))
camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(60, (window_get_width() / window_get_height()), 1, 32000))
camera_apply(camera)
vertex_submit(vbuffer, 4, -1)

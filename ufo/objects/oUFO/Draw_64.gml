draw_set_font(Score);
draw_set_halign(fa_right);
draw_set_color(c_white);
draw_text(display_get_gui_width() - 20, 10, string(global.scorecount));
//draw textbox
draw_rectangle(x - 2, y - 2, x + box_width, y + box_Height+2, false);
draw_sprite(spr_box, 0, x, y);

//draw text
draw_set_font(fnt_text);

if(charCount < string_length(text[page])){
	charCount += .5;
}

textPart = string_copy(text[page], 1, charCount);

//Draw name
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_text(x + (box_width/2),y+yBuffer, name);
draw_set_halign(fa_left);


//draw part of the text
draw_set_color(c_white);
draw_text_ext(x + xBuffer,y + stringHeight + yBuffer, textPart, stringHeight, box_width - (2*xBuffer));
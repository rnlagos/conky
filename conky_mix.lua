--==============================================================================
--                            conky_orange.lua
--
--  author  : SLK
--  version : v2011062101
--  license : Distributed under the terms of GNU GPL version 2 or later
--
--==============================================================================

require 'cairo'

--------------------------------------------------------------------------------
--                                                                    clock DATA
-- HOURS
clock_h = {
    {
    name='time',                   arg='%H',                    max_value=12,
    x=90,                         y=12,
    graph_radius=60,
    graph_thickness=5,
    graph_unit_angle=30,           graph_unit_thickness=30,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0.0,
    graph_fg_colour=0x51f7c0,      graph_fg_alpha=0.3,
    txt_radius=0,
    txt_weight=0,                  txt_size=40.0,
    txt_fg_colour=0x85c6c4,        txt_fg_alpha=0.9,
    graduation_radius=46,
    graduation_thickness=10,        graduation_mark_thickness=1,
    graduation_unit_angle=30,
    graduation_fg_colour=0x51f7c0, graduation_fg_alpha=0.3,
    },
}
-- MINUTES
clock_m = {
    {
    name='time',                   arg='%M',                    max_value=60,
    x=90,                         y=125,
    graph_radius=49,
    graph_thickness=8,
    graph_unit_angle=6,            graph_unit_thickness=6,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0.0,
    graph_fg_colour=0x00aa71,      graph_fg_alpha=0.45,
    txt_radius=32,
    txt_weight=0,                  txt_size=18.0,
    txt_fg_colour=0x85c6c4,        txt_fg_alpha=0.9,
    graduation_radius=57,
    graduation_thickness=0,        graduation_mark_thickness=2,
    graduation_unit_angle=30,
    graduation_fg_colour=0x51f7c0, graduation_fg_alpha=0.3,
    },
}
-- SECONDS
clock_s = {
    {
    name='time',                   arg='%S',                    max_value=60,
    x=90,                         y=125,
    graph_radius=46,
    graph_thickness=8,
    graph_unit_angle=6,            graph_unit_thickness=2,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0,
    graph_fg_colour=0x51f7c0,      graph_fg_alpha=0.15,
    txt_radius=0,
    txt_weight=1,                  txt_size=42.0,
    txt_fg_colour=0x51f7c0,        txt_fg_alpha=0,
    graduation_radius=0,
    graduation_thickness=0,        graduation_mark_thickness=0,
    graduation_unit_angle=0,
    graduation_fg_colour=0x51f7c0, graduation_fg_alpha=0.0,
    },
}

--------------------------------------------------------------------------------
--                                                                   gauge DATA
gauge = {
{
    name='cpu',                    arg='cpu0',                  max_value=100,
    x=90,                          y=125,
    graph_radius=60,
    graph_thickness=5,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=3,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0.1,
    graph_fg_colour=0x20df80,      graph_fg_alpha=0.5,
    hand_fg_colour=0x51f7c0,       hand_fg_alpha=0.1,
    txt_radius=34,
    txt_weight=0,                  txt_size=32.0,
    txt_fg_colour=0x51f7c0,        txt_fg_alpha=0.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0x51f7c0, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=12.0,
    caption_fg_colour=0x51f7c0,    caption_fg_alpha=0.0,
},
{
    name='cpu',                    arg='cpu1',                  max_value=100,
    x=90,                          y=125,
    graph_radius=51,
    graph_thickness=5,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=3,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0.1,
    graph_fg_colour=0x20df80,      graph_fg_alpha=0.5,
    hand_fg_colour=0x51f7c0,       hand_fg_alpha=0.1,
    txt_radius=10,
    txt_weight=0,                  txt_size=30.0,
    txt_fg_colour=0xa6f2d9,        txt_fg_alpha=0.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0x51f7c0, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=20.0,
    caption_fg_colour=0x51f7c0,    caption_fg_alpha=0.0,
},
{
    name='cpu',                    arg='cpu2',                  max_value=100,
    x=90,                          y=125,
    graph_radius=42,
    graph_thickness=5,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=3,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0.1,
    graph_fg_colour=0x20df80,      graph_fg_alpha=0.5,
    hand_fg_colour=0x51f7c0,       hand_fg_alpha=0.1,
    txt_radius=10,
    txt_weight=0,                  txt_size=10.0,
    txt_fg_colour=0x51f7c0,        txt_fg_alpha=0.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0x51f7c0, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0x51f7c0,    caption_fg_alpha=0.0,
},
{
    name='cpu',                    arg='cpu3',                  max_value=100,
    x=90,                          y=125,
    graph_radius=33,
    graph_thickness=5,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=3,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0.1,
    graph_fg_colour=0x20df80,      graph_fg_alpha=0.5,
    hand_fg_colour=0x51f7c0,       hand_fg_alpha=0.1,
    txt_radius=10,
    txt_weight=0,                  txt_size=10.0,
    txt_fg_colour=0x51f7c0,        txt_fg_alpha=0.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0x51f7c0, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=0,              caption_size=8.0,
    caption_fg_colour=0x51f7c0,    caption_fg_alpha=0.0,
},
{
    name='memperc',                arg='/',                      max_value=100,
    x=42,                          y=238,
    graph_radius=40,
    graph_thickness=3,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=3,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0.1,
    graph_fg_colour=0xa6f2f2,      graph_fg_alpha=0.9,
    hand_fg_colour=0x51f7c0,       hand_fg_alpha=1.0,
    txt_radius=10,
    txt_weight=0,                  txt_size=8.0,
    txt_fg_colour=0x51f7c0,        txt_fg_alpha=0,
    graduation_radius=43,
    graduation_thickness=0,        graduation_mark_thickness=2,
    graduation_unit_angle=27,
    graduation_fg_colour=0x51f7c0, graduation_fg_alpha=0.5,
    caption='RAM',
    caption_weight=1,              caption_size=14.0,
    caption_fg_colour=0xd2f9ec,    caption_fg_alpha=0.25,
},
{
    name='swapperc',                arg='/',                      max_value=100,
    x=42,                          y=238,
    graph_radius=32,
    graph_thickness=2,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=3,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0.1,
    graph_fg_colour=0xa6f2f2,      graph_fg_alpha=0.9,
    hand_fg_colour=0x51f7c0,       hand_fg_alpha=1.0,
    txt_radius=10,
    txt_weight=0,                  txt_size=8.0,
    txt_fg_colour=0x51f7c0,        txt_fg_alpha=0.0,
    graduation_radius=23,
    graduation_thickness=0,        graduation_mark_thickness=2,
    graduation_unit_angle=27,
    graduation_fg_colour=0x51f7c0, graduation_fg_alpha=0.5,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0x51f7c0,    caption_fg_alpha=0.3,
},
{
    name='fs_free_perc',           arg='/',                     max_value=100,
    x=150,                          y=238,
    graph_radius=40,
    graph_thickness=5,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=3,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0.1,
    graph_fg_colour=0xdfbf20,      graph_fg_alpha=0.5,
    hand_fg_colour=0xdfaf20,       hand_fg_alpha=0.5,
    txt_radius=0,
    txt_weight=0,                  txt_size=10.0,
    txt_fg_colour=0xa6f2d9,        txt_fg_alpha=0.0,
    graduation_radius=0,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=0,
    graduation_fg_colour=0x51f7c0, graduation_fg_alpha=0.3,
    caption='',                 
    caption_weight=0,              caption_size=12.0,
    caption_fg_colour=0xd2f9ec,    caption_fg_alpha=0.8,
},
{
    name='fs_free_perc',           arg='/media/rafa/1TB',                max_value=100,
    x=150,                          y=238,
    graph_radius=32,
    graph_thickness=5,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=3,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0.1,
    graph_fg_colour=0x20df80,      graph_fg_alpha=0.5,
    hand_fg_colour=0x20df80,       hand_fg_alpha=0.5,
    txt_radius=10,
    txt_weight=0,                  txt_size=8.0,
    txt_fg_colour=0xffffff,        txt_fg_alpha=0.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0x51f7c0, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=0,              caption_size=11.0,
    caption_fg_colour=0xd2f9ec,    caption_fg_alpha=0.8,
},
{
    name='fs_free_perc',           arg='/media/rafa/500MB',                max_value=100,
    x=150,                          y=238,
    graph_radius=24,
    graph_thickness=5,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=3,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0.1,
    graph_fg_colour=0xdf209f,      graph_fg_alpha=0.5,
    hand_fg_colour=0xdf209f,       hand_fg_alpha=0.5,
    txt_radius=10,
    txt_weight=0,                  txt_size=8.0,
    txt_fg_colour=0x51f7c0,        txt_fg_alpha=0.0,
    graduation_radius=58,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xa6f2d9, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=0,              caption_size=10.0,
    caption_fg_colour=0xd2f9ec,    caption_fg_alpha=0.8,
},
{
    name='nvidia',           arg='gpuutil',                max_value=100,
    x=44,                          y=340,
    graph_radius=40,
    graph_thickness=3,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=3,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0.1,
    graph_fg_colour=0xa6f2f2,      graph_fg_alpha=0.9,
    hand_fg_colour=0x51f7c0,       hand_fg_alpha=0.0,
    txt_radius=0,
    txt_weight=0,                  txt_size=24.0,
    txt_fg_colour=0xa6f2d9,        txt_fg_alpha=0.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1.0,
    graduation_unit_angle=27,
    graduation_fg_colour=0xa6f2d9, graduation_fg_alpha=0.3,
    caption='VRAM',
    caption_weight=0,              caption_size=14.0,
    caption_fg_colour=0xd2f9ec,    caption_fg_alpha=0.25,
},
{
    name='nvidia',           arg='memavail',                max_value=100,
    x=44,                          y=340,
    graph_radius=30,
    graph_thickness=3,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=3,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0.1,
    graph_fg_colour=0xa6f2f2,      graph_fg_alpha=0.9,
    hand_fg_colour=0x51f7c0,       hand_fg_alpha=1.0,
    txt_radius=0,
    txt_weight=0,                  txt_size=24.0,
    txt_fg_colour=0xd2f9ec,        txt_fg_alpha=0.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1.0,
    graduation_unit_angle=27,
    graduation_fg_colour=0xa6f2d9, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=0,              caption_size=12.0,
    caption_fg_colour=0xd2f9ec,    caption_fg_alpha=0.8,
},
{
    name='nvidia',           arg='gputemp',                max_value=100,
    x=150,                          y=340,
    graph_radius=40,
    graph_thickness=3,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=3,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0.1,
    graph_fg_colour=0xa6f2f2,      graph_fg_alpha=0.9,
    hand_fg_colour=0x51f7c0,       hand_fg_alpha=1.0,
    txt_radius=0,
    txt_weight=0,                  txt_size=24.0,
    txt_fg_colour=0xd2f9ec,        txt_fg_alpha=0.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xa6f2d9, graduation_fg_alpha=0.3,
    caption='GTX ºC',
    caption_weight=0,              caption_size=12.0,
    caption_fg_colour=0xd2f9ec,    caption_fg_alpha=0.25,
},
{
    name='nvidia',           arg='fanlevel',                max_value=100,
    x=150,                          y=340,
    graph_radius=30,
    graph_thickness=3,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=3,
    graph_bg_colour=0x51d8f7,      graph_bg_alpha=0.1,
    graph_fg_colour=0xa6f2f2,      graph_fg_alpha=0.9,
    hand_fg_colour=0x51f7c0,       hand_fg_alpha=1.0,
    txt_radius=0,
    txt_weight=0,                  txt_size=24.0,
    txt_fg_colour=0xa6f2d9,        txt_fg_alpha=0.0,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xa6f2d9, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=0,              caption_size=12.0,
    caption_fg_colour=0xd2f9ec,    caption_fg_alpha=0.8,
},
}

-------------------------------------------------------------------------------
--                                                                 rgb_to_r_g_b
-- converts color in hexa to decimal
--
function rgb_to_r_g_b(colour, alpha)
    return ((colour / 0x10000) % 0x100) / 255., ((colour / 0x100) % 0x100) / 255., (colour % 0x100) / 255., alpha
end

-------------------------------------------------------------------------------
--                                                            angle_to_position
-- convert degree to rad and rotate (0 degree is top/north)
--
function angle_to_position(start_angle, current_angle)
    local pos = current_angle + start_angle
    return ( ( pos * (2 * math.pi / 360) ) - (math.pi / 2) )
end

-------------------------------------------------------------------------------
--                                                              draw_clock_ring
-- displays clock
--
function draw_clock_ring(display, data, value)
    local max_value = data['max_value']
    local x, y = data['x'], data['y']
    local graph_radius = data['graph_radius']
    local graph_thickness, graph_unit_thickness = data['graph_thickness'], data['graph_unit_thickness']
    local graph_unit_angle = data['graph_unit_angle']
    local graph_bg_colour, graph_bg_alpha = data['graph_bg_colour'], data['graph_bg_alpha']
    local graph_fg_colour, graph_fg_alpha = data['graph_fg_colour'], data['graph_fg_alpha']

    -- background ring
    cairo_arc(display, x, y, graph_radius, 0, 2 * math.pi)
    cairo_set_source_rgba(display, rgb_to_r_g_b(graph_bg_colour, graph_bg_alpha))
    cairo_set_line_width(display, graph_thickness)
    cairo_stroke(display)

    -- arc of value
    local val = (value % max_value)
    local i = 1
    while i <= val do
        cairo_arc(display, x, y, graph_radius,(  ((graph_unit_angle * i) - graph_unit_thickness)*(2*math.pi/360)  )-(math.pi/2),((graph_unit_angle * i) * (2*math.pi/360))-(math.pi/2))
        cairo_set_source_rgba(display,rgb_to_r_g_b(graph_fg_colour,graph_fg_alpha))
        cairo_stroke(display)
        i = i + 1
    end
    local angle = (graph_unit_angle * i) - graph_unit_thickness

    -- graduations marks
    local graduation_radius = data['graduation_radius']
    local graduation_thickness, graduation_mark_thickness = data['graduation_thickness'], data['graduation_mark_thickness']
    local graduation_unit_angle = data['graduation_unit_angle']
    local graduation_fg_colour, graduation_fg_alpha = data['graduation_fg_colour'], data['graduation_fg_alpha']
    if graduation_radius > 0 and graduation_thickness > 0 and graduation_unit_angle > 0 then
        local nb_graduation = 360 / graduation_unit_angle
        local i = 1
        while i <= nb_graduation do
            cairo_set_line_width(display, graduation_thickness)
            cairo_arc(display, x, y, graduation_radius, (((graduation_unit_angle * i)-(graduation_mark_thickness/2))*(2*math.pi/360))-(math.pi/2),(((graduation_unit_angle * i)+(graduation_mark_thickness/2))*(2*math.pi/360))-(math.pi/2))
            cairo_set_source_rgba(display,rgb_to_r_g_b(graduation_fg_colour,graduation_fg_alpha))
            cairo_stroke(display)
            cairo_set_line_width(display, graph_thickness)
            i = i + 1
        end
    end

    -- text
    local txt_radius = data['txt_radius']
    local txt_weight, txt_size = data['txt_weight'], data['txt_size']
    local txt_fg_colour, txt_fg_alpha = data['txt_fg_colour'], data['txt_fg_alpha']
    local movex = txt_radius * (math.cos((angle * 2 * math.pi / 360)-(math.pi/2)))
    local movey = txt_radius * (math.sin((angle * 2 * math.pi / 360)-(math.pi/2)))
    cairo_select_font_face (display, "Digital Display", CAIRO_FONT_SLANT_NORMAL, txt_weight);
    cairo_set_font_size (display, txt_size);
    cairo_set_source_rgba (display, rgb_to_r_g_b(txt_fg_colour, txt_fg_alpha));
    cairo_move_to (display, x + movex - (txt_size / 2), y + movey + 3);
    cairo_show_text (display, value);
    cairo_stroke (display);
end

-------------------------------------------------------------------------------
--                                                              draw_gauge_ring
-- displays gauges
--
function draw_gauge_ring(display, data, value)
    local max_value = data['max_value']
    local x, y = data['x'], data['y']
    local graph_radius = data['graph_radius']
    local graph_thickness, graph_unit_thickness = data['graph_thickness'], data['graph_unit_thickness']
    local graph_start_angle = data['graph_start_angle']
    local graph_unit_angle = data['graph_unit_angle']
    local graph_bg_colour, graph_bg_alpha = data['graph_bg_colour'], data['graph_bg_alpha']
    local graph_fg_colour, graph_fg_alpha = data['graph_fg_colour'], data['graph_fg_alpha']
    local hand_fg_colour, hand_fg_alpha = data['hand_fg_colour'], data['hand_fg_alpha']
    local graph_end_angle = (max_value * graph_unit_angle) % 360

    -- background ring
    cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, 0), angle_to_position(graph_start_angle, graph_end_angle))
    cairo_set_source_rgba(display, rgb_to_r_g_b(graph_bg_colour, graph_bg_alpha))
    cairo_set_line_width(display, graph_thickness)
    cairo_stroke(display)

    -- arc of value
    local val = value % (max_value + 1)
    local start_arc = 0
    local stop_arc = 0
    local i = 1
    while i <= val do
        start_arc = (graph_unit_angle * i) - graph_unit_thickness
        stop_arc = (graph_unit_angle * i)
        cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
        cairo_set_source_rgba(display, rgb_to_r_g_b(graph_fg_colour, graph_fg_alpha))
        cairo_stroke(display)
        i = i + 1
    end
    local angle = start_arc

    -- hand
    start_arc = (graph_unit_angle * val) - (graph_unit_thickness * 2)
    stop_arc = (graph_unit_angle * val)
    cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
    cairo_set_source_rgba(display, rgb_to_r_g_b(hand_fg_colour, hand_fg_alpha))
    cairo_stroke(display)

    -- graduations marks
    local graduation_radius = data['graduation_radius']
    local graduation_thickness, graduation_mark_thickness = data['graduation_thickness'], data['graduation_mark_thickness']
    local graduation_unit_angle = data['graduation_unit_angle']
    local graduation_fg_colour, graduation_fg_alpha = data['graduation_fg_colour'], data['graduation_fg_alpha']
    if graduation_radius > 0 and graduation_thickness > 0 and graduation_unit_angle > 0 then
        local nb_graduation = graph_end_angle / graduation_unit_angle
        local i = 0
        while i < nb_graduation do
            cairo_set_line_width(display, graduation_thickness)
            start_arc = (graduation_unit_angle * i) - (graduation_mark_thickness / 2)
            stop_arc = (graduation_unit_angle * i) + (graduation_mark_thickness / 2)
            cairo_arc(display, x, y, graduation_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
            cairo_set_source_rgba(display,rgb_to_r_g_b(graduation_fg_colour,graduation_fg_alpha))
            cairo_stroke(display)
            cairo_set_line_width(display, graph_thickness)
            i = i + 1
        end
    end

    -- text
    local txt_radius = data['txt_radius']
    local txt_weight, txt_size = data['txt_weight'], data['txt_size']
    local txt_fg_colour, txt_fg_alpha = data['txt_fg_colour'], data['txt_fg_alpha']
    local movex = txt_radius * math.cos(angle_to_position(graph_start_angle, angle))
    local movey = txt_radius * math.sin(angle_to_position(graph_start_angle, angle))
    cairo_select_font_face (display, "ubuntu", CAIRO_FONT_SLANT_NORMAL, txt_weight)
    cairo_set_font_size (display, txt_size)
    cairo_set_source_rgba (display, rgb_to_r_g_b(txt_fg_colour, txt_fg_alpha))
    cairo_move_to (display, x + movex - (txt_size / 2), y + movey + 3)
    cairo_show_text (display, value)
    cairo_stroke (display)

    -- caption
    local caption = data['caption']
    local caption_weight, caption_size = data['caption_weight'], data['caption_size']
    local caption_fg_colour, caption_fg_alpha = data['caption_fg_colour'], data['caption_fg_alpha']
    local tox = graph_radius * (math.cos((graph_start_angle * 2 * math.pi / 360)-(math.pi/2)))
    local toy = graph_radius * (math.sin((graph_start_angle * 2 * math.pi / 360)-(math.pi/2)))
    cairo_select_font_face (display, "ubuntu", CAIRO_FONT_SLANT_NORMAL, caption_weight);
    cairo_set_font_size (display, caption_size)
    cairo_set_source_rgba (display, rgb_to_r_g_b(caption_fg_colour, caption_fg_alpha))
    cairo_move_to (display, x + tox + 5, y + toy + 1)
    -- bad hack but not enough time !
    if graph_start_angle < 105 then
        cairo_move_to (display, x + tox - 30, y + toy + 1)
    end
    cairo_show_text (display, caption)
    cairo_stroke (display)
end

-------------------------------------------------------------------------------
--                                                               go_clock_rings
-- loads data and displays clock
--
function go_clock_rings(display)
    local function load_clock_rings(display, data)
        local str, value = '', 0
        str = string.format('${%s %s}',data['name'], data['arg'])
        str = conky_parse(str)
        value = tonumber(str)
        draw_clock_ring(display, data, value)
    end
    
    for i in pairs(clock_h) do
        load_clock_rings(display, clock_h[i])
    end
    for i in pairs(clock_m) do
        load_clock_rings(display, clock_m[i])
    end
    for i in pairs(clock_s) do
        load_clock_rings(display, clock_s[i])
    end
end

-------------------------------------------------------------------------------
--                                                               go_gauge_rings
-- loads data and displays gauges
--
function go_gauge_rings(display)
    local function load_gauge_rings(display, data)
        local str, value = '', 0
        str = string.format('${%s %s}',data['name'], data['arg'])
        str = conky_parse(str)
        value = tonumber(str)
        draw_gauge_ring(display, data, value)
    end
    
    for i in pairs(gauge) do
        load_gauge_rings(display, gauge[i])
    end
end

-------------------------------------------------------------------------------
--                                                                         MAIN
function conky_main()
    if conky_window == nil then 
        return
    end

    local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
    local display = cairo_create(cs)
    
    local updates = conky_parse('${updates}')
    update_num = tonumber(updates)
    
    if update_num > 5 then
       -- go_clock_rings(display)
        go_gauge_rings(display)
    end
    
    cairo_surface_destroy(cs)
    cairo_destroy(display)
end

----------------START OF PARAMETERS ----------
function conky_main_bars()
    local bars_settings={
        {   --[ Graph for Wireless link quality  ]--
            name="wireless_link_qual_perc",
            arg="wlx4401bb8c2e5f",
            max=100,
            alarm=60,
            alarm_colour={0x20dfdf,0.72},
            bg_colour={0x51d8f7,0.15},
            fg_colour={0x65f296,0.55},
            mid_colour={{0.25,0xff0000,1},{0.5,0x00ff00,1},{0.75,0x0000ff,1}},
            x=199,
            y=425,
            blocks=56,
            space=1,
            height=2,width=5,
            angle=270,
            smooth=false,
            led_effect=true
            },
        {   --[ Graph for Download ]--
            name="downspeedf",
            arg="wlx4401bb8c2e5f",
            max=1000,
            alarm=700,
            alarm_colour={0x4f90f2,0.72},
            bg_colour={0x51d8f7,0.15},
            cap="s",
            fg_colour={0x51f7c0,0.55},
            mid_colour={{0.45,0x4f90f2,0.70}},
            x=199,
            y=493,
            blocks=34,
            space=1,
            height=4,width=12,
            angle=270,
            smooth=false,
            led_effect=true
            },  
            {   --[ Graph for Upload ]--
            name="upspeedf",
            arg="wlx4401bb8c2e5f",
            max=1000,
            alarm=700,
            alarm_colour={0x51d8f7,0.72},
            bg_colour={0x51d8f7,0.15},
            cap="s",
            fg_colour={0x51f7c0,0.55},
            mid_colour={{0.45,0xFFFF00,0.70}},
            x=199,
            y=552,
            blocks=34,
            space=1,
            height=4,width=12,
            angle=270,
            smooth=false,
            led_effect=true
            },
            {   --[ Graph for Top  ]--
            name="top",
            arg="cpu 1",
            max=100,
            alarm=60,
            alarm_colour={0x51d8f7,0.72},
            bg_colour={0x51d8f7,0.15},
            fg_colour={0x20dfdf,0.55},
            mid_colour={{0.45,0x51f7c0,0.90}},
            x=199,
            y=634,
            blocks=25,
            space=1,
            height=2,width=5,
            angle=270,
            smooth=false,
            led_effect=true
            },
            {   --[ Graph for Top  ]--
            name="top",
            arg="cpu 2",
            max=100,
            alarm=60,
            alarm_colour={0x20dfdf,0.72},
            bg_colour={0x51d8f7,0.15},
            fg_colour={0x20dfdf,0.55},
            mid_colour={{0.45,0x51f7c0,0.90}},
            x=199,
            y=648,
            blocks=25,
            space=1,
            height=2,width=5,
            angle=270,
            smooth=false,
            led_effect=true
            },
            {   --[ Graph for Top  ]--
            name="top",
            arg="cpu 3",
            max=100,
            alarm=60,
            alarm_colour={0x20dfdf,0.72},
            bg_colour={0x51d8f7,0.15},
            fg_colour={0x20dfdf,0.55},
            mid_colour={{0.45,0x51f7c0,0.90}},
            x=199,
            y=662,
            blocks=25,
            space=1,
            height=2,width=5,
            angle=270,
            smooth=false,
            led_effect=true
            },
            {   --[ Graph for Top  ]--
            name="top",
            arg="cpu 4",
            max=100,
            alarm=60,
            alarm_colour={0x20dfdf,0.72},
            bg_colour={0x51d8f7,0.15},
            fg_colour={0x20dfdf,0.55},
            mid_colour={{0.45,0x51f7c0,0.90}},
            x=199,
            y=676,
            blocks=25,
            space=1,
            height=2,width=5,
            angle=270,
            smooth=false,
            led_effect=true
            }, 
            {   --[ Graph for Top ]--
            name="top",
            arg="cpu 5",
            max=100,
            alarm=60,
            alarm_colour={0x20dfdf,0.72},
            bg_colour={0x51d8f7,0.15},
            fg_colour={0x20dfdf,0.55},
            mid_colour={{0.45,0x51f7c0,0.90}},
            x=199,
            y=690,
            blocks=25,
            space=1,
            height=2,width=5,
            angle=270,
            smooth=false,
            led_effect=true
            },
            {   --[ Graph for Top  ]--
            name="top",
            arg="cpu 6",
            max=100,
            alarm=60,
            alarm_colour={0x20dfdf,0.72},
            bg_colour={0x51d8f7,0.15},
            fg_colour={0x20dfdf,0.55},
            mid_colour={{0.45,0x51f7c0,0.90}},
            x=199,
            y=704,
            blocks=25,
            space=1,
            height=2,width=5,
            angle=270,
            smooth=false,
            led_effect=true
            },
            {   --[ Graph for RAM  ]--
            name="top_mem",
            arg="mem 1",
            max=100,
            alarm=60,
            alarm_colour={0x20dfdf,0.72},
            bg_colour={0x51d8f7,0.15},
            fg_colour={0x20dfdf,0.55},
            mid_colour={{0.45,0x51f7c0,0.90}},
            x=199,
            y=758,
            blocks=25,
            space=1,
            height=2,width=5,
            angle=270,
            smooth=false,
            led_effect=true
            },
            {   --[ Graph for RAM  ]--
            name="top_mem",
            arg="mem 2",
            max=100,
            alarm=60,
            alarm_colour={0x20dfdf,0.72},
            bg_colour={0x51d8f7,0.15},
            fg_colour={0x20dfdf,0.55},
            mid_colour={{0.45,0x51f7c0,0.90}},
            x=199,
            y=771,
            blocks=25,
            space=1,
            height=2,width=5,
            angle=270,
            smooth=false,
            led_effect=true
            },
            {   --[ Graph for RAM  ]--
            name="top_mem",
            arg="mem 3",
            max=100,
            alarm=60,
            alarm_colour={0x20dfdf,0.72},
            bg_colour={0x51d8f7,0.15},
            fg_colour={0x20dfdf,0.55},
            mid_colour={{0.45,0x51f7c0,0.90}},
            x=199,
            y=784,
            blocks=25,
            space=1,
            height=2,width=5,
            angle=270,
            smooth=false,
            led_effect=true
            }, 
            {   --[ Graph for RAM ]--
            name="top_mem",
            arg="mem 4",
            max=100,
            alarm=60,
            alarm_colour={0x20dfdf,0.72},
            bg_colour={0x51d8f7,0.15},
            fg_colour={0x20dfdf,0.55},
            mid_colour={{0.45,0x51f7c0,0.90}},
            x=199,
            y=797,
            blocks=25,
            space=1,
            height=2,width=5,
            angle=270,
            smooth=false,
            led_effect=true
            },
            {   --[ Graph for RAM  ]--
            name="top_mem",
            arg="mem 5",
            max=100,
            alarm=60,
            alarm_colour={0x20dfdf,0.72},
            bg_colour={0x51d8f7,0.15},
            fg_colour={0x20dfdf,0.55},
            mid_colour={{0.45,0x51f7c0,0.90}},
            x=199,
            y=810,
            blocks=25,
            space=1,
            height=2,width=5,
            angle=270,
            smooth=false,
            led_effect=true
            },  
            {   --[ Graph for RAM  ]--
            name="top_mem",
            arg="mem 5",
            max=100,
            alarm=60,
            alarm_colour={0x20dfdf,0.72},
            bg_colour={0x51d8f7,0.15},
            fg_colour={0x20dfdf,0.55},
            mid_colour={{0.45,0x51f7c0,0.90}},
            x=199,
            y=823,
            blocks=25,
            space=1,
            height=2,width=5,
            angle=270,
            smooth=false,
            led_effect=true
            }, 
         }  
-----------END OF PARAMETERS--------------


    
    if conky_window == nil then return end
    
    local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
    
    cr = cairo_create(cs)    
    --prevent segmentation error when reading cpu state
    if tonumber(conky_parse('${updates}'))>3 then
        for i in pairs(bars_settings) do
            
            draw_multi_bar_graph(bars_settings[i])
            
        end
    end
    cairo_destroy(cr)
    cairo_surface_destroy(cs)
    cr=nil

end



function draw_multi_bar_graph(t)
    cairo_save(cr)
    --check values
    if t.draw_me == true then t.draw_me = nil end
    if t.draw_me ~= nil and conky_parse(tostring(t.draw_me)) ~= "1" then return end 
    if t.name==nil and t.arg==nil then 
        print ("No input values ... use parameters 'name' with 'arg' or only parameter 'arg' ") 
        return
    end
    if t.max==nil then
        print ("No maximum value defined, use 'max'")
        return
    end
    if t.name==nil then t.name="" end
    if t.arg==nil then t.arg="" end

    --set default values    
    if t.x == nil       then t.x = conky_window.width/2 end
    if t.y == nil       then t.y = conky_window.height/2 end
    if t.blocks == nil  then t.blocks=10 end
    if t.height == nil  then t.height=10 end
    if t.angle == nil   then t.angle=0 end
    t.angle = t.angle*math.pi/180
    --line cap style
    if t.cap==nil       then t.cap = "b" end
    local cap="b"
    for i,v in ipairs({"s","r","b"}) do 
        if v==t.cap then cap=v end
    end
    local delta=0
    if t.cap=="r" or t.cap=="s" then delta = t.height end
    if cap=="s" then    cap = CAIRO_LINE_CAP_SQUARE
    elseif cap=="r" then
        cap = CAIRO_LINE_CAP_ROUND
    elseif cap=="b" then
        cap = CAIRO_LINE_CAP_BUTT
    end
    --end line cap style
    --if t.led_effect == nil    then t.led_effect="r" end
    if t.width == nil   then t.width=20 end
    if t.space == nil   then t.space=2 end
    if t.radius == nil  then t.radius=0 end
    if t.angle_bar == nil   then t.angle_bar=0 end
    t.angle_bar = t.angle_bar*math.pi/360 --halt angle
    
    --colours
    if t.bg_colour == nil   then t.bg_colour = {0xaf73fa,0.5} end
    if #t.bg_colour~=2      then t.bg_colour = {0xaf73fa,0.5} end
    if t.fg_colour == nil   then t.fg_colour = {0xaf73fa,1} end
    if #t.fg_colour~=2      then t.fg_colour = {0xaf73fa,1} end
    if t.alarm_colour == nil    then t.alarm_colour = t.fg_colour end
    if #t.alarm_colour~=2       then t.alarm_colour = t.fg_colour end

    if t.mid_colour ~= nil then 
        for i=1, #t.mid_colour do    
            if #t.mid_colour[i]~=3 then 
                print ("error in mid_color table")
                t.mid_colour[i]={1,0xFFFFFF,1} 
            end
        end
    end
    
    if t.bg_led ~= nil and #t.bg_led~=2 then t.bg_led = t.bg_colour end
    if t.fg_led ~= nil and #t.fg_led~=2 then t.fg_led = t.fg_colour end
    if t.alarm_led~= nil and #t.alarm_led~=2 then t.alarm_led = t.fg_led end
    
    if t.led_effect~=nil then
        if t.bg_led == nil then t.bg_led = t.bg_colour end
        if t.fg_led == nil  then t.fg_led = t.fg_colour end
        if t.alarm_led == nil  then t.alarm_led = t.fg_led end
    end
    

    if t.alarm==nil then t.alarm = t.max end --0.8*t.max end
    if t.smooth == nil then t.smooth = false end

    if t.skew_x == nil then 
        t.skew_x=0 
    else
        t.skew_x = math.pi*t.skew_x/180 
    end
    if t.skew_y == nil then 
        t.skew_y=0
    else
        t.skew_y = math.pi*t.skew_y/180 
    end
    
    if t.reflection_alpha==nil then t.reflection_alpha=0 end
    if t.reflection_length==nil then t.reflection_length=1 end
    if t.reflection_scale==nil then t.reflection_scale=1 end
    
    --end of default values
    

    local function rgb_to_r_g_b(col_a)
        return ((col_a[1] / 0x10000) % 0x100) / 255., ((col_a[1] / 0x100) % 0x100) / 255., (col_a[1] % 0x100) / 255., col_a[2]
    end
    
    
    --functions used to create patterns

    local function create_smooth_linear_gradient(x0,y0,x1,y1)
        local pat = cairo_pattern_create_linear (x0,y0,x1,y1)
        cairo_pattern_add_color_stop_rgba (pat, 0, rgb_to_r_g_b(t.fg_colour))
        cairo_pattern_add_color_stop_rgba (pat, 1, rgb_to_r_g_b(t.alarm_colour))
        if t.mid_colour ~=nil then
            for i=1, #t.mid_colour do
                cairo_pattern_add_color_stop_rgba (pat, t.mid_colour[i][1], rgb_to_r_g_b({t.mid_colour[i][2],t.mid_colour[i][3]}))
            end
        end
        return pat
    end

    local function create_smooth_radial_gradient(x0,y0,r0,x1,y1,r1)
        local pat =  cairo_pattern_create_radial (x0,y0,r0,x1,y1,r1)
        cairo_pattern_add_color_stop_rgba (pat, 0, rgb_to_r_g_b(t.fg_colour))
        cairo_pattern_add_color_stop_rgba (pat, 1, rgb_to_r_g_b(t.alarm_colour))
        if t.mid_colour ~=nil then
            for i=1, #t.mid_colour do
                cairo_pattern_add_color_stop_rgba (pat, t.mid_colour[i][1], rgb_to_r_g_b({t.mid_colour[i][2],t.mid_colour[i][3]}))
            end
        end
        return pat
    end
    
    local function create_led_linear_gradient(x0,y0,x1,y1,col_alp,col_led)
        local pat = cairo_pattern_create_linear (x0,y0,x1,y1) ---delta, 0,delta+ t.width,0)
        cairo_pattern_add_color_stop_rgba (pat, 0.0, rgb_to_r_g_b(col_alp))
        cairo_pattern_add_color_stop_rgba (pat, 0.5, rgb_to_r_g_b(col_led))
        cairo_pattern_add_color_stop_rgba (pat, 1.0, rgb_to_r_g_b(col_alp))
        return pat
    end

    local function create_led_radial_gradient(x0,y0,r0,x1,y1,r1,col_alp,col_led,mode)
        local pat = cairo_pattern_create_radial (x0,y0,r0,x1,y1,r1)
        if mode==3 then
            cairo_pattern_add_color_stop_rgba (pat, 0, rgb_to_r_g_b(col_alp))               
            cairo_pattern_add_color_stop_rgba (pat, 0.5, rgb_to_r_g_b(col_led))
            cairo_pattern_add_color_stop_rgba (pat, 1, rgb_to_r_g_b(col_alp))               
        else
            cairo_pattern_add_color_stop_rgba (pat, 0, rgb_to_r_g_b(col_led))
            cairo_pattern_add_color_stop_rgba (pat, 1, rgb_to_r_g_b(col_alp))               
        end
        return pat
    end






    local function draw_single_bar()
        --this fucntion is used for bars with a single block (blocks=1) but 
        --the drawing is cut in 3 blocks : value/alarm/background
        --not zvzimzblr for circular bar
        local function create_pattern(col_alp,col_led,bg)
            local pat
            
            if not t.smooth then
                if t.led_effect=="e" then
                    pat = create_led_linear_gradient (-delta, 0,delta+ t.width,0,col_alp,col_led)
                elseif t.led_effect=="a" then
                    pat = create_led_linear_gradient (t.width/2, 0,t.width/2,-t.height,col_alp,col_led)
                elseif  t.led_effect=="r" then
                    pat = create_led_radial_gradient (t.width/2, -t.height/2, 0, t.width/2,-t.height/2,t.height/1.5,col_alp,col_led,2)
                else
                    pat = cairo_pattern_create_rgba  (rgb_to_r_g_b(col_alp))
                end
            else
                if bg then
                    pat = cairo_pattern_create_rgba  (rgb_to_r_g_b(t.bg_colour))
                else
                    pat = create_smooth_linear_gradient(t.width/2, 0, t.width/2,-t.height)
                end
            end
            return pat
        end
        
        local y1=-t.height*pct/100
        local y2,y3
        if pct>(100*t.alarm/t.max) then 
            y1 = -t.height*t.alarm/100
            y2 = -t.height*pct/100
            if t.smooth then y1=y2 end
        end
        
        if t.angle_bar==0 then
        
            --block for fg value
            local pat = create_pattern(t.fg_colour,t.fg_led,false)
            cairo_set_source(cr,pat)
            cairo_rectangle(cr,0,0,t.width,y1)
            cairo_fill(cr)
            cairo_pattern_destroy(pat)
        
            -- block for alarm value            
            if not t.smooth and y2 ~=nil then 
                pat = create_pattern(t.alarm_colour,t.alarm_led,false)
                cairo_set_source(cr,pat)
                cairo_rectangle(cr,0,y1,t.width,y2-y1)
                cairo_fill(cr)
                y3=y2
                cairo_pattern_destroy(pat)
            else
                y2,y3=y1,y1
            end
            -- block for bg value
            cairo_rectangle(cr,0,y2,t.width,-t.height-y3)
            pat = create_pattern(t.bg_colour,t.bg_led,true)
            cairo_set_source(cr,pat)
            cairo_pattern_destroy(pat)
            cairo_fill(cr)
        end     
    end  --end single bar
    





    local function draw_multi_bar()
        --function used for bars with 2 or more blocks
        for pt = 1,t.blocks do 
            --set block y
            local y1 = -(pt-1)*(t.height+t.space)
            local light_on=false
            
            --set colors
            local col_alp = t.bg_colour
            local col_led = t.bg_led
            if pct>=(100/t.blocks) or pct>0 then --ligth on or not the block
                if pct>=(pcb*(pt-1))  then 
                    light_on = true
                    col_alp = t.fg_colour
                    col_led = t.fg_led
                    if pct>=(100*t.alarm/t.max) and (pcb*pt)>(100*t.alarm/t.max) then 
                        col_alp = t.alarm_colour 
                        col_led = t.alarm_led 
                    end
                end
            end

            --set colors
            --have to try to create gradients outside the loop ?
            local pat 
            
            if not t.smooth then
                if t.angle_bar==0 then
                    if t.led_effect=="e" then
                        pat = create_led_linear_gradient (-delta, 0,delta+ t.width,0,col_alp,col_led)
                    elseif t.led_effect=="a" then
                        pat = create_led_linear_gradient (t.width/2, -t.height/2+y1,t.width/2,0+t.height/2+y1,col_alp,col_led)                  
                    elseif  t.led_effect=="r" then
                        pat = create_led_radial_gradient (t.width/2, y1, 0, t.width/2,y1,t.width/1.5,col_alp,col_led,2) 
                    else
                        pat = cairo_pattern_create_rgba  (rgb_to_r_g_b(col_alp))
                    end
                else
                     if t.led_effect=="a"  then
                         pat = create_led_radial_gradient (0, 0, t.radius+(t.height+t.space)*(pt-1),
                                                         0, 0, t.radius+(t.height+t.space)*(pt),                         
                                             col_alp,col_led,3) 
                    else
                        pat = cairo_pattern_create_rgba  (rgb_to_r_g_b(col_alp))                    
                    end
                    
                end
            else
                
                if light_on then
                    if t.angle_bar==0 then
                        pat = create_smooth_linear_gradient(t.width/2, t.height/2, t.width/2,-(t.blocks-0.5)*(t.height+t.space))
                    else
                        pat = create_smooth_radial_gradient(0, 0, (t.height+t.space),  0,0,(t.blocks+1)*(t.height+t.space),2)
                    end
                else        
                    pat = cairo_pattern_create_rgba  (rgb_to_r_g_b(t.bg_colour))
                end
            end
            cairo_set_source (cr, pat)
            cairo_pattern_destroy(pat)

            --draw a block
            if t.angle_bar==0 then
                cairo_move_to(cr,0,y1)
                cairo_line_to(cr,t.width,y1)
            else        
                cairo_arc( cr,0,0,
                    t.radius+(t.height+t.space)*(pt)-t.height/2,
                     -t.angle_bar -math.pi/2 ,
                     t.angle_bar -math.pi/2)
            end
            cairo_stroke(cr)
        end 
    end
    
    
    
    
    local function setup_bar_graph()
        --function used to retrieve the value to display and to set the cairo structure
        if t.blocks ~=1 then t.y=t.y-t.height/2 end
        
        local value = 0
        if t.name ~="" then
            value = tonumber(conky_parse(string.format('${%s %s}', t.name, t.arg)))
            --$to_bytes doesn't work when value has a decimal point,
            --https://garage.maemo.org/plugins/ggit/browse.php/?p=monky;a=commitdiff;h=174c256c81a027a2ea406f5f37dc036fac0a524b;hp=d75e2db5ed3fc788fb8514121f67316ac3e5f29f
            --http://sourceforge.net/tracker/index.php?func=detail&aid=3000865&group_id=143975&atid=757310
            --conky bug?
            --value = (conky_parse(string.format('${%s %s}', t.name, t.arg)))
            --if string.match(value,"%w") then
            --  value = conky_parse(string.format('${to_bytes %s}',value))
            --end
        else
            value = tonumber(t.arg)
        end

        if value==nil then value =0 end
        
        pct = 100*value/t.max
        pcb = 100/t.blocks
        
        cairo_set_line_width (cr, t.height)
        cairo_set_line_cap  (cr, cap)
        cairo_translate(cr,t.x,t.y)
        cairo_rotate(cr,t.angle)

        local matrix0 = cairo_matrix_t:create()
        tolua.takeownership(matrix0)
        cairo_matrix_init (matrix0, 1,t.skew_y,t.skew_x,1,0,0)
        cairo_transform(cr,matrix0)

    
        
        --call the drawing function for blocks
        if t.blocks==1 and t.angle_bar==0 then
            draw_single_bar()
            if t.reflection=="t" or t.reflection=="b" then cairo_translate(cr,0,-t.height) end
        else
            draw_multi_bar()
        end

        --dot for reminder
        --[[
        if t.blocks ~=1 then
            cairo_set_source_rgba(cr,1,0,0,1)
            cairo_arc(cr,0,t.height/2,3,0,2*math.pi)
            cairo_fill(cr)
        else
            cairo_set_source_rgba(cr,1,0,0,1)
            cairo_arc(cr,0,0,3,0,2*math.pi)
            cairo_fill(cr)
        end]]
        
        --call the drawing function for reflection and prepare the mask used        
        if t.reflection_alpha>0 and t.angle_bar==0 then
            local pat2
            local matrix1 = cairo_matrix_t:create()
            tolua.takeownership(matrix1)
            if t.angle_bar==0 then
                pts={-delta/2,(t.height+t.space)/2,t.width+delta,-(t.height+t.space)*(t.blocks)}
                if t.reflection=="t" then
                    cairo_matrix_init (matrix1,1,0,0,-t.reflection_scale,0,-(t.height+t.space)*(t.blocks-0.5)*2*(t.reflection_scale+1)/2)
                    pat2 = cairo_pattern_create_linear (t.width/2,-(t.height+t.space)*(t.blocks),t.width/2,(t.height+t.space)/2)
                elseif t.reflection=="r" then
                    cairo_matrix_init (matrix1,-t.reflection_scale,0,0,1,delta+2*t.width,0)
                    pat2 = cairo_pattern_create_linear (delta/2+t.width,0,-delta/2,0)
                elseif t.reflection=="l" then
                    cairo_matrix_init (matrix1,-t.reflection_scale,0,0,1,-delta,0)
                    pat2 = cairo_pattern_create_linear (-delta/2,0,delta/2+t.width,-0)
                else --bottom
                    cairo_matrix_init (matrix1,1,0,0,-1*t.reflection_scale,0,(t.height+t.space)*(t.reflection_scale+1)/2)
                    pat2 = cairo_pattern_create_linear (t.width/2,(t.height+t.space)/2,t.width/2,-(t.height+t.space)*(t.blocks))
                end
            end
            cairo_transform(cr,matrix1)

            if t.blocks==1 and t.angle_bar==0 then
                draw_single_bar()
                cairo_translate(cr,0,-t.height/2) 
            else
                draw_multi_bar()
            end
            
            
            cairo_set_line_width(cr,0.01)
            cairo_pattern_add_color_stop_rgba (pat2, 0,0,0,0,1-t.reflection_alpha)
            cairo_pattern_add_color_stop_rgba (pat2, t.reflection_length,0,0,0,1)
            if t.angle_bar==0 then
                cairo_rectangle(cr,pts[1],pts[2],pts[3],pts[4])
            end
            cairo_clip_preserve(cr)
            cairo_set_operator(cr,CAIRO_OPERATOR_CLEAR)
            cairo_stroke(cr)
            cairo_mask(cr,pat2)
            cairo_pattern_destroy(pat2)
            cairo_set_operator(cr,CAIRO_OPERATOR_OVER)
            
        end --reflection
        pct,pcb=nil
    end --setup_bar_graph()
    
    --start here !
    setup_bar_graph()
    cairo_restore(cr)
end

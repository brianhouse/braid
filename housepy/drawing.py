#! /usr/bin/env python

# 
# Copyright (c) 2011 Brian House
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# 
# See <http://www.gnu.org/licenses/gpl.html> for details.
# 

"""

Description
===========

A simple drawing interface for Python that wraps PIL and aggdraw.

For slightly more information, see http://blog.brianhouse.net/post/6836163797


Requirements
============

Python 2.6+
PIL http://www.pythonware.com/products/pil/
aggdraw http://effbot.org/zone/aggdraw-index.htm (for 64-bit systems (eg OSX), use https://bitbucket.org/2degrees/aggdraw-64bits/src)


Using
=====

See the __main__ function below for a quick example.

Note on colors:
Colors are specified as a tuple of R, G, B, A values in the default mode and H, S, V, A if hsv was indicated in the class constructor. Alpha is optional.
If ints are used, 0-255 is assumed, whereas floats imply a 0-1 scale. Values can be mixed.
'stroke' refers to the lines/borders of a shape, with the supplied 'thickness'. To draw shapes without borders, set thickness to 0 and specify a fill.

Also, note that, unlike Processing or Canvas, this is not a state machine -- values must be specified with every command.


Todo
====

Polygons / polylines
Rotated shapes


"""

import cairo, colorsys, math, time, subprocess

class Context(object):
    """The drawing context"""    
       
    def __init__(self, width=800, height=600, background=(1., 1., 1., 1.), hsv=False, flip=False, relative=False, margin=0):
        self._width = float(width)
        self._height = float(height)
        self._surface = cairo.ImageSurface(cairo.FORMAT_ARGB32, width, height)
        self._ctx = cairo.Context(self._surface)
        self._ctx.set_source_rgba(*background)
        self._ctx.rectangle(0, 0, self._width, self._height)
        self._ctx.fill()
        if relative:
            self._ctx.scale(self._width, self._height)
        if flip:
            self._ctx.scale(1, -1)
            self._ctx.translate(0, -1)
        self._ctx.save()


    """Public Methods"""

    @property
    def width(self):
        """Return the width of the drawing context."""
        return self._width
        
    @property
    def height(self):
        """Return the height of the drawing context."""        
        return self._height    

    def line(self, x1, y1=None, x2=None, y2=None, stroke=(0.0, 0.0, 0.0, 1.0), thickness=1.0):
        """Draw a line from x1,y1 to x2,y2, or between all points (as x,y pairs) in a list."""        
        self._ctx.set_source_rgba(*stroke)
        self._ctx.set_line_cap(cairo.LINE_CAP_SQUARE)        
        if type(x1) == tuple or type(x1) == list:
            self._ctx.move_to(*x1[0])
            for point in x1[1:]:
                self._ctx.line_to(*point)
        else:
            self._ctx.move_to(x1, y1)
            self._ctx.line_to(x2, y2)
        self._ctx.scale(1.0 / self._width, 1.0 / self._height)
        self._ctx.set_line_width(thickness)
        # self._ctx.set_line_join(cairo.LINE_JOIN_ROUND);        
        # self._ctx.set_line_join(cairo.LINE_JOIN_BEVEL);                
        self._ctx.stroke()
        self._ctx.restore()                
        self._ctx.save()



        # 
        # self._verify_context()
        # stroke = self._handle_color(stroke)
        # pen = aggdraw.Pen(stroke[:3], thickness, stroke[3])
        # if type(x1) == tuple or type(x1) == list:
        #     points = []
        #     for point in x1:
        #         points.extend((self._horiz(point[0]), self._vert(point[1])))
        #     self._ctx.line(points, pen)
        # else:            
        #     self._ctx.line((self._horiz(x1), self._vert(y1), self._horiz(x2), self._vert(y2)), pen)
        # self._valid = False


    def output(self, filename=None):
        self._ctx.stroke() # commit to surface
        if filename is None:
            filename = "%s.png" % int(time.time() * 1000)
        self._surface.write_to_png(filename) # write to file
        subprocess.call(["open", filename])


# # draw text
# ctx.select_font_face('Sans')
# ctx.set_font_size(60) # em-square height is 90 pixels
# ctx.move_to(10, 90) # move to point (x, y) = (10, 90)
# ctx.set_source_rgb(1.00, 0.83, 0.00) # yellow
# ctx.show_text('Hello World')


# import aggdraw, colorsys, math, time
# from .log import log

# class Context(object):
#     """The drawing context"""    
       
#     def __init__(self, width=800, height=600, background=None, hsv=False, flip=False, relative=False, margin=0):
#         """ Create a drawing context of a given size and background color. 'hsv' specifies if we should use hsv color values instead of the default rgb.
#             'flip' inverts the vertical axis.
#             'relative' indicates that all methods will take x, y, width, and height values as floats from 0-1 scaled relatively across the canvas.
#             'margin' adds margin pixels to all sides that are outside of the coordinate system.
#             These flags may be useful for looking at scaled data without having to convert to pixel positions.
#         """    
#         self._width = float(width)
#         self._height = float(height)
#         self._hsv = hsv
#         self.background = background
#         if not background:
#             self.background = (0.0, 0.0, 1.0) if self._hsv else (1.0, 1.0, 1.0)
#         self._ctx = None
#         self.mode = "RGBA" if len(self.background) > 3 else "RGB"
#         self._image = Image.new(self.mode, (width, height), self._handle_color(self.background))
#         self._verify_context()
#         self._valid = True
#         self._horiz = (lambda x: x + margin) if not relative else (lambda x: (x * (self.width - (2.0 * margin))) + margin)
#         self._flip = flip
#         self._perform_flip = (lambda y: float(self.height) - y) if flip else (lambda y: y)
#         self._vert = (lambda y: self._perform_flip(y + margin)) if not relative else (lambda y: self._perform_flip((y * (self.height - (2.0 * margin))) + margin))
        
#     def _verify_context(self):
#         if not self._ctx:
#             self._ctx = aggdraw.Draw(self._image)            

#     def _render(self):
#         if not self._valid and self._ctx:
#             self._ctx.flush()
#             self._valid = True            

#     def _handle_color(self, args):
#         if type(args) == float or type(args) == int:
#             args = [args] * 3
#         color = [0.0, 0.0, 0.0, 1.0]
#         for i, arg in enumerate(args):
#             color[i] = arg
#             if type(arg) == int:
#                 color[i] /= 255.0
#         if self._hsv:
#             color[0], color[1], color[2] = colorsys.hsv_to_rgb(*color[:3])
#         return int(color[0] * 255.0), int(color[1] * 255.0), int(color[2] * 255.0), int(color[3] * 255.0)

#     """Public Methods"""

#     @property
#     def width(self):
#         """Return the width of the drawing context."""
#         return self._width
        
#     @property
#     def height(self):
#         """Return the height of the drawing context."""        
#         return self._height    

#     @property    
#     def image(self):
#         """Return the drawing context as a PIL image."""
#         if not self._valid:
#             self._render()
#         return self._image    
        
#     def line(self, x1, y1=None, x2=None, y2=None, stroke=(0.0, 0.0, 0.0, 1.0), thickness=1.0):
#         """Draw a line from x1,y1 to x2,y2, or between all points (as x,y pairs) in a list."""
#         self._verify_context()
#         stroke = self._handle_color(stroke)
#         pen = aggdraw.Pen(stroke[:3], thickness, stroke[3])
#         if type(x1) == tuple or type(x1) == list:
#             points = []
#             for point in x1:
#                 points.extend((self._horiz(point[0]), self._vert(point[1])))
#             self._ctx.line(points, pen)
#         else:            
#             self._ctx.line((self._horiz(x1), self._vert(y1), self._horiz(x2), self._vert(y2)), pen)
#         self._valid = False
        
#     def curve(self, x1, y1, xc, yc, x2, y2, stroke=(0.0, 0.0, 0.0, 1.0), thickness=1.0, steps=100):
#         """Draw a curve from x1,y1 to x2,y2 with control point xc, yc. TODO: arbitrary number of control points, dynamic steps selection."""                
#         self._verify_context()
#         stroke = self._handle_color(stroke)
#         pen = aggdraw.Pen(stroke[:3], thickness, stroke[3])
#         pt0 = self._horiz(x1), self._vert(y1)
#         pt1 = self._horiz(xc), self._vert(yc)
#         pt2 = self._horiz(x2), self._vert(y2)                
#         points = []
#         for i in range(steps):
#             t = float(i) / steps
#             x = ((1-t)**2 * pt0[0]) + (2 * (1-t) * t * pt1[0]) + (t**2 * pt2[0])
#             y = ((1-t)**2 * pt0[1]) + (2 * (1-t) * t * pt1[1]) + (t**2 * pt2[1])
#             points.extend((x, y))
#         points.extend(pt2)
#         self._ctx.line(points, pen)                    
#         self._valid = False        
        
#     def rect(self, x, y, width, height, stroke=(0.0, 0.0, 0.0, 1.0), thickness=1.0, fill=None):
#         """Draw a rectangle with the upper left point at x,y."""
#         self._verify_context()
#         stroke = self._handle_color(stroke)
#         pen = aggdraw.Pen(stroke[:3], thickness, stroke[3])  
#         brush = None
#         if fill:    
#             fill = self._handle_color(fill)
#             brush = aggdraw.Brush(fill[:3], fill[3])              
#         self._ctx.rectangle((self._horiz(x), self._vert(y), self._horiz(x + width), self._vert(y + height)), pen, brush)   
#         self._valid = False        

#     def arc(self, center_x, center_y, radius_x, radius_y=None, start=0, end=360, stroke=(0.0, 0.0, 0.0, 1.0), thickness=1.0, fill=None):
#         """ Draw an arc / ellipse / circle / pieslice. 'start' and 'end' are angles in degrees; 0 is 3:00 and degrees move clockwise.
#             Specify both radius_x and radius_y to make ellipses; fill to make a pie slice.
#         """
#         self._verify_context()
#         stroke = self._handle_color(stroke)
#         pen = aggdraw.Pen(stroke[:3], thickness, stroke[3])
#         brush = None
#         if not radius_y:
#             radius_y = radius_x
#         if fill:    
#             fill = self._handle_color(fill)
#             brush = aggdraw.Brush(fill[:3], fill[3]) 
#         coords = (self._horiz(center_x - radius_x), self._vert(center_y - radius_y), self._horiz(center_x + radius_x), self._vert(center_y + radius_y))                         
#         if self._flip:
#             coords = coords[0], coords[3], coords[2], coords[1]
#         else:                
#             tmp = 360 - start
#             start = 360 - end
#             end = tmp
#         if start == 0 and end == 360:
#             self._ctx.ellipse(coords, pen, brush)        
#         elif fill:
#             self._ctx.pieslice(coords, start, end, pen, brush)
#         else:    
#             self._ctx.arc(coords, start, end, pen)            
#         self._valid = False        

#     def spiral(self, center_x, center_y, radius_x, radius_y=None, start_degrees=0, end_degrees=5*360, stroke=(0.0, 0.0, 0.0, 1.0), thickness=1.0, resolution=0.01, clockwise=True):
#         """Draws spirals"""
#         self._verify_context()
#         stroke = self._handle_color(stroke)
#         pen = aggdraw.Pen(stroke[:3], thickness, stroke[3])
#         center = self._horiz(center_x), self._vert(center_y)
#         if not radius_y:
#             radius_y = radius_x 
#         turns = float(end_degrees) / 360
#         # inner_radius = 300
        
#         inner_radius = math.pi
#         inner_radius = 0
#         # inner_radius /= math.pi * 2.0
#         # print str(inner_radius) 

#         # radius_x -= inner_radius
#         # radius_y -= inner_radius

#         radius_x /= math.pi * 2.0 * turns
#         radius_y /= math.pi * 2.0 * turns

#         points = []
#         t = math.pi * 2.0 * (float(start_degrees) / 360.0)

#         while t < math.pi * 2.0 * turns:
#             x = (1 if clockwise else -1) * ((t + inner_radius) * math.cos(t) * radius_x) + center[0]
#             y = ((t + inner_radius) * math.sin(t) * radius_y) + center[1]
#             points.extend((x, y))
#             t += resolution
#         self._ctx.line(points, pen)                    
#         self._valid = False        

#     def text(self, text, font, x, y, stroke=(0.0, 0.0, 0.0, 1.0), size=18, center=False):
#         """Draw text at x,y. 'font' should be the path to a TrueType font."""
#         self._render()
#         self._ctx = None # it's necessary to kill aggdraw before using Draw
#         draw = ImageDraw.Draw(self._image)
#         font = ImageFont.truetype(font, size)        
#         size = draw.textsize(text, font=font)
#         x, y = self._horiz(x), self._vert(y)
#         if center:
#             x -= size[0] * 0.5
#         y -= size[1] * 0.5
#         stroke = self._handle_color(stroke)        
#         draw.text((x, y), text, font=font, fill=stroke[:3])

#     def blur(self):        
#         """Apply a blur filter to the drawing context."""
#         self._render()
#         self._image = self._image.filter(ImageFilter.BLUR)
#         self._ctx = None

#     def smooth(self):
#         """Apply a smoothing filter to the drawing context."""
#         self._render()
#         self._image = self._image.filter(ImageFilter.SMOOTH)
#         self._ctx = None        

#     def sharpen(self):
#         """Apply a sharpen filter to the drawing context."""        
#         self._render()
#         self._image = self._image.filter(ImageFilter.SHARPEN)
#         self._ctx = None        

#     def contrast(self): # todo: autocontrast, except if there is an argument, then adjust contrast
#         """Apply autocontrast to the drawing context."""            
#         if self.mode != 'RGB':
#             raise Exception("RGB mode required for 'contrast'")
#         self._render()
#         self._image = ImageOps.autocontrast(self._image)
#         self._ctx = None        

#     def show(self):
#         """Display the drawing context."""     
#         if not self._valid:
#             self._render()
#         self.image.show()
            
#     def clear(self):
#         if self.mode != 'RGBA' or self.background[3] == 1.0:
#             self.rect(0, 0, self.width, self.height, thickness=0.0, fill=self.background)
#         else:
#             self._image = Image.new(self.mode, self._image.size, self._handle_color(self.background))
#             self._ctx = None
#             self._valid = True

                
# if __name__ == "__main__":
    
#     # rainbow ellipse specified relatively and in hsv
#     ctx = Context(640, 480, (0, 0, 0), relative=True, hsv=True)    
#     for i in range(0, 100):
#         v = (100 - i) / 100.0
#         ctx.arc(0.5, 0.5, v, 0.75 * v, fill=(v, 1.0, 1.0), thickness=0)    
#     ctx.blur()    
#     ctx.show()

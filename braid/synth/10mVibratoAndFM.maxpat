{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 393.0, 178.0, 687.0, 456.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 393.0, 178.0, 687.0, 456.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 1,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Volume",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 37.0, 248.0, 50.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-1",
					"numoutlets" : 0,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"fontname" : "Arial",
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"interp" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 7.0, 232.0, 28.0, 58.0 ],
					"presentation" : 0,
					"id" : "obj-2",
					"stripecolor" : [ 0.86, 0.9, 0.68, 0.7 ],
					"numoutlets" : 2,
					"bordercolor" : [ 0.33334, 0.33334, 0.33334, 1.0 ],
					"orientation" : 2,
					"knobcolor" : [ 0.86667, 0.86667, 0.86667, 1.0 ],
					"background" : 0,
					"size" : 158,
					"outlettype" : [ "signal", "int" ],
					"inc" : 1.071519,
					"scale" : 7.94321,
					"relative" : 0,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.66667, 0.66667, 0.66667, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "scale over-all amplitude",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 348.0, 122.0, 132.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-3",
					"numoutlets" : 0,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"fontname" : "Arial",
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "scale the depth (amplitude) of the modulating oscillator",
					"linecount" : 4,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 231.0, 76.0, 97.0, 60.0 ],
					"presentation" : 0,
					"id" : "obj-4",
					"numoutlets" : 0,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"fontname" : "Arial",
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "carrier frequency is modulated by addition with another waveform",
					"linecount" : 2,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 51.0, 154.0, 187.0, 33.0 ],
					"presentation" : 0,
					"id" : "obj-5",
					"numoutlets" : 0,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"fontname" : "Arial",
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "initialize values",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 404.0, 273.0, 89.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-6",
					"numoutlets" : 0,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"fontname" : "Arial",
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"offgradcolor1" : [ 0.87, 0.87, 0.87, 1.0 ],
					"ongradcolor1" : [ 0.75, 0.79, 0.93, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 6.0, 304.0, 33.0, 33.0 ],
					"ongradcolor2" : [ 0.66, 0.66, 0.72, 1.0 ],
					"presentation" : 0,
					"offgradcolor2" : [ 0.7, 0.7, 0.73, 1.0 ],
					"id" : "obj-7",
					"numoutlets" : 0,
					"local" : 108,
					"background" : 0,
					"ignoreclick" : 0,
					"bgcolor" : [ 0.51, 0.51, 0.51, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\ramp 0.5;\rmoddepth 15.;\rmodrate 6.;\rfreq 1000.",
					"linecount" : 5,
					"fontface" : 0,
					"numinlets" : 2,
					"fontsize" : 11.595187,
					"patching_rect" : [ 404.0, 198.0, 88.0, 71.0 ],
					"presentation" : 0,
					"id" : "obj-8",
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0,
					"gradient" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontface" : 0,
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 404.0, 177.0, 58.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-9",
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Modulation Depth",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 231.0, 3.0, 101.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-10",
					"numoutlets" : 0,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"fontname" : "Arial",
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Amplitude",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 348.0, 3.0, 62.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-11",
					"numoutlets" : 0,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"fontname" : "Arial",
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Modulator Frequency",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 109.0, 3.0, 120.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-12",
					"numoutlets" : 0,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"fontname" : "Arial",
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r amp",
					"fontface" : 0,
					"numinlets" : 0,
					"fontsize" : 11.595187,
					"patching_rect" : [ 348.0, 28.0, 40.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-13",
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r moddepth",
					"fontface" : 0,
					"numinlets" : 0,
					"fontsize" : 11.595187,
					"patching_rect" : [ 231.0, 28.0, 69.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-14",
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r modrate",
					"fontface" : 0,
					"numinlets" : 0,
					"fontsize" : 11.595187,
					"patching_rect" : [ 109.0, 28.0, 60.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-15",
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r freq",
					"fontface" : 0,
					"numinlets" : 0,
					"fontsize" : 11.595187,
					"patching_rect" : [ 6.0, 28.0, 38.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-16",
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$1 50",
					"fontface" : 0,
					"numinlets" : 2,
					"fontsize" : 11.595187,
					"patching_rect" : [ 348.0, 75.0, 40.0, 18.0 ],
					"presentation" : 0,
					"id" : "obj-17",
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0,
					"gradient" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"fontface" : 0,
					"numinlets" : 1,
					"cantchange" : 0,
					"fontsize" : 11.595187,
					"maximum" : 1.0,
					"patching_rect" : [ 348.0, 51.0, 67.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-18",
					"numoutlets" : 2,
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"triscale" : 0.9,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"mouseup" : 0,
					"triangle" : 1,
					"outlettype" : [ "float", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"numdecimalplaces" : 0,
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outputonclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : "<none>",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"fontface" : 0,
					"numinlets" : 1,
					"cantchange" : 0,
					"fontsize" : 11.595187,
					"maximum" : "<none>",
					"patching_rect" : [ 231.0, 51.0, 67.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-19",
					"numoutlets" : 2,
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"triscale" : 0.9,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"mouseup" : 0,
					"triangle" : 1,
					"outlettype" : [ "float", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"numdecimalplaces" : 0,
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outputonclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : "<none>",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"fontface" : 0,
					"numinlets" : 1,
					"cantchange" : 0,
					"fontsize" : 11.595187,
					"maximum" : "<none>",
					"patching_rect" : [ 109.0, 51.0, 67.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-20",
					"numoutlets" : 2,
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"triscale" : 0.9,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"mouseup" : 0,
					"triangle" : 1,
					"outlettype" : [ "float", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"numdecimalplaces" : 0,
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outputonclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"fontface" : 0,
					"numinlets" : 2,
					"fontsize" : 11.595187,
					"patching_rect" : [ 348.0, 100.0, 35.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-21",
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"outlettype" : [ "signal", "bang" ],
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"fontface" : 0,
					"numinlets" : 2,
					"fontsize" : 11.595187,
					"patching_rect" : [ 6.0, 206.0, 32.5, 20.0 ],
					"presentation" : 0,
					"id" : "obj-22",
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : "<none>",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"fontface" : 0,
					"numinlets" : 1,
					"cantchange" : 0,
					"fontsize" : 11.595187,
					"maximum" : "<none>",
					"patching_rect" : [ 6.0, 51.0, 67.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-23",
					"numoutlets" : 2,
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"triscale" : 0.9,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"mouseup" : 0,
					"triangle" : 1,
					"outlettype" : [ "float", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"numdecimalplaces" : 0,
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outputonclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"fontface" : 0,
					"numinlets" : 2,
					"fontsize" : 11.595187,
					"patching_rect" : [ 109.0, 105.0, 32.5, 20.0 ],
					"presentation" : 0,
					"id" : "obj-24",
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+~",
					"fontface" : 0,
					"numinlets" : 2,
					"fontsize" : 11.595187,
					"patching_rect" : [ 6.0, 129.0, 32.5, 20.0 ],
					"presentation" : 0,
					"id" : "obj-25",
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~",
					"fontface" : 0,
					"numinlets" : 2,
					"fontsize" : 11.595187,
					"patching_rect" : [ 109.0, 75.0, 44.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-26",
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~",
					"fontface" : 0,
					"numinlets" : 2,
					"fontsize" : 11.595187,
					"patching_rect" : [ 6.0, 153.0, 44.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-27",
					"numoutlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Carrier Frequency",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"patching_rect" : [ 3.0, 3.0, 104.0, 20.0 ],
					"presentation" : 0,
					"id" : "obj-28",
					"numoutlets" : 0,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"fontname" : "Arial",
					"ignoreclick" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 357.5, 120.0, 345.0, 120.0, 345.0, 201.0, 29.0, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
 ]
	}

}

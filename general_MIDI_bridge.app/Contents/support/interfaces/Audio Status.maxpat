{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 9,
			"architecture" : "x86"
		}
,
		"rect" : [ 867.0, 99.0, 267.0, 472.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 1,
		"openinpresentation" : 1,
		"default_fontsize" : 9.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
		"boxanimatetime" : 500,
		"imprint" : 1,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"title" : "Audio Status",
		"boxes" : [ 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 0,
					"id" : "obj-97",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 74.0, 97.0, 55.0, 17.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "nozoom", "float", "menu", "minimize", ";", "#Q", "window", "constrain", 50, 50, 32768, 32768, ";", "#Q", "window", "size", 867, 99, 1134, 571, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ],
					"text" : "thispatcher",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 0,
					"id" : "obj-135",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x86"
						}
,
						"rect" : [ 51.0, 249.0, 219.0, 231.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 104.0, 139.0, 60.0, 16.0 ],
									"text" : "text --"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.7, 0.7, 0.7, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 104.0, 111.0, 60.0, 18.0 ],
									"text" : "route clear"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.7, 0.7, 0.7, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 80.0, 114.0, 18.0 ],
									"text" : "substitute append text"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-118",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-125",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 178.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 154.5, 105.0, 113.5, 105.0 ],
									"source" : [ "obj-97", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-97", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 380.0, 52.0, 44.0, 17.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p format",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 0,
					"id" : "obj-148",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x86"
						}
,
						"rect" : [ 93.0, 430.0, 250.0, 310.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-138",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 50.0, 150.0, 32.5, 17.0 ],
									"text" : "+ 0.3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-137",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 50.0, 120.0, 32.5, 17.0 ],
									"text" : "* 0.7"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-136",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 100.0, 32.5, 17.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-135",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 187.0, 87.0, 15.0 ],
									"text" : "textcolor 0. 0. 0. $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-146",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-147",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 262.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-135", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-136", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-138", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-135", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-138", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-146", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 827.0, 418.0, 70.0, 17.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p dyn-textcolor",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"gradient" : 0,
					"hidden" : 0,
					"id" : "obj-141",
					"ignoreclick" : 0,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 929.25, 418.0, 35.0, 15.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "set $1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-130",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 979.0, 453.0, 135.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.0, 310.0, 116.0, 17.0 ],
					"text" : "Enable Mixer Crossfade",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"align" : 0,
					"arrow" : 1,
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"autopopulate" : 0,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"depth" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"hidden" : 0,
					"hint" : "",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-127",
					"ignoreclick" : 0,
					"items" : [ "Off", ",", "On", ",", "Auto" ],
					"labelclick" : 0,
					"maxclass" : "umenu",
					"menumode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 928.5, 453.0, 43.939552, 17.0 ],
					"pattrmode" : 1,
					"prefix" : "",
					"prefix_mode" : 2,
					"presentation" : 1,
					"presentation_rect" : [ 125.0, 309.0, 44.823681, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 8,
					"showdotfiles" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"gradient" : 0,
					"hidden" : 0,
					"id" : "obj-126",
					"ignoreclick" : 0,
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 928.5, 495.5, 130.0, 29.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : ";\rmax setmixergbitmode $1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-117",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 720.5, 492.0, 22.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 172.5, 349.0, 22.0, 17.0 ],
					"text" : "ms",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-82",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 720.0, 470.5, 22.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 172.5, 329.5, 22.0, 17.0 ],
					"text" : "ms",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-116",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 199.0, 287.0, 44.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 205.0, 285.846924, 44.0, 19.0 ],
					"text" : "Mixer",
					"textcolor" : [ 0.388235, 0.388235, 0.388235, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 0,
					"id" : "obj-134",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 866.0, 261.0, 48.0, 17.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "loadbang",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"gradient" : 0,
					"hidden" : 0,
					"id" : "obj-133",
					"ignoreclick" : 0,
					"linecount" : 5,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 866.0, 285.0, 248.0, 65.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : ";\rmax sendattr setmixerparallel __mixeroptions__;\rmax sendattr setmixerramptime __mixeroptions__;\rmax sendattr setmixerlatency __mixeroptions__;\rmax sendattr setmixergbitmode __mixeroptions__;\r",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-129",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 785.0, 471.0, 122.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 328.5, 94.0, 17.0 ],
					"text" : "Crossfade Latency",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-128",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 728.969788, 540.0, 135.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 347.0, 108.0, 17.0 ],
					"text" : "Ramp Time",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-124",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 602.0, 579.0, 121.833313, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 292.0, 96.0, 17.0 ],
					"text" : "Parallel Processing",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.947023, 0.947023, 0.947023, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"cantchange" : 0,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 10.435669,
					"hbgcolor" : [ 0.263945, 0.270854, 0.277046, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-123",
					"ignoreclick" : 0,
					"maxclass" : "flonum",
					"maximum" : "<none>",
					"minimum" : 0.0,
					"mouseup" : 0,
					"numdecimalplaces" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"outputonclick" : 0,
					"parameter_enable" : 0,
					"patching_rect" : [ 771.0, 450.0, 30.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 125.0, 328.5, 45.46711, 18.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 0.3 ],
					"triangle" : 1,
					"tricolor" : [ 0.485858, 0.485858, 0.485858, 1.0 ],
					"triscale" : 0.6
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.947023, 0.947023, 0.947023, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"cantchange" : 0,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 10.435669,
					"hbgcolor" : [ 0.263945, 0.270854, 0.277046, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-122",
					"ignoreclick" : 0,
					"maxclass" : "flonum",
					"maximum" : "<none>",
					"minimum" : 0.0,
					"mouseup" : 0,
					"numdecimalplaces" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"outputonclick" : 0,
					"parameter_enable" : 0,
					"patching_rect" : [ 683.833313, 450.0, 30.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 125.0, 349.0, 45.46711, 18.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 1,
					"tricolor" : [ 0.485858, 0.485858, 0.485858, 1.0 ],
					"triscale" : 0.6
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"gradient" : 0,
					"hidden" : 0,
					"id" : "obj-94",
					"ignoreclick" : 0,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 771.0, 418.0, 40.0, 16.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "set $1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"gradient" : 0,
					"hidden" : 0,
					"id" : "obj-98",
					"ignoreclick" : 0,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 683.833313, 418.0, 40.0, 16.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "set $1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"gradient" : 0,
					"hidden" : 0,
					"id" : "obj-99",
					"ignoreclick" : 0,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 586.5, 418.0, 40.0, 16.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "set $1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"gradient" : 0,
					"hidden" : 0,
					"id" : "obj-100",
					"ignoreclick" : 0,
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 771.0, 495.5, 121.0, 29.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : ";\rmax setmixerlatency $1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"gradient" : 0,
					"hidden" : 0,
					"id" : "obj-111",
					"ignoreclick" : 0,
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 683.833313, 511.0, 132.0, 29.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : ";\rmax setmixerramptime $1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-119",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 586.5, 390.0, 476.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "route setmixerparallel setmixerramptime setmixerlatency setmixergbitmode",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"gradient" : 0,
					"hidden" : 0,
					"id" : "obj-120",
					"ignoreclick" : 0,
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 586.5, 538.0, 122.0, 29.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : ";\rmax setmixerparallel $1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-121",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 586.5, 368.0, 100.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "r __mixeroptions__",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.926038, 0.926038, 0.926038, 1.0 ],
					"bordercolor" : [ 0.686702, 0.686702, 0.686702, 1.0 ],
					"checkedcolor" : [ 0.123289, 0.123289, 0.123289, 0.75 ],
					"hidden" : 0,
					"id" : "obj-93",
					"ignoreclick" : 0,
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 586.5, 453.0, 16.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 125.0, 292.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 0,
					"id" : "obj-6",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x86"
						}
,
						"rect" : [ 157.0, 179.0, 219.0, 231.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 104.0, 139.0, 60.0, 16.0 ],
									"text" : "text --"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.7, 0.7, 0.7, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 104.0, 111.0, 60.0, 18.0 ],
									"text" : "route clear"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.7, 0.7, 0.7, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 80.0, 114.0, 18.0 ],
									"text" : "substitute append text"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-118",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-125",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 178.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 154.5, 105.0, 113.5, 105.0 ],
									"source" : [ "obj-97", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-97", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 771.0, 52.0, 44.0, 17.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p format",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-7",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 771.0, 30.0, 117.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus optionname 3",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"active" : 1,
					"align" : 0,
					"background" : 0,
					"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
					"bgoncolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"bgoveroncolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"blinktime" : 150,
					"border" : 0,
					"bordercolor" : [ 0.6, 0.6, 0.6, 0.0 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"fontface" : 1,
					"fontlink" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-72",
					"ignoreclick" : 1,
					"maxclass" : "textbutton",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"outputmode" : 1,
					"parameter_enable" : 0,
					"patching_rect" : [ 771.0, 74.0, 112.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 102.0, 91.0, 20.0 ],
					"rounded" : 0.0,
					"spacing_x" : 4.0,
					"spacing_y" : 4.0,
					"text" : "--",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"texton" : "Button On",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textovercolor" : [ 0.101961, 0.101961, 0.101961, 0.0 ],
					"textoveroncolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"tosymbol" : 1,
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-87",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 771.0, 126.0, 90.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus option 3",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"align" : 0,
					"arrow" : 1,
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"autopopulate" : 0,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"depth" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"hidden" : 0,
					"hint" : "",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-90",
					"ignoreclick" : 0,
					"items" : "<empty>",
					"labelclick" : 0,
					"maxclass" : "umenu",
					"menumode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 771.0, 105.0, 50.939552, 17.0 ],
					"pattrmode" : 1,
					"prefix" : "",
					"prefix_mode" : 2,
					"presentation" : 1,
					"presentation_rect" : [ 108.0, 103.0, 139.939545, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 8,
					"showdotfiles" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.686702, 0.686702, 0.686702, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"hint" : "",
					"id" : "obj-84",
					"ignoreclick" : 0,
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 74.0, 52.0, 18.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 48.0, 31.0, 18.0, 18.0 ],
					"prototypename" : "Arial9"
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold Italic",
					"fontsize" : 12.754706,
					"frgb" : 0.0,
					"hidden" : 1,
					"hint" : "",
					"id" : "obj-115",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 64.0, 27.0, 40.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 67.0, 30.0, 40.0, 21.0 ],
					"text" : "View",
					"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.686702, 0.686702, 0.686702, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"hint" : "",
					"id" : "obj-66",
					"ignoreclick" : 0,
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 111.0, 52.0, 18.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.0, 261.0, 18.0, 18.0 ],
					"prototypename" : "Arial9"
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold Italic",
					"fontsize" : 12.754706,
					"frgb" : 0.0,
					"hidden" : 1,
					"hint" : "",
					"id" : "obj-78",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 27.0, 58.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 164.5, 261.0, 58.0, 21.0 ],
					"text" : "NoFloat",
					"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-85",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 74.0, 120.0, 50.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "onecopy",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 0,
					"id" : "obj-140",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x86"
						}
,
						"rect" : [ 1272.0, 134.0, 657.0, 488.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 502.0, 374.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 498.0, 412.0, 45.0, 17.0 ],
									"text" : "del 1000"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 492.0, 443.0, 33.0, 16.0 ],
									"text" : "write"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-29",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 343.0, 114.0, 28.0 ],
									"text" : "window flags nogrow, window flags nozoom"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 466.0, 378.0, 19.0, 18.0 ],
									"text" : "t l"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 466.0, 257.0, 18.0, 18.0 ],
									"prototypename" : "Arial9"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 466.0, 279.0, 18.0, 18.0 ],
									"prototypename" : "Arial9"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 466.0, 301.0, 46.0, 18.0 ],
									"text" : "sel 1 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 362.0, 428.0, 76.0, 16.0 ],
									"text" : "savewindow 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 301.0, 32.5, 18.0 ],
									"text" : "qlim"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 301.0, 32.5, 18.0 ],
									"text" : "qlim"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 378.0, 19.0, 18.0 ],
									"text" : "t l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-38",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 466.0, 323.0, 173.0, 16.0 ],
									"text" : "window flags nofloat, window exec"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-39",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 323.0, 70.0, 16.0 ],
									"text" : "window exec"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "bang" ],
									"patching_rect" : [ 43.0, 279.0, 46.0, 18.0 ],
									"text" : "t b l b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-42",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, 343.0, 102.0, 28.0 ],
									"text" : "window flags grow, window flags zoom"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 257.0, 109.0, 18.0 ],
									"text" : "prepend window size"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : 0.0,
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 208.0, 186.0, 37.0, 18.0 ],
									"text" : "Ymax"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : 0.0,
									"id" : "obj-46",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 157.0, 186.0, 37.0, 18.0 ],
									"text" : "Xmax"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : 0.0,
									"id" : "obj-47",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 105.0, 186.0, 34.0, 18.0 ],
									"text" : "Ymin"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : 0.0,
									"id" : "obj-48",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 54.0, 186.0, 34.0, 18.0 ],
									"text" : "Xmin"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : 0.0,
									"id" : "obj-49",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 171.0, 147.0, 31.0, 18.0 ],
									"text" : "pref."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 43.0, 167.0, 173.0, 18.0 ],
									"text" : "unpack 0 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-52",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 147.0, 127.0, 16.0 ],
									"text" : "150 50 1300 660"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-53",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 197.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-54",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 146.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 227.0, 173.0, 18.0 ],
									"text" : "pak 0 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-56",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 94.0, 205.0, 51.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-57",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 43.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 378.0, 19.0, 18.0 ],
									"text" : "t l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 480.0, 343.0, 161.0, 16.0 ],
									"text" : "window flags float, window exec"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 323.0, 70.0, 16.0 ],
									"text" : "window exec"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "bang" ],
									"patching_rect" : [ 283.0, 279.0, 46.0, 18.0 ],
									"text" : "t b l b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 257.0, 109.0, 18.0 ],
									"text" : "prepend window size"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : 0.0,
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 448.0, 186.0, 37.0, 18.0 ],
									"text" : "Ymax"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : 0.0,
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 397.0, 186.0, 37.0, 18.0 ],
									"text" : "Xmax"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : 0.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 186.0, 34.0, 18.0 ],
									"text" : "Ymin"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : 0.0,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 294.0, 186.0, 34.0, 18.0 ],
									"text" : "Xmin"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : 0.0,
									"id" : "obj-20",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 411.0, 147.0, 31.0, 18.0 ],
									"text" : "pref."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 283.0, 167.0, 173.0, 18.0 ],
									"text" : "unpack 0 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 147.0, 127.0, 16.0 ],
									"text" : "533 50 800 522"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-12",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 437.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-15",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 386.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 227.0, 173.0, 18.0 ],
									"text" : "pak 0 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-4",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 334.0, 205.0, 51.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-3",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 283.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : 0.0,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 284.0, 69.0, 31.0, 18.0 ],
									"text" : "view"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 250.0, 90.0, 83.0, 16.0 ],
									"text" : "presentation $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 250.0, 69.0, 32.5, 18.0 ],
									"text" : "== 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-44",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 153.0, 17.0, 18.0, 18.0 ],
									"prototypename" : "Arial9"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 153.0, 52.0, 18.0, 18.0 ],
									"prototypename" : "Arial9"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 153.0, 74.0, 46.0, 18.0 ],
									"text" : "sel 1 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-21",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 250.0, 443.0, 18.0, 18.0 ],
									"prototypename" : "Arial9"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-40", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-40", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-51", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-51", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-51", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 52.5, 251.0, 34.0, 251.0, 34.0, 139.0, 160.5, 139.0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 292.5, 251.0, 274.0, 251.0, 274.0, 139.0, 400.5, 139.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 74.0, 74.0, 56.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 9.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 9.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p View",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-114",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x86"
						}
,
						"rect" : [ 806.0, 81.0, 250.0, 351.0 ],
						"bglocked" : 1,
						"openinpresentation" : 1,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"title" : "I/O Mappings",
						"boxes" : [ 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-84",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 34.0, 48.0, 18.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 6.0, 4.0, 18.0, 18.0 ],
									"prototypename" : "Arial9"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold Italic",
									"fontsize" : 12.754706,
									"frgb" : 0.0,
									"hidden" : 1,
									"id" : "obj-115",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 23.0, 23.0, 41.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 3.0, 41.0, 21.0 ],
									"text" : "View",
									"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-237",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 140.0, 48.0, 18.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 96.0, 4.0, 18.0, 18.0 ],
									"prototypename" : "Arial9"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold Italic",
									"fontsize" : 12.754706,
									"frgb" : 0.0,
									"hidden" : 1,
									"id" : "obj-78",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 129.0, 23.0, 57.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 115.0, 3.0, 58.0, 21.0 ],
									"text" : "NoFloat",
									"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-238",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 70.0, 47.0, 62.0, 18.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-239",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 9,
											"architecture" : "x86"
										}
,
										"rect" : [ 1158.0, 514.0, 657.0, 488.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 392.0, 13.0, 57.0, 17.0 ],
													"text" : "loadmess 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 466.0, 378.0, 19.0, 18.0 ],
													"text" : "t l"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-5",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 466.0, 257.0, 18.0, 18.0 ],
													"prototypename" : "Arial9"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 466.0, 279.0, 18.0, 18.0 ],
													"prototypename" : "Arial9"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 466.0, 301.0, 46.0, 18.0 ],
													"text" : "sel 1 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-1",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 362.0, 428.0, 76.0, 16.0 ],
													"text" : "savewindow 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-63",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 301.0, 32.5, 18.0 ],
													"text" : "qlim"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 301.0, 32.5, 18.0 ],
													"text" : "qlim"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 378.0, 19.0, 18.0 ],
													"text" : "t l"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-38",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 466.0, 323.0, 173.0, 16.0 ],
													"text" : "window flags nofloat, window exec"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-39",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 323.0, 70.0, 16.0 ],
													"text" : "window exec"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-40",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "", "bang" ],
													"patching_rect" : [ 43.0, 279.0, 46.0, 18.0 ],
													"text" : "t b l b"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-42",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 70.0, 343.0, 102.0, 28.0 ],
													"text" : "window flags grow, window flags zoom"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 257.0, 109.0, 18.0 ],
													"text" : "prepend window size"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"frgb" : 0.0,
													"id" : "obj-45",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 208.0, 186.0, 37.0, 18.0 ],
													"text" : "Ymax"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"frgb" : 0.0,
													"id" : "obj-46",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 157.0, 186.0, 37.0, 18.0 ],
													"text" : "Xmax"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"frgb" : 0.0,
													"id" : "obj-47",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 186.0, 34.0, 18.0 ],
													"text" : "Ymin"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"frgb" : 0.0,
													"id" : "obj-48",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 54.0, 186.0, 34.0, 18.0 ],
													"text" : "Xmin"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"frgb" : 0.0,
													"id" : "obj-49",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 171.0, 147.0, 31.0, 18.0 ],
													"text" : "pref."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "int", "int", "int", "int" ],
													"patching_rect" : [ 43.0, 167.0, 173.0, 18.0 ],
													"text" : "unpack 0 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 147.0, 127.0, 16.0 ],
													"text" : "130 50 1136 520"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-53",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 197.0, 205.0, 50.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-54",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 146.0, 205.0, 50.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 227.0, 173.0, 18.0 ],
													"text" : "pak 0 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-56",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 94.0, 205.0, 51.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-57",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 43.0, 205.0, 50.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 378.0, 19.0, 18.0 ],
													"text" : "t l"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-32",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 480.0, 343.0, 161.0, 16.0 ],
													"text" : "window flags float, window exec"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-31",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 323.0, 70.0, 16.0 ],
													"text" : "window exec"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "", "bang" ],
													"patching_rect" : [ 283.0, 279.0, 46.0, 18.0 ],
													"text" : "t b l b"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-29",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 310.0, 343.0, 114.0, 28.0 ],
													"text" : "window flags nogrow, window flags nozoom"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 257.0, 109.0, 18.0 ],
													"text" : "prepend window size"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"frgb" : 0.0,
													"id" : "obj-27",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 448.0, 186.0, 37.0, 18.0 ],
													"text" : "Ymax"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"frgb" : 0.0,
													"id" : "obj-26",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 397.0, 186.0, 37.0, 18.0 ],
													"text" : "Xmax"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"frgb" : 0.0,
													"id" : "obj-23",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 345.0, 186.0, 34.0, 18.0 ],
													"text" : "Ymin"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"frgb" : 0.0,
													"id" : "obj-22",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 294.0, 186.0, 34.0, 18.0 ],
													"text" : "Xmin"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"frgb" : 0.0,
													"id" : "obj-20",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 411.0, 147.0, 31.0, 18.0 ],
													"text" : "pref."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "int", "int", "int", "int" ],
													"patching_rect" : [ 283.0, 167.0, 173.0, 18.0 ],
													"text" : "unpack 0 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-16",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 147.0, 127.0, 16.0 ],
													"text" : "806 81 1056 432"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-12",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 437.0, 205.0, 50.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-15",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 386.0, 205.0, 50.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 227.0, 173.0, 18.0 ],
													"text" : "pak 0 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-4",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 334.0, 205.0, 51.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-3",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 283.0, 205.0, 50.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"frgb" : 0.0,
													"id" : "obj-11",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 284.0, 69.0, 31.0, 18.0 ],
													"text" : "view"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-10",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 250.0, 90.0, 83.0, 16.0 ],
													"text" : "presentation $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 250.0, 69.0, 32.5, 18.0 ],
													"text" : "== 0"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-44",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 153.0, 17.0, 18.0, 18.0 ],
													"prototypename" : "Arial9"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-41",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 153.0, 52.0, 18.0, 18.0 ],
													"prototypename" : "Arial9"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 153.0, 74.0, 46.0, 18.0 ],
													"text" : "sel 1 0"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-21",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 250.0, 443.0, 18.0, 18.0 ],
													"prototypename" : "Arial9"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 3 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 2 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-18", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-18", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-18", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-25", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-30", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-30", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-40", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-40", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-53", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-51", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-51", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-51", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 3 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-53", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 2 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 52.5, 251.0, 34.0, 251.0, 34.0, 139.0, 160.5, 139.0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-57", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-63", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 292.5, 251.0, 274.0, 251.0, 274.0, 139.0, 400.5, 139.0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-8", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 70.0, 23.0, 56.0, 20.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 9.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 9.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p View"
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-127",
									"items" : 9,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 285.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 198.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-128",
									"items" : 8,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 267.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 181.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-129",
									"items" : 7,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 249.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 164.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-130",
									"items" : 6,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 231.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 147.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-131",
									"items" : 5,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 213.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 130.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-132",
									"items" : 4,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 195.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 113.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-133",
									"items" : 3,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 177.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 96.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-134",
									"items" : 10,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 303.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 215.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-135",
									"items" : 11,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 321.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 232.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-136",
									"items" : 12,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 339.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 249.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-137",
									"items" : 13,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 357.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 266.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-138",
									"items" : 14,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 375.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 283.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-139",
									"items" : 15,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 393.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 300.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-140",
									"items" : 16,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 411.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 317.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-141",
									"items" : 2,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 159.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 79.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-142",
									"items" : 1,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 141.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 125.0, 62.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-143",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 16,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 9,
											"architecture" : "x86"
										}
,
										"rect" : [ 228.0, 171.0, 713.0, 321.0 ],
										"bglocked" : 1,
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 55.0, 177.0, 33.0, 18.0 ],
													"text" : "pack"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 55.0, 129.0, 32.5, 18.0 ],
													"text" : "- 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 27.0, 63.0, 32.5, 18.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 27.0, 42.0, 32.5, 18.0 ],
													"text" : "* 16"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 27.0, 107.0, 47.0, 18.0 ],
													"text" : "Uzi 16"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 69.0, 155.0, 32.5, 18.0 ],
													"text" : "+"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 27.0, 85.0, 74.5, 18.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 624.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-12",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 586.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 548.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-14",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 510.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-15",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 472.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-16",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 434.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-17",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 396.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-18",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 358.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-19",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 321.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-20",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-21",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 245.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-22",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 207.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-23",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 169.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-24",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 131.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-25",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 93.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-26",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 55.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 16,
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 55.0, 199.0, 588.0, 18.0 ],
													"text" : "spray 16"
												}

											}
, 											{
												"box" : 												{
													"comment" : "1-16",
													"id" : "obj-28",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 27.0, 15.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "16",
													"id" : "obj-29",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 624.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "15",
													"id" : "obj-30",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 586.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "14",
													"id" : "obj-31",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 548.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "13",
													"id" : "obj-32",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 510.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "12",
													"id" : "obj-33",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 472.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "11",
													"id" : "obj-34",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 434.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "10",
													"id" : "obj-35",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 396.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "9",
													"id" : "obj-36",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 358.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "8",
													"id" : "obj-37",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 321.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "7",
													"id" : "obj-38",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 283.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "6",
													"id" : "obj-39",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 245.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "5",
													"id" : "obj-40",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 207.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "4",
													"id" : "obj-41",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 169.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "3",
													"id" : "obj-42",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 131.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "2",
													"id" : "obj-43",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 93.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "1",
													"id" : "obj-44",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 55.0, 277.0, 17.0, 17.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 15 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 14 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 13 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 12 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 11 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 10 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 9 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 8 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-7", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-9", 1 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 525.0, 84.0, 221.5, 17.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 9.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 9.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p Ogrouplabel"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-144",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 16,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 9,
											"architecture" : "x86"
										}
,
										"rect" : [ 40.0, 141.0, 672.0, 300.0 ],
										"bglocked" : 1,
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 46.0, 181.0, 33.0, 18.0 ],
													"text" : "pack"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 46.0, 134.0, 32.5, 18.0 ],
													"text" : "- 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 19.0, 68.0, 32.5, 18.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 19.0, 46.0, 32.5, 18.0 ],
													"text" : "* 16"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-7",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 618.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-8",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 580.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-9",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 542.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-10",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 504.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 465.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-12",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 427.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 389.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-14",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 351.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-15",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 313.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-16",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 275.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-17",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 237.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-18",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 199.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-19",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 160.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-20",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 122.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-21",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 84.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-22",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 46.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 19.0, 112.0, 46.0, 18.0 ],
													"text" : "Uzi 16"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 60.0, 159.0, 32.5, 18.0 ],
													"text" : "+"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 19.0, 90.0, 73.5, 18.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 16,
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 46.0, 203.0, 591.0, 18.0 ],
													"text" : "spray 16"
												}

											}
, 											{
												"box" : 												{
													"comment" : "1-16",
													"id" : "obj-27",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 19.0, 14.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "16",
													"id" : "obj-28",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 618.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "15",
													"id" : "obj-29",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 580.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "14",
													"id" : "obj-30",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 542.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "13",
													"id" : "obj-31",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 504.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "12",
													"id" : "obj-32",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 465.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "11",
													"id" : "obj-33",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 427.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "10",
													"id" : "obj-34",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 389.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "9",
													"id" : "obj-35",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 351.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "8",
													"id" : "obj-36",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 313.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "7",
													"id" : "obj-37",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 275.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "6",
													"id" : "obj-38",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 237.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "5",
													"id" : "obj-39",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 199.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "4",
													"id" : "obj-40",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 160.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "3",
													"id" : "obj-41",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 122.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "2",
													"id" : "obj-42",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 84.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "1",
													"id" : "obj-43",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 46.0, 253.0, 17.0, 17.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-23", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-25", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 12 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 11 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 10 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 9 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 8 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 15 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 14 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 13 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 754.0, 84.0, 221.5, 17.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 9.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 9.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p Ogroup"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"frgb" : 0.0,
									"id" : "obj-145",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 581.0, 31.0, 67.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 157.0, 23.0, 67.0, 17.0 ],
									"text" : "Chan. Group",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-146",
									"items" : [ "1-16", ",", "17-32", ",", "33-48", ",", "49-64", ",", "65-80", ",", "81-96", ",", "97-112", ",", "113-128", ",", "129-144", ",", "145-160", ",", "161-176", ",", "177-192", ",", "193-208", ",", "209-224", ",", "225-240", ",", "241-256", ",", "257-272", ",", "273-288", ",", "289-304", ",", "305-320", ",", "321-336", ",", "337-352", ",", "353-368", ",", "369-384", ",", "385-400", ",", "401-416", ",", "417-432", ",", "433-448", ",", "449-464", ",", "465-480", ",", "481-496", ",", "497-512" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 30.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 40.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-147",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 411.0, 87.0, 17.0 ],
									"text" : "adstatus output 16"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-148",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 393.0, 87.0, 17.0 ],
									"text" : "adstatus output 15"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-149",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 375.0, 87.0, 17.0 ],
									"text" : "adstatus output 14"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-150",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 357.0, 87.0, 17.0 ],
									"text" : "adstatus output 13"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-151",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 339.0, 87.0, 17.0 ],
									"text" : "adstatus output 12"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-152",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 321.0, 87.0, 17.0 ],
									"text" : "adstatus output 11"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-153",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 303.0, 87.0, 17.0 ],
									"text" : "adstatus output 10"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-154",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 285.0, 82.0, 17.0 ],
									"text" : "adstatus output 9"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-155",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 267.0, 82.0, 17.0 ],
									"text" : "adstatus output 8"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-156",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 249.0, 82.0, 17.0 ],
									"text" : "adstatus output 7"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-157",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 231.0, 82.0, 17.0 ],
									"text" : "adstatus output 6"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-158",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 213.0, 82.0, 17.0 ],
									"text" : "adstatus output 5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-159",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 195.0, 82.0, 17.0 ],
									"text" : "adstatus output 4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-160",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 177.0, 82.0, 17.0 ],
									"text" : "adstatus output 3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-161",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 159.0, 82.0, 17.0 ],
									"text" : "adstatus output 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-162",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 141.0, 82.0, 17.0 ],
									"text" : "adstatus output 1"
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-163",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 411.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 317.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-164",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 393.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 300.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-165",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 375.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 283.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-166",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 357.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 266.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-167",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 339.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 249.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-168",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 321.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 232.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-169",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 303.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 215.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-170",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 285.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 198.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-171",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 267.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 181.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-172",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 249.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 164.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-173",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 231.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 147.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-174",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 213.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 130.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-175",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 195.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 113.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-176",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 177.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 96.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-177",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 159.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 79.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-178",
									"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 701.0, 141.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 147.0, 62.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold Italic",
									"fontsize" : 11.595187,
									"frgb" : 0.0,
									"id" : "obj-179",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 652.0, 30.0, 78.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 151.969772, 2.0, 78.0, 20.0 ],
									"text" : "Output Map.",
									"textcolor" : [ 0.388235, 0.388235, 0.388235, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-3",
									"items" : 9,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 285.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 198.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-4",
									"items" : 8,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 267.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 181.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-5",
									"items" : 7,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 249.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 164.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-6",
									"items" : 6,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 231.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 147.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-7",
									"items" : 5,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 213.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 130.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-8",
									"items" : 4,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 195.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 113.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-10",
									"items" : 3,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 177.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 96.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-11",
									"items" : 10,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 303.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 215.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-12",
									"items" : 11,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 321.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 232.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-13",
									"items" : 12,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 339.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 249.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-14",
									"items" : 13,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 357.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 266.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-15",
									"items" : 14,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 375.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 283.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-16",
									"items" : 15,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 393.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 300.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-17",
									"items" : 16,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 411.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 317.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-18",
									"items" : 2,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 159.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 79.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 1,
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"id" : "obj-19",
									"items" : 1,
									"maxclass" : "umenu",
									"menumode" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 141.0, 28.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 62.0, 21.0, 17.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 16,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 9,
											"architecture" : "x86"
										}
,
										"rect" : [ 228.0, 171.0, 713.0, 321.0 ],
										"bglocked" : 1,
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 55.0, 177.0, 33.0, 18.0 ],
													"text" : "pack"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 55.0, 129.0, 32.5, 18.0 ],
													"text" : "- 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 27.0, 63.0, 32.5, 18.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 27.0, 42.0, 32.5, 18.0 ],
													"text" : "* 16"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 27.0, 107.0, 47.0, 18.0 ],
													"text" : "Uzi 16"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 69.0, 155.0, 32.5, 18.0 ],
													"text" : "+"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 27.0, 85.0, 74.5, 18.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 624.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-12",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 586.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 548.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-14",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 510.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-15",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 472.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-16",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 434.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-17",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 396.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-18",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 358.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-19",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 321.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-20",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-21",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 245.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-22",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 207.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-23",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 169.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-24",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 131.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-25",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 93.0, 246.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-26",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 55.0, 221.0, 73.0, 16.0 ],
													"text" : "setitem 0 $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 16,
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 55.0, 199.0, 588.0, 18.0 ],
													"text" : "spray 16"
												}

											}
, 											{
												"box" : 												{
													"comment" : "1-16",
													"id" : "obj-28",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 27.0, 15.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "16",
													"id" : "obj-29",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 624.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "15",
													"id" : "obj-30",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 586.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "14",
													"id" : "obj-31",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 548.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "13",
													"id" : "obj-32",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 510.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "12",
													"id" : "obj-33",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 472.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "11",
													"id" : "obj-34",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 434.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "10",
													"id" : "obj-35",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 396.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "9",
													"id" : "obj-36",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 358.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "8",
													"id" : "obj-37",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 321.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "7",
													"id" : "obj-38",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 283.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "6",
													"id" : "obj-39",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 245.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "5",
													"id" : "obj-40",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 207.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "4",
													"id" : "obj-41",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 169.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "3",
													"id" : "obj-42",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 131.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "2",
													"id" : "obj-43",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 93.0, 277.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "1",
													"id" : "obj-44",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 55.0, 277.0, 17.0, 17.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 15 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 14 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 13 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 12 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 11 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 10 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 9 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 8 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-7", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-9", 1 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 30.0, 84.0, 221.5, 17.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 9.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 9.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p Igrouplabel"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 16,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 9,
											"architecture" : "x86"
										}
,
										"rect" : [ 40.0, 141.0, 672.0, 300.0 ],
										"bglocked" : 1,
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 46.0, 181.0, 33.0, 18.0 ],
													"text" : "pack"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 46.0, 134.0, 32.5, 18.0 ],
													"text" : "- 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 19.0, 68.0, 32.5, 18.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 19.0, 46.0, 32.5, 18.0 ],
													"text" : "* 16"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-7",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 618.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-8",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 580.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-9",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 542.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-10",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 504.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 465.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-12",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 427.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 389.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-14",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 351.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-15",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 313.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-16",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 275.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-17",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 237.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-18",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 199.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-19",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 160.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-20",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 122.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-21",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 84.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-22",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 46.0, 225.0, 38.0, 16.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 19.0, 112.0, 46.0, 18.0 ],
													"text" : "Uzi 16"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 60.0, 159.0, 32.5, 18.0 ],
													"text" : "+"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 19.0, 90.0, 73.5, 18.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.435669,
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 16,
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 46.0, 203.0, 591.0, 18.0 ],
													"text" : "spray 16"
												}

											}
, 											{
												"box" : 												{
													"comment" : "1-16",
													"id" : "obj-27",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 19.0, 14.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "16",
													"id" : "obj-28",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 618.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "15",
													"id" : "obj-29",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 580.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "14",
													"id" : "obj-30",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 542.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "13",
													"id" : "obj-31",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 504.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "12",
													"id" : "obj-32",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 465.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "11",
													"id" : "obj-33",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 427.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "10",
													"id" : "obj-34",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 389.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "9",
													"id" : "obj-35",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 351.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "8",
													"id" : "obj-36",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 313.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "7",
													"id" : "obj-37",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 275.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "6",
													"id" : "obj-38",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 237.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "5",
													"id" : "obj-39",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 199.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "4",
													"id" : "obj-40",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 160.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "3",
													"id" : "obj-41",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 122.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "2",
													"id" : "obj-42",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 84.0, 253.0, 17.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "1",
													"id" : "obj-43",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 46.0, 253.0, 17.0, 17.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-23", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-25", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 12 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 11 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 10 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 9 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 8 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 15 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 14 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 13 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 259.0, 84.0, 221.5, 17.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 9.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 9.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p Igroup"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"frgb" : 0.0,
									"id" : "obj-38",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 315.0, 31.0, 67.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 36.469776, 23.0, 67.0, 17.0 ],
									"text" : "Chan. Group",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial Bold",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-39",
									"items" : [ "1-16", ",", "17-32", ",", "33-48", ",", "49-64", ",", "65-80", ",", "81-96", ",", "97-112", ",", "113-128", ",", "129-144", ",", "145-160", ",", "161-176", ",", "177-192", ",", "193-208", ",", "209-224", ",", "225-240", ",", "241-256", ",", "257-272", ",", "273-288", ",", "289-304", ",", "305-320", ",", "321-336", ",", "337-352", ",", "353-368", ",", "369-384", ",", "385-400", ",", "401-416", ",", "417-432", ",", "433-448", ",", "449-464", ",", "465-480", ",", "481-496", ",", "497-512" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 259.0, 30.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 40.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 411.0, 87.0, 17.0 ],
									"text" : "adstatus input 16"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 393.0, 87.0, 17.0 ],
									"text" : "adstatus input 15"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 375.0, 87.0, 17.0 ],
									"text" : "adstatus input 14"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 357.0, 87.0, 17.0 ],
									"text" : "adstatus input 13"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 339.0, 87.0, 17.0 ],
									"text" : "adstatus input 12"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 321.0, 87.0, 17.0 ],
									"text" : "adstatus input 11"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 303.0, 87.0, 17.0 ],
									"text" : "adstatus input 10"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 285.0, 82.0, 17.0 ],
									"text" : "adstatus input 9"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 267.0, 82.0, 17.0 ],
									"text" : "adstatus input 8"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 249.0, 82.0, 17.0 ],
									"text" : "adstatus input 7"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 231.0, 82.0, 17.0 ],
									"text" : "adstatus input 6"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 213.0, 82.0, 17.0 ],
									"text" : "adstatus input 5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 195.0, 82.0, 17.0 ],
									"text" : "adstatus input 4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 177.0, 82.0, 17.0 ],
									"text" : "adstatus input 3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 159.0, 82.0, 17.0 ],
									"text" : "adstatus input 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 141.0, 82.0, 17.0 ],
									"text" : "adstatus input 1"
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-93",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 411.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 317.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-94",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 393.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 300.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-95",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 375.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 283.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-96",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 357.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 266.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-97",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 339.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 249.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-98",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 321.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 232.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-99",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 303.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 215.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-100",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 285.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 198.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-101",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 267.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 181.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-102",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 249.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 164.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-103",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 231.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 147.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-104",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 213.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 130.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-105",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 195.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 113.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-106",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 177.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 96.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-107",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 159.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 79.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"fontname" : "Arial",
									"fontsize" : 9.27615,
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"hint" : "",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"id" : "obj-108",
									"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 206.0, 141.0, 50.939552, 17.0 ],
									"pattrmode" : 1,
									"prefix_mode" : 2,
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 62.0, 87.939552, 17.0 ],
									"prototypename" : "Arial9",
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold Italic",
									"fontsize" : 11.595187,
									"frgb" : 0.0,
									"id" : "obj-109",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 386.0, 30.0, 68.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 36.469776, 2.0, 68.0, 20.0 ],
									"text" : "Input Map.",
									"textcolor" : [ 0.388235, 0.388235, 0.388235, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 189.0, 25.0, 18.0, 18.0 ],
									"prototypename" : "Arial9"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.776471, 0.796078, 0.815686, 0.619608 ],
									"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
									"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
									"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
									"hint" : "",
									"id" : "obj-1",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 458.0, 55.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 129.0, 23.0, 113.0, 319.0 ],
									"prototypename" : "Arial9",
									"rounded" : 16,
									"shadow" : -1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.741176, 0.741176, 0.803922, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ],
									"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
									"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
									"hint" : "",
									"id" : "obj-235",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 15.0, 480.0, 435.0 ],
									"prototypename" : "Arial9",
									"rounded" : 20,
									"shadow" : 1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.776471, 0.796078, 0.815686, 0.619608 ],
									"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
									"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
									"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
									"hint" : "",
									"id" : "obj-212",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 735.0, 32.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 23.0, 113.0, 319.0 ],
									"prototypename" : "Arial9",
									"rounded" : 16,
									"shadow" : -1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.887552, 0.887722, 0.887523, 1.0 ],
									"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
									"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
									"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
									"hint" : "",
									"id" : "obj-24",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 458.0, 30.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -0.547028, 0.0, 251.690109, 351.0 ],
									"prototypename" : "Arial9",
									"rounded" : 0,
									"shadow" : 1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.741176, 0.741176, 0.803922, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ],
									"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
									"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
									"hint" : "",
									"id" : "obj-236",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 510.0, 15.0, 480.0, 435.0 ],
									"prototypename" : "Arial9",
									"rounded" : 20,
									"shadow" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-133", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-135", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 11 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 12 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-138", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 13 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-139", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 14 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-140", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 15 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-141", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-143", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 15 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 14 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 13 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 12 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 11 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-152", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-155", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-156", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-157", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-158", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-159", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-160", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-161", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-162", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-143", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-144", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-163", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-147", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-164", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-165", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-149", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-166", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-167", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-151", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-168", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-152", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-169", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-153", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-170", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-154", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-171", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-172", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-156", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-173", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-157", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-174", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-158", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-175", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-159", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-176", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-177", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-161", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-178", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-162", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-164", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-165", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-152", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-168", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-170", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-155", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-171", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-156", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-172", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-157", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-173", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-158", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-174", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-159", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-175", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-160", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-176", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-161", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-177", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-162", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-178", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 11 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 12 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 13 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 14 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 15 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-239", 1 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-237", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-238", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-239", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 15 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 14 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 13 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 12 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 11 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-102", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-239", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-93", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-94", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-97", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-98", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-99", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 425.0, 501.0, 89.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 9.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 9.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p \"I/O Mappings\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"gradient" : 0,
					"hidden" : 0,
					"id" : "obj-113",
					"ignoreclick" : 0,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 425.0, 459.0, 34.0, 16.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "open",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-112",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 425.0, 479.0, 49.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "pcontrol",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"active" : 1,
					"align" : 1,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgoncolor" : [ 0.709647, 0.709783, 0.709624, 1.0 ],
					"bgovercolor" : [ 0.858824, 0.858824, 0.858824, 0.78 ],
					"bgoveroncolor" : [ 0.858809, 0.858974, 0.858782, 1.0 ],
					"blinktime" : 150,
					"border" : 2,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 0.0 ],
					"fontface" : 0,
					"fontlink" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-83",
					"ignoreclick" : 0,
					"maxclass" : "textbutton",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"outputmode" : 1,
					"parameter_enable" : 0,
					"patching_rect" : [ 425.0, 435.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 151.0, 441.0, 96.0, 17.0 ],
					"rounded" : 14.0,
					"spacing_x" : 4.0,
					"spacing_y" : 4.0,
					"text" : "I/O Mappings",
					"textcolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"texton" : "Button On",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textovercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"textoveroncolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"tosymbol" : 1,
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"active" : 1,
					"align" : 1,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgoncolor" : [ 0.709647, 0.709783, 0.709624, 1.0 ],
					"bgovercolor" : [ 0.858824, 0.858824, 0.858824, 0.78 ],
					"bgoveroncolor" : [ 0.858809, 0.858974, 0.858782, 1.0 ],
					"blinktime" : 150,
					"border" : 2,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 0.0 ],
					"fontface" : 0,
					"fontlink" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-81",
					"ignoreclick" : 0,
					"maxclass" : "textbutton",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"outputmode" : 1,
					"parameter_enable" : 0,
					"patching_rect" : [ 425.0, 375.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 441.0, 111.0, 17.0 ],
					"rounded" : 14.0,
					"spacing_x" : 4.0,
					"spacing_y" : 4.0,
					"text" : "Audio Driver Setup",
					"textcolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"texton" : "Button On",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textovercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"textoveroncolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"tosymbol" : 1,
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-29",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 359.0, 450.0, 55.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 134.0, 417.0, 55.0, 17.0 ],
					"text" : "Channel 2",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-75",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 239.0, 450.0, 55.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 134.0, 398.0, 55.0, 17.0 ],
					"text" : "Channel 1",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-49",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 234.0, 217.0, 22.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 223.0, 156.0, 22.0, 17.0 ],
					"text" : "Hz",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.947023, 0.947023, 0.947023, 1.0 ],
					"blinkcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fgcolor" : [ 0.772669, 0.788354, 0.802329, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-108",
					"ignoreclick" : 0,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.858809, 0.858974, 0.858782, 1.0 ],
					"patching_rect" : [ 614.0, 238.0, 19.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 226.0, 226.0, 11.0, 11.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-106",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 563.0, 240.0, 51.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 167.0, 224.0, 53.0, 17.0 ],
					"text" : "Overload",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.947023, 0.947023, 0.947023, 1.0 ],
					"bordercolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
					"floatoutput" : 0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-104",
					"ignoreclick" : 1,
					"knobcolor" : [ 0.330528, 0.330591, 0.330517, 1.0 ],
					"maxclass" : "slider",
					"min" : 0.0,
					"mult" : 1.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"orientation" : 0,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 455.0, 285.0, 126.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 146.0, 210.0, 100.620918, 10.0 ],
					"relative" : 0,
					"size" : 101.0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 0,
					"id" : "obj-101",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x86"
						}
,
						"rect" : [ 157.0, 179.0, 219.0, 231.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 104.0, 139.0, 60.0, 16.0 ],
									"text" : "text --"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.7, 0.7, 0.7, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 104.0, 111.0, 60.0, 18.0 ],
									"text" : "route clear"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.7, 0.7, 0.7, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 80.0, 114.0, 18.0 ],
									"text" : "substitute append text"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-118",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-125",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 178.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 154.5, 105.0, 113.5, 105.0 ],
									"source" : [ "obj-97", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-97", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 515.0, 52.0, 44.0, 17.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p format",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-102",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 515.0, 30.0, 117.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus optionname 1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"active" : 1,
					"align" : 0,
					"background" : 0,
					"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
					"bgoncolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"bgoveroncolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"blinktime" : 150,
					"border" : 0,
					"bordercolor" : [ 0.6, 0.6, 0.6, 0.0 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"fontface" : 1,
					"fontlink" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-103",
					"ignoreclick" : 1,
					"maxclass" : "textbutton",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"outputmode" : 1,
					"parameter_enable" : 0,
					"patching_rect" : [ 515.0, 74.0, 112.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 66.0, 91.0, 20.0 ],
					"rounded" : 0.0,
					"spacing_x" : 4.0,
					"spacing_y" : 4.0,
					"text" : "Output Device",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"texton" : "Button On",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textovercolor" : [ 0.101961, 0.101961, 0.101961, 0.0 ],
					"textoveroncolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"tosymbol" : 1,
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 0,
					"id" : "obj-20",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x86"
						}
,
						"rect" : [ 39.0, 508.0, 219.0, 231.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 104.0, 139.0, 60.0, 16.0 ],
									"text" : "text --"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.7, 0.7, 0.7, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 104.0, 111.0, 60.0, 18.0 ],
									"text" : "route clear"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.7, 0.7, 0.7, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 80.0, 114.0, 18.0 ],
									"text" : "substitute append text"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-118",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-125",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 178.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 154.5, 105.0, 113.5, 105.0 ],
									"source" : [ "obj-97", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-97", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 650.0, 52.0, 44.0, 17.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p format",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-45",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 650.0, 30.0, 117.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus optionname 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"active" : 1,
					"align" : 0,
					"background" : 0,
					"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
					"bgoncolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"bgoveroncolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"blinktime" : 150,
					"border" : 0,
					"bordercolor" : [ 0.6, 0.6, 0.6, 0.0 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"fontface" : 1,
					"fontlink" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-96",
					"ignoreclick" : 1,
					"maxclass" : "textbutton",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"outputmode" : 1,
					"parameter_enable" : 0,
					"patching_rect" : [ 650.0, 74.0, 112.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 84.0, 91.0, 20.0 ],
					"rounded" : 0.0,
					"spacing_x" : 4.0,
					"spacing_y" : 4.0,
					"text" : "--",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"texton" : "Button On",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textovercolor" : [ 0.101961, 0.101961, 0.101961, 0.0 ],
					"textoveroncolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"tosymbol" : 1,
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-13",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 380.0, 30.0, 117.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus optionname 0",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"gradient" : 0,
					"hidden" : 0,
					"id" : "obj-89",
					"ignoreclick" : 0,
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 425.0, 399.0, 85.0, 29.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : ";\rdsp driver setup",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-46",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.0, 255.0, 91.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 156.0, 91.0, 17.0 ],
					"text" : "Signal Vector Size",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-42",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 79.0, 195.0, 75.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 138.0, 75.0, 17.0 ],
					"text" : "I/O Vector Size",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-59",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 676.0, 238.0, 98.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "route clear append",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-55",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 305.0, 298.0, 98.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "route clear append",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-50",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 166.0, 298.0, 98.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "route clear append",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-79",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 305.0, 471.0, 91.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus output 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"align" : 0,
					"arrow" : 1,
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"autopopulate" : 0,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"depth" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"hidden" : 0,
					"hint" : "",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-80",
					"ignoreclick" : 0,
					"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
					"labelclick" : 0,
					"maxclass" : "umenu",
					"menumode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 305.0, 450.0, 50.939552, 17.0 ],
					"pattrmode" : 1,
					"prefix" : "",
					"prefix_mode" : 2,
					"presentation" : 1,
					"presentation_rect" : [ 189.0, 416.0, 58.939552, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 8,
					"showdotfiles" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-73",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 359.0, 390.0, 55.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 417.0, 55.0, 17.0 ],
					"text" : "Channel 2",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-76",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 305.0, 411.0, 84.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus input 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"align" : 0,
					"arrow" : 1,
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"autopopulate" : 0,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"depth" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"hidden" : 0,
					"hint" : "",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-77",
					"ignoreclick" : 0,
					"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
					"labelclick" : 0,
					"maxclass" : "umenu",
					"menumode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 305.0, 390.0, 50.939552, 17.0 ],
					"pattrmode" : 1,
					"prefix" : "",
					"prefix_mode" : 2,
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 416.0, 58.939552, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 8,
					"showdotfiles" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-67",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 239.0, 390.0, 55.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 398.0, 55.0, 17.0 ],
					"text" : "Channel 1",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-68",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 185.0, 471.0, 91.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus output 1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"align" : 0,
					"arrow" : 1,
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"autopopulate" : 0,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"depth" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"hidden" : 0,
					"hint" : "",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-69",
					"ignoreclick" : 0,
					"items" : [ "Off", ",", 1, "Output 1", ",", 2, "Output 2", ",", 3, "Output 3", ",", 4, "Output 4", ",", 5, "Output 5", ",", 6, "Output 6", ",", 7, "Output 7", ",", 8, "Output 8", ",", 9, "Output 9", ",", 10, "Output 10" ],
					"labelclick" : 0,
					"maxclass" : "umenu",
					"menumode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 185.0, 450.0, 50.939552, 17.0 ],
					"pattrmode" : 1,
					"prefix" : "",
					"prefix_mode" : 2,
					"presentation" : 1,
					"presentation_rect" : [ 189.0, 398.0, 58.939552, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 8,
					"showdotfiles" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-70",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 185.0, 411.0, 84.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus input 1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"align" : 0,
					"arrow" : 1,
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"autopopulate" : 0,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"depth" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"hidden" : 0,
					"hint" : "",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-71",
					"ignoreclick" : 0,
					"items" : [ "Off", ",", 1, "Input 1", ",", 2, "Input 2", ",", 3, "Input 3", ",", 4, "Input 4", ",", 5, "Input 5", ",", 6, "Input 6" ],
					"labelclick" : 0,
					"maxclass" : "umenu",
					"menumode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 185.0, 390.0, 50.939552, 17.0 ],
					"pattrmode" : 1,
					"prefix" : "",
					"prefix_mode" : 2,
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 398.0, 58.939552, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 8,
					"showdotfiles" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-63",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 695.0, 195.0, 99.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 260.0, 99.0, 17.0 ],
					"text" : "Vector Optimization",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-64",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 676.0, 216.0, 92.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus optimize",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.926038, 0.926038, 0.926038, 1.0 ],
					"bordercolor" : [ 0.686702, 0.686702, 0.686702, 1.0 ],
					"checkedcolor" : [ 0.123289, 0.123289, 0.123289, 0.75 ],
					"hidden" : 0,
					"id" : "obj-65",
					"ignoreclick" : 0,
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 676.0, 195.0, 16.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 125.0, 260.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-60",
					"ignoreclick" : 1,
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 324.0, 255.0, 51.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.0, 175.0, 89.0, 17.0 ],
					"text" : "in Audio Interrupt",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-61",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 305.0, 276.0, 93.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus takeover",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.926038, 0.926038, 0.926038, 1.0 ],
					"bordercolor" : [ 0.686702, 0.686702, 0.686702, 1.0 ],
					"checkedcolor" : [ 0.123289, 0.123289, 0.123289, 0.75 ],
					"hidden" : 0,
					"id" : "obj-62",
					"ignoreclick" : 0,
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 305.0, 255.0, 16.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 227.0, 175.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-56",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 185.0, 255.0, 113.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 175.0, 113.0, 17.0 ],
					"text" : "Scheduler in Overdrive",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-57",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 166.0, 276.0, 96.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus overdrive",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.926038, 0.926038, 0.926038, 1.0 ],
					"bordercolor" : [ 0.686702, 0.686702, 0.686702, 1.0 ],
					"checkedcolor" : [ 0.123289, 0.123289, 0.123289, 0.75 ],
					"hidden" : 0,
					"id" : "obj-58",
					"ignoreclick" : 0,
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 166.0, 255.0, 16.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 125.0, 175.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-51",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 595.0, 195.0, 72.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 224.0, 72.0, 17.0 ],
					"text" : "CPU Limit (%)",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-52",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 545.0, 216.0, 88.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus cpulimit",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.947023, 0.947023, 0.947023, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"cantchange" : 0,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"format" : 0,
					"hbgcolor" : [ 0.263945, 0.270854, 0.277046, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-53",
					"ignoreclick" : 0,
					"maxclass" : "number",
					"maximum" : 100,
					"minimum" : 0,
					"mouseup" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"outputonclick" : 0,
					"parameter_enable" : 0,
					"patching_rect" : [ 545.0, 195.0, 28.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 109.0, 224.130554, 30.848198, 17.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 1,
					"tricolor" : [ 0.485858, 0.485858, 0.485858, 1.0 ],
					"triscale" : 0.6
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-47",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 35.0, 276.0, 77.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus sigvs",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"align" : 0,
					"arrow" : 1,
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"autopopulate" : 0,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"depth" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"hidden" : 0,
					"hint" : "",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-48",
					"ignoreclick" : 0,
					"items" : [ 1, ",", 2, ",", 4, ",", 8, ",", 16, ",", 32, ",", 64, ",", 128, ",", 256, ",", 512, ",", 1024, ",", 2048, ",", 4096 ],
					"labelclick" : 0,
					"maxclass" : "umenu",
					"menumode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 35.0, 255.0, 43.939552, 17.0 ],
					"pattrmode" : 1,
					"prefix" : "",
					"prefix_mode" : 2,
					"presentation" : 1,
					"presentation_rect" : [ 108.0, 155.0, 46.939552, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 8,
					"showdotfiles" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-43",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 35.0, 216.0, 71.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus iovs",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"align" : 0,
					"arrow" : 1,
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"autopopulate" : 0,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"depth" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"hidden" : 0,
					"hint" : "",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-44",
					"ignoreclick" : 0,
					"items" : [ 32, ",", 64, ",", 128, ",", 256, ",", 512, ",", 1024, ",", 2048 ],
					"labelclick" : 0,
					"maxclass" : "umenu",
					"menumode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 35.0, 195.0, 43.939552, 17.0 ],
					"pattrmode" : 1,
					"prefix" : "",
					"prefix_mode" : 2,
					"presentation" : 1,
					"presentation_rect" : [ 108.0, 137.0, 46.939552, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 8,
					"showdotfiles" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-38",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 85.0, 472.0, 85.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 134.0, 379.0, 85.0, 17.0 ],
					"text" : "Output Channels",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-37",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 85.0, 412.0, 78.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 379.0, 78.0, 17.0 ],
					"text" : "Input Channels",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.947023, 0.947023, 0.947023, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"cantchange" : 0,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"format" : 0,
					"hbgcolor" : [ 0.263945, 0.270854, 0.277046, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-34",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"maximum" : "<none>",
					"minimum" : "<none>",
					"mouseup" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"outputonclick" : 0,
					"parameter_enable" : 0,
					"patching_rect" : [ 35.0, 472.0, 28.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 217.0, 379.130554, 31.0, 17.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 0,
					"tricolor" : [ 0.485858, 0.485858, 0.485858, 1.0 ],
					"triscale" : 1.0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-35",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 35.0, 450.0, 108.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus numoutputs",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.947023, 0.947023, 0.947023, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"cantchange" : 0,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"format" : 0,
					"hbgcolor" : [ 0.263945, 0.270854, 0.277046, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-31",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"maximum" : "<none>",
					"minimum" : "<none>",
					"mouseup" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"outputonclick" : 0,
					"parameter_enable" : 0,
					"patching_rect" : [ 35.0, 412.0, 28.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 98.0, 379.130554, 31.0, 17.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 0,
					"tricolor" : [ 0.485858, 0.485858, 0.485858, 1.0 ],
					"triscale" : 1.0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-33",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 35.0, 390.0, 102.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus numinputs",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-39",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 218.0, 195.0, 75.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 168.0, 138.0, 75.0, 17.0 ],
					"text" : "Sampling Rate",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-40",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 170.0, 216.0, 62.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus sr",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"align" : 0,
					"arrow" : 1,
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"autopopulate" : 0,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"depth" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"hidden" : 0,
					"hint" : "",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-41",
					"ignoreclick" : 0,
					"items" : [ 44100, ",", 48000, ",", 88200, ",", 96000, ",", 176400, ",", 192000 ],
					"labelclick" : 0,
					"maxclass" : "umenu",
					"menumode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 170.0, 195.0, 43.939552, 17.0 ],
					"pattrmode" : 1,
					"prefix" : "",
					"prefix_mode" : 2,
					"presentation" : 1,
					"presentation_rect" : [ 168.0, 155.0, 55.939552, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 8,
					"showdotfiles" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-32",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 668.0, 310.0, 74.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.0, 242.0, 74.0, 17.0 ],
					"text" : "Function Calls",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.947023, 0.947023, 0.947023, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"cantchange" : 0,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"format" : 0,
					"hbgcolor" : [ 0.263945, 0.270854, 0.277046, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-30",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"maximum" : "<none>",
					"minimum" : "<none>",
					"mouseup" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"outputonclick" : 0,
					"parameter_enable" : 0,
					"patching_rect" : [ 671.0, 292.0, 28.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 217.0, 242.0, 31.0, 17.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 0,
					"tricolor" : [ 0.485858, 0.485858, 0.485858, 1.0 ],
					"triscale" : 1.0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-26",
					"ignoreclick" : 1,
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 602.0, 310.0, 62.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 242.0, 69.0, 17.0 ],
					"text" : "Signals Used",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.947023, 0.947023, 0.947023, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"cantchange" : 0,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"format" : 0,
					"hbgcolor" : [ 0.263945, 0.270854, 0.277046, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-27",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"maximum" : "<none>",
					"minimum" : "<none>",
					"mouseup" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"outputonclick" : 0,
					"parameter_enable" : 0,
					"patching_rect" : [ 620.0, 292.0, 28.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 109.0, 242.0, 31.0, 17.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 0,
					"tricolor" : [ 0.485858, 0.485858, 0.485858, 1.0 ],
					"triscale" : 1.0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-28",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 620.0, 270.0, 70.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus info",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-25",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 455.0, 195.0, 53.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "loadbang",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-23",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 506.0, 262.0, 96.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 206.0, 97.0, 17.0 ],
					"text" : "CPU Utilization (%)",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 0.947023, 0.947023, 0.947023, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"cantchange" : 0,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"hbgcolor" : [ 0.263945, 0.270854, 0.277046, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-22",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"maximum" : "<none>",
					"minimum" : "<none>",
					"mouseup" : 0,
					"numdecimalplaces" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"outputonclick" : 0,
					"parameter_enable" : 0,
					"patching_rect" : [ 455.0, 261.0, 30.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 109.0, 206.0, 31.0, 17.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 0,
					"tricolor" : [ 0.485858, 0.485858, 0.485858, 1.0 ],
					"triscale" : 0.7
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-15",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 455.0, 239.0, 70.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus cpu",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-8",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 455.0, 217.0, 58.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "metro 250",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"active" : 1,
					"align" : 0,
					"background" : 0,
					"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
					"bgoncolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"bgoveroncolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"blinktime" : 150,
					"border" : 0,
					"bordercolor" : [ 0.6, 0.6, 0.6, 0.0 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"fontface" : 1,
					"fontlink" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-18",
					"ignoreclick" : 1,
					"maxclass" : "textbutton",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"outputmode" : 1,
					"parameter_enable" : 0,
					"patching_rect" : [ 380.0, 74.0, 112.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 48.0, 91.0, 20.0 ],
					"rounded" : 0.0,
					"spacing_x" : 4.0,
					"spacing_y" : 4.0,
					"text" : "Input Device",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"texton" : "Button On",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textovercolor" : [ 0.101961, 0.101961, 0.101961, 0.0 ],
					"textoveroncolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"tosymbol" : 1,
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-17",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 299.0, 105.0, 37.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 32.0, 37.0, 17.0 ],
					"text" : "Driver",
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bubble" : 0,
					"bubblepoint" : 0.5,
					"bubbleside" : 1,
					"bubbletextmargin" : 5,
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"hidden" : 0,
					"hint" : "",
					"id" : "obj-16",
					"ignoreclick" : 1,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 328.0, 50.0, 44.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 11.0, 44.0, 19.0 ],
					"text" : "Audio",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-4",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 650.0, 126.0, 90.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus option 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"align" : 0,
					"arrow" : 1,
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"autopopulate" : 0,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"depth" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"hidden" : 0,
					"hint" : "",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-5",
					"ignoreclick" : 0,
					"items" : "<empty>",
					"labelclick" : 0,
					"maxclass" : "umenu",
					"menumode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 650.0, 105.0, 50.939552, 17.0 ],
					"pattrmode" : 1,
					"prefix" : "",
					"prefix_mode" : 2,
					"presentation" : 1,
					"presentation_rect" : [ 108.0, 85.0, 139.939545, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 8,
					"showdotfiles" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-2",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 515.0, 126.0, 90.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus option 1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"align" : 0,
					"arrow" : 1,
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"autopopulate" : 0,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"depth" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"hidden" : 0,
					"hint" : "",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-3",
					"ignoreclick" : 0,
					"items" : [ "Built-in Output", ",", "Audioengine D1   ", ",", "Soundflower (2ch)", ",", "Soundflower (64ch)", ",", "ProFire 610" ],
					"labelclick" : 0,
					"maxclass" : "umenu",
					"menumode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 515.0, 105.0, 50.939552, 17.0 ],
					"pattrmode" : 1,
					"prefix" : "",
					"prefix_mode" : 2,
					"presentation" : 1,
					"presentation_rect" : [ 108.0, 67.0, 139.939545, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 8,
					"showdotfiles" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-11",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 380.0, 126.0, 90.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus option 0",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"align" : 0,
					"arrow" : 1,
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"autopopulate" : 0,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"depth" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.27615,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"hidden" : 0,
					"hint" : "",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-12",
					"ignoreclick" : 0,
					"items" : [ "Built-in Microphone", ",", "Soundflower (2ch)", ",", "Soundflower (64ch)", ",", "ProFire 610" ],
					"labelclick" : 0,
					"maxclass" : "umenu",
					"menumode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 380.0, 105.0, 50.939552, 17.0 ],
					"pattrmode" : 1,
					"prefix" : "",
					"prefix_mode" : 2,
					"presentation" : 1,
					"presentation_rect" : [ 108.0, 49.0, 139.939545, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 8,
					"showdotfiles" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-9",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 245.0, 126.0, 79.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus driver",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"align" : 0,
					"arrow" : 1,
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"autopopulate" : 0,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"depth" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 9.27615,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"hidden" : 0,
					"hint" : "",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-10",
					"ignoreclick" : 0,
					"items" : [ "None", ",", "Core Audio", ",", "NonRealTime", ",", "ad_portaudio", "Core Audio", ",", "ad_rewire", ",", "Live" ],
					"labelclick" : 0,
					"maxclass" : "umenu",
					"menumode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 245.0, 105.0, 50.939552, 17.0 ],
					"pattrmode" : 1,
					"prefix" : "",
					"prefix_mode" : 2,
					"presentation" : 1,
					"presentation_rect" : [ 108.0, 31.0, 139.939545, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 8,
					"showdotfiles" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"hidden" : 0,
					"id" : "obj-1",
					"ignoreclick" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 245.0, 51.0, 82.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"text" : "adstatus switch",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"align" : 0,
					"arrow" : 1,
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"autopopulate" : 0,
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"depth" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial Bold",
					"fontsize" : 12.0,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"hidden" : 0,
					"hint" : "",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-36",
					"ignoreclick" : 0,
					"items" : [ "Off", ",", "On" ],
					"labelclick" : 0,
					"maxclass" : "umenu",
					"menumode" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 245.0, 30.0, 50.939552, 20.0 ],
					"pattrmode" : 1,
					"prefix" : "",
					"prefix_mode" : 2,
					"presentation" : 1,
					"presentation_rect" : [ 108.0, 10.0, 54.939552, 20.0 ],
					"prototypename" : "Arial9",
					"rounded" : 8,
					"showdotfiles" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"truncate" : 1,
					"underline" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-132",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 807.333374, 450.0, 19.0, 12.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 125.0, 328.5, 45.46711, 18.0 ],
					"prototypename" : "Arial9",
					"rounded" : 9,
					"shadow" : -1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-131",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 723.0, 450.0, 19.0, 12.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 126.0, 349.0, 45.46711, 18.0 ],
					"prototypename" : "Arial9",
					"rounded" : 9,
					"shadow" : -1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-105",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 456.0, 296.0, 124.0, 4.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 146.0, 210.130554, 101.312851, 10.0 ],
					"prototypename" : "Arial9",
					"rounded" : 7,
					"shadow" : -1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-19",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 701.0, 295.130554, 19.0, 12.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 217.0, 242.130554, 31.0, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 9,
					"shadow" : -1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-95",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 486.0, 264.130554, 19.0, 12.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 110.0, 206.130554, 30.0, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 9,
					"shadow" : -1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-92",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 64.0, 475.0, 19.0, 12.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 217.0, 379.130554, 31.0, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 9,
					"shadow" : -1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-74",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 64.0, 415.0, 19.0, 12.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 98.0, 379.130554, 31.0, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 9,
					"shadow" : -1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-54",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 650.0, 295.130554, 19.0, 12.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 109.0, 242.130554, 31.0, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 9,
					"shadow" : -1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"horizontal_direction" : 0,
					"id" : "obj-282",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 574.0, 197.0, 19.0, 12.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 109.0, 224.130554, 31.0, 17.0 ],
					"prototypename" : "Arial9",
					"rounded" : 9,
					"shadow" : -1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.777348, 0.798029, 0.814534, 0.62 ],
					"border" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"horizontal_direction" : 0,
					"id" : "obj-86",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 39.0, 501.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.0, 373.0, 243.0, 94.0 ],
					"prototypename" : "Arial9",
					"rounded" : 16,
					"shadow" : -1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.776471, 0.796078, 0.815686, 0.619608 ],
					"border" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"horizontal_direction" : 0,
					"id" : "obj-21",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 264.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.0, 200.0, 243.0, 83.846909 ],
					"prototypename" : "Arial9",
					"rounded" : 16,
					"shadow" : -1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.777348, 0.798029, 0.814534, 0.62 ],
					"border" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"horizontal_direction" : 0,
					"id" : "obj-14",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 316.0, 194.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 131.0, 243.0, 65.0 ],
					"prototypename" : "Arial9",
					"rounded" : 16,
					"shadow" : -1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.777348, 0.798029, 0.814534, 0.62 ],
					"border" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"horizontal_direction" : 0,
					"id" : "obj-212",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 866.0, 122.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 7.0, 243.0, 120.0 ],
					"prototypename" : "Arial9",
					"rounded" : 16,
					"shadow" : -1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"horizontal_direction" : 0,
					"id" : "obj-107",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 180.0, 405.0, 165.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"prototypename" : "Arial9",
					"rounded" : 20,
					"shadow" : 1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"horizontal_direction" : 0,
					"id" : "obj-88",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 230.0, 15.0, 663.0, 151.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"prototypename" : "Arial9",
					"rounded" : 20,
					"shadow" : 1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"horizontal_direction" : 0,
					"id" : "obj-109",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 443.5, 180.0, 360.0, 165.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"prototypename" : "Arial9",
					"rounded" : 20,
					"shadow" : 1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"horizontal_direction" : 0,
					"id" : "obj-110",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 360.0, 525.0, 180.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"prototypename" : "Arial9",
					"rounded" : 20,
					"shadow" : 1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.777348, 0.798029, 0.814534, 0.62 ],
					"border" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"horizontal_direction" : 0,
					"id" : "obj-91",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 563.0, 368.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.0, 285.846924, 243.0, 83.620598 ],
					"prototypename" : "Arial9",
					"rounded" : 16,
					"shadow" : -1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"arrow_orientation" : 0,
					"background" : 1,
					"bgcolor" : [ 0.887552, 0.887722, 0.887523, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"drag_window" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"hint" : "",
					"horizontal_direction" : 0,
					"id" : "obj-24",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 139.0, 74.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.452972, 0.0, 267.0, 472.014496 ],
					"prototypename" : "Arial9",
					"rounded" : 0,
					"shadow" : 1,
					"shape" : 0,
					"vertical_direction" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 254.5, 72.0, 242.0, 72.0, 242.0, 26.0, 254.5, 26.0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-103", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-101", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 389.5, 147.0, 377.0, 147.0, 377.0, 101.0, 389.5, 101.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-114", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-112", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-141", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-119", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-148", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-119", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-94", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-119", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-98", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-119", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-99", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-119", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-111", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-100", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-126", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-148", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-135", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-133", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-97", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-127", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-123", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 524.5, 147.0, 512.0, 147.0, 512.0, 101.0, 524.5, 101.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-96", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-104", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 659.5, 147.0, 647.0, 147.0, 647.0, 101.0, 659.5, 101.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 179.5, 237.0, 167.0, 237.0, 167.0, 191.0, 179.5, 191.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 44.5, 237.0, 32.0, 237.0, 32.0, 191.0, 44.5, 191.0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 44.5, 297.0, 32.0, 297.0, 32.0, 251.0, 44.5, 251.0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-58", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 254.5, 320.0, 163.0, 320.0, 163.0, 252.0, 175.5, 252.0 ],
					"source" : [ "obj-50", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-108", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 554.5, 237.0, 542.0, 237.0, 542.0, 191.0, 554.5, 191.0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-52", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 393.5, 320.0, 302.0, 320.0, 302.0, 252.0, 314.5, 252.0 ],
					"source" : [ "obj-55", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-50", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 764.5, 260.0, 673.0, 260.0, 673.0, 192.0, 685.5, 192.0 ],
					"source" : [ "obj-59", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-72", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-61", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-64", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-140", 1 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 194.5, 492.0, 182.0, 492.0, 182.0, 446.0, 194.5, 446.0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-68", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-71", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 194.5, 432.0, 182.0, 432.0, 182.0, 386.0, 194.5, 386.0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-70", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-77", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 314.5, 432.0, 302.0, 432.0, 302.0, 386.0, 314.5, 386.0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-76", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-80", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 314.5, 492.0, 302.0, 492.0, 302.0, 446.0, 314.5, 446.0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-79", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-89", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-113", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-140", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-90", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 780.5, 147.0, 768.0, 147.0, 768.0, 101.0, 780.5, 101.0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 254.5, 147.0, 242.0, 147.0, 242.0, 101.0, 254.5, 101.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-87", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-120", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-123", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-122", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.8, 0.8, 0.9 ],
					"destination" : [ "obj-93", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ]
	}

}

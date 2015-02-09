{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 0,
			"revision" : 1,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 244.0, 131.0, 909.0, 776.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "American Typewriter",
					"fontsize" : 24.0,
					"id" : "obj-2",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 42.0, 39.0, 143.0, 62.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 717.0, 31.5, 143.0, 62.0 ],
					"style" : "",
					"text" : "P. Fishwick\nUT Dallas"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"id" : "obj-8",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 189.0, 39.0, 66.0, 62.0 ],
					"pic" : "Macintosh HD:/Users/paulfishwick/Dropbox/JHCreativeAutomta/cheshirecat2.png",
					"presentation" : 1,
					"presentation_rect" : [ 857.0, 31.5, 66.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "ClockABpatch.maxpat",
					"numinlets" : 0,
					"numoutlets" : 3,
					"offset" : [ -9.0, -3.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 39.0, 113.0, 128.0, 128.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "ClockABpatch.maxpat",
				"bootpath" : "~/Dropbox/MAXMSP/Modeling/Events/Clocks",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "analog.js",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "cheshirecat2.png",
				"bootpath" : "~/Dropbox/JHCreativeAutomta",
				"patcherrelativepath" : "../../../../JHCreativeAutomta",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "gen~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "number.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "number~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sig~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ezdac~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "button.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "comment.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "date.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "zl.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "pipe.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "kslider.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "makenote.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "umenu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "loadmess.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jsui.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "prepend.mxo",
				"type" : "iLaX"
			}
 ],
		"embedsnapshot" : 0
	}

}

/* jce - 2.6.28 | 2018-03-21 | https://www.joomlacontenteditor.net | Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved | GNU/GPL Version 2 or later - http://www.gnu.org/licenses/gpl-2.0.html */
!function(){var each=(tinymce.DOM,tinymce.dom.Event,tinymce.extend,tinymce.each);tinymce.explode;tinymce.create("tinymce.plugins.FontColorPlugin",{init:function(ed,url){this.editor=ed,ed.onNodeChange.add(function(ed,cm,n,collapsed,o){function updateColor(controlId,color){(c=cm.get(controlId))&&(color||(color=c.settings.default_color),color!==c.value&&c.displayColor(color))}var c,fc,bc;ed.settings;each(o.parents,function(n){if(n.style&&(n.style.color&&(updateColor("forecolor",n.style.color),fc=!0),n.style.backgroundColor&&(updateColor("backcolor",n.style.backgroundColor),bc=!0),fc&&bc))return!1})})},createControl:function(n,cf){return"forecolor"===n?this._createForeColorMenu():"backcolor"===n?this._createBackColorMenu():void 0},_createForeColorMenu:function(){var c,v,self=this,ed=self.editor,s=ed.settings,o={};return o.more_colors_func=function(){ed.execCommand("mceColorPicker",!1,{color:c.value,func:function(co){c.setColor(co)}})},(v=s.theme_advanced_text_colors)&&(o.colors=v),o.default_color=s.fontcolor_foreground_color||"#000000",o.title="advanced.forecolor_desc",o.onselect=function(v){return v?(ed.formatter.apply("forecolor",{value:v}),ed.undoManager.add(),void ed.nodeChanged()):ed.formatter.remove("forecolor")},o.scope=this,c=ed.controlManager.createColorSplitButton("forecolor",o)},_createBackColorMenu:function(){var c,v,self=this,ed=self.editor,s=ed.settings,o={};return o.more_colors_func=function(){ed.execCommand("mceColorPicker",!1,{color:c.value,func:function(co){c.setColor(co)}})},(v=s.theme_advanced_background_colors)&&(o.colors=v),o.default_color=s.fontcolor_background_color||"#FFFF00",o.title="advanced.backcolor_desc",o.onselect=function(v){return v?(ed.formatter.apply("hilitecolor",{value:v}),ed.undoManager.add(),void ed.nodeChanged()):ed.formatter.remove("hilitecolor")},o.scope=this,c=ed.controlManager.createColorSplitButton("backcolor",o)}}),tinymce.PluginManager.add("fontcolor",tinymce.plugins.FontColorPlugin)}();
/**
 * 
 */
(function($) {
	"use strict";
	
	$.fn.grid = function(optn) {
		optn = $.extend({}, $.fn.grid.defaultOptn, optn);
		
		this.grid = this.jqGrid(optn);
		
		return this;
	};
	
	$.fn.grid.defaultOptn = {
		   	url:"",
			datatype: "json",
			jsonReader : { 
				page : "page", 
				total : "total", 
				records : "records",
				root : "data",
				repeatitems : false
			},
		   	colNames:[],
		   	colModel:[],
		   	rowNum:10,
		   	rowList:[10,20,30],
		   	autowidth: true,
		   	loadonce : false,
		    viewrecords: true
		};
})(jQuery);
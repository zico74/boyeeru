/**
 * 
 */
(function($) {
	"use strict";

	$.mwgrid = $.mwgrid || {};
	$.extend($.mwgrid, {
		version : '0.0.1',
		getAccessor : function( obj, expr ) {
			var ret,p,prm = [], i;
			
			if( typeof expr === 'function') { return expr( obj ); }
			
			ret[obj] = expr;
			
			if ( ret === undefined ) {
				try {
					if ( typeof expr === 'string' ) {
						prm = expr.split('.');
					}
					
					i = prm.length;
					
					if( i ) {
						ret = obj;
						while ( ret && i-- ) {
							p = prm.shift();
							ret = ret[p];
						}
					}
				} catch ( e ) {}
			}
			return ret;
		},
		getMethod : function( name ) {
			return this.getAccessor($.fn.mwGrid, name);
		},
		extend : function( methods ) {
			$.extend($.fn.mwGrid, methods);
		}
	});
	
	$.fn.mwGrid = function( pin ) {
		if ( typeof pin === 'string' ) {
			var fn = $.mwgrid.getMethod( pin );
			
			if ( !fn ) {
				throw( "mwGrid - No search Method : " + pin) ;
			}
			
			var args = $.makeArray( arguments ).slice( 1 );
			
			return fn.apply( this, args );
		}
		
		return this.each( function() {
			if ( this.grid ) { return; }
			
			var p = $.extend( true, {
				url : "",
				datatype : "local",
				jsonReader : {
					page : "page",
					total : "total",
					records : "records",
					root : "data",
					repeatitems : false
				},
				rowNum : 10,
				rowList : [ 30, 50, 100 ],
				loadonce : false,
				viewrecords : true
			}, pin || {} );
			
			if ( 'useRadio' in p && p.useRadio === true ) {
				p.colModel.unshift(
						{name: '_selRow', index: '_selRow', width: 40, align: 'center', edittype:"radio"
				   			, sortable:false
							, classes:'pss-jqgrid-pointer-nodecoration'
							, formatter: function (cellValue, option) {
								return '<input type="radio" name="radio_' + option.gid + '"  />';
							}
				   		}
				);
				
				$(this).on('change', 'input[name=radio_' + $(this).attr('id') + ']', function(e) {
		   			$(this).closest('tr').trigger('click');
		   		});
			}
			
			$( this ).jqGrid( p );
		} );
	};
	
	$.fn.grid = function(optn) {
		optn = $.extend({}, $.fn.grid.defaultOptn, optn);

		return this.each(function() {
			this.bkGrid = $(this).jqGrid(optn);
		});
	};

	$.fn.grid.defaultOptn = {
		url : "",
		datatype : "json",
		jsonReader : {
			page : "page",
			total : "total",
			records : "records",
			root : "data",
			repeatitems : false
		},
		colNames : [],
		colModel : [],
		rowNum : 10,
		rowList : [ 10, 20, 30 ],
		autowidth : true,
		loadonce : false,
		viewrecords : true
	};
})(jQuery);
/**
 * 
 */
(function($, window, document) {
	"use strict";

	var BkModal = function(el, optns) {
		this.$element = $(el);
		
		this.$header = null;
		this.$body = null;
		this.$footer = null;	
	}

	BkModal.prototype = {
		constructor : BkModal,
		_init : function() {
			var self = this;
			
			self._clear();
		},
		getTmplat : function() {
			var modalHtml = '<div class="modal modal-info modal-cstmzng" data-backdrop="static"></div>',
				dialogHtml = '<div class="modal-dialog modal-dialog-cstmzng"></div>',
				contHtml = '<div class="modal-content"></div>',
				hderHtml,
				bodyHtml,
				footrHtml;
			
			var opt = this.optns;
			
			// 헤더 영역
			if (opt.header.isView) {
				hderHtml = '<div class="modal-header">' +
								'<button type="button" class="close" data-dismiss="modal" aria-label="Close">' +
									'<span aria-hidden="true">&times;</span>' +
								'</button>' +
								'<div class="modal-title">' +
									(opt.header.html ? opt.header.html : '') +
								'</div>' +
							'</div>';
			}
			
			// 바디 영역
			if (opt.body.isView) {
				bodyHtml = '<div class="modal-body">' +
								(opt.body.html ? opt.body.html : '');
							'</div>';
			}
			
			// 푸터 영역
			if (opt.body.isView) {
				footrHtml = 
			}
			
			if (this.optns.showHder && !this.optns.isInfo) {
				hderHtml = '<div class="modal-header">' +
								'<button type="button" class="close" data-dismiss="modal" aria-label="Close">' +
									'<span aria-hidden="true">&times;</span>' +
								'</button>' +
								'<h4 class="modal-title">' +
									(this.optns.hderContHtml ? this.optns.hderContHtml : '') +
								'</h4>' +
							'</div>';
			}
			
			if (this.optns.showFootr && !this.optns.isInfo) {
				footrHtml = '<div class="modal-footer">' +
								'<button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>' +
								(this.optns.footrContHtml ? this.optns.footrContHtml : '') +
							'</div>'
			}

		},
		_clear : function() {
			$('body').find('.modal-cstmzng').remove();
			
		}
	};
	
	$.fn.bkModal.defaults = {
			header : {
				isView : true,
				html : null
			},
			body : {
				isView : true,
				html : null
			},
			footer : {
				isView : true,
				html : null
			},
			buttons : [
			],
			theme : ''
	}
})(jQuery, window, document);
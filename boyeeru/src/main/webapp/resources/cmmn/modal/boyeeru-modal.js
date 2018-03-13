/**
 * 
 */
;(function($, window, document) {
	'use strict';

	var BkModal = function(el, optns) {
		this.$element = $(el);
		
		this.$header = null;
		this.$body = null;
		this.$footer = null;	
		
		this.optns = optns;
		
		this._init();
	}

	BkModal.prototype = {
		constructor : BkModal,
		_init : function() {
			var self = this,
				opt = self.optns,
				tmplat;
			
			//self._clear();
			
			tmplat = self._getTmplat();
			
			if (opt.buttons) {
				self._addBtns();
			}
			
			self.$element.append(tmplat);
			
			self.$element.find(".modal").addClass(self.optns.theme).modal();
		},
		_getTmplat : function() {
			var modalHtml = '<div class="modal modal-cstmzng" data-backdrop="static"></div>',
				dialogHtml = '<div class="modal-dialog modal-dialog-cstmzng"></div>',
				contHtml = '<div class="modal-content"></div>',
				hderHtml,
				bodyHtml,
				footrHtml;
			
			var opt = this.optns;
			
			// 헤더 영역
			hderHtml = '<div class="modal-header">' +
							'<button type="button" class="close" data-dismiss="modal" aria-label="Close">' +
								'<span aria-hidden="true">&times;</span>' +
							'</button>' +
							'<div class="modal-title">' +
								'<div class="row modal-header-content">' +
									'<div class="col-md-12">' +
										(opt.header.html ? opt.header.html : '') +
									'</div>' +
								'</div>' +
							'</div>' +
						'</div>';
			
			// 바디 영역
			bodyHtml = '<div class="modal-body">' +
							'<div class="row modal-body-content">' +
								'<div class="col-md-12">' +
									(opt.body.html ? opt.body.html : '') +
								'</div>' +
							'</div>' +
						'</div>';
			
			// 푸터 영역
			footrHtml = '<div class="modal-footer">' +
							'<div class="row modal-footer-content">' +
								'<div class="col-md-12">' +
									(opt.footer.html ? opt.footer.html : '') +
								'</div>' +
								'<div class="col-md-12">' +
								'<div class="col-md-12 modal-footer-btn">' +
								'</div>' +
							'</div>' +
						'</div>';
			
			contHtml = $(contHtml).append([hderHtml, bodyHtml, footrHtml]);
			dialogHtml = $(dialogHtml).append(contHtml);
			modalHtml = $(modalHtml).append(dialogHtml);
			
			this.$header = modalHtml.find('.modal-header');
			this.$body = modalHtml.find('.modal-body');
			this.$footer = modalHtml.find('.modal-footer');

			if (!opt.header.isView) {
				this.$header.hide();
			}
			if (!opt.body.isView) {
				this.$body.hide();
			}
			if (!opt.footer.isView) {
				this.$footer.hide();
			}
			
			return modalHtml;
		},
		_addBtns : function() {
			var self = this,
				$target = self.$footer.find(".modal-footer-btn"),
				btns = self.optns.buttons;
			
			$.each(btns, function(idx, obj) {
					$target.append(obj.html);
					$target.children().eq(idx).on('click', $.proxy(obj.callback, self));
			});
		},
		_clear : function() {
			$('body').find('.modal-cstmzng').remove();
		}
	};
	
	$.fn.bkModal = function(option) {
		var args = Array.apply(null, arguments);
		args.shift();
		
		return this.each(function() {
			var $this = $(this),
			data = $this.data('bkModal'),
			options = typeof option === 'object' && option;
			
			if (!data) {
				$this.data('bkModal', (data = new BkModal(this, $.extend(true, {}, $.fn.bkModal.defaults, options, $(this).data()))));
			}
			
			if (typeof option === 'string') {
				data[option].apply(data, args);
			}
		});
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
	};
	
	$.fn.bkModal.Constructor = BkModal;
	
	$.bkNotification = $.bkNotification || {};
	
	$.extend($.bkNotification, {
		show : function(optns) {
			var d = new Date(),
				id = d.getMilliseconds(),
				$el = $('<div />', {
					id : id
				}),
				i = '<div class="fa-' + optns.size + 'x"><i class="fas ' + optns['class'] + '"></i> ' + optns.text + '</div>';
			
			$('body').append($el);
			
			$el.bkModal({
				header : {
					isView : false
				},
				body : {
					html : i
				},
				footer : {
					isView : false
				}
			});
			
			return $el;
		},
		hide : function($el) {
			$el.find('button.close').trigger('click');
		}
	});
	
})(jQuery, window, document);
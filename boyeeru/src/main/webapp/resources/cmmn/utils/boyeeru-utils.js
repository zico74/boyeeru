/**
 * 
 */

var Utils = {
	stopPropagation : function(e) {
		if (e.stopPropagation)
			e.stopPropagation();
		else
			e.cancelBubble = true;
	},
	stopImmediatePropagation : function(e) {
		if (e.stopImmediatePropagation)
			e.stopImmediatePropagation();
		else
			e.isImmediatePropagationEnabled = false;
	},
	preventDefault : function(e) {
		if (e.preventDefault)
			e.preventDefault();
		else
			e.returnValue = false;
	},
	stopEvent : function(e) {
		this.stopPropagation(e);
		this.stopImmediatePropagation(e);
		this.preventDefault(e);
	},
	getUUID4 : function() {
		var uuid = "", i, random;
		
		for (i = 0; i < 32; i++) {
			random = Math.random() * 16 | 0;

			if (i == 8 || i == 12 || i == 16 || i == 20) {
				uuid += "-"
			}
			uuid += (i == 12 ? 4 : (i == 16 ? (random & 3 | 8) : random))
					.toString(16);
		}
		
		return uuid.toUpperCase();
	},
	isUUID : function(uuid) {
		var reg = /^[0-9A-F]{8}-[0-9A-F]{4}-[4][0-9A-F]{3}-[89AB][0-9A-F]{3}-[0-9A-F]{12}$/i;
		
		return reg.test(uuid);
	}
};
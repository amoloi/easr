/* YUI 3.8.1 (build 5795) Copyright 2013 Yahoo! Inc. http://yuilibrary.com/license/ */
YUI.add("node-style",function(e,t){(function(e){e.mix(e.Node.prototype,{setStyle:function(t,n){return e.DOM.setStyle(this._node,t,n),this},setStyles:function(t){return e.DOM.setStyles(this._node,t),this},getStyle:function(t){return e.DOM.getStyle(this._node,t)},getComputedStyle:function(t){return e.DOM.getComputedStyle(this._node,t)}}),e.NodeList.importMethod(e.Node.prototype,["getStyle","getComputedStyle","setStyle","setStyles"])})(e)},"3.8.1",{requires:["dom-style","node-base"]});
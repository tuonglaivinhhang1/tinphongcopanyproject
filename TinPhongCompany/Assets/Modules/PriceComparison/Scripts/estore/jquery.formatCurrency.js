!function (t) { t.fn.formatCurrency = function (e) { return e = jQuery.extend({ name: "formatCurrency", useHtml: !1, symbol: "", global: !0 }, e), this.each(function () { var n = "0"; n = t(this)[e.useHtml ? "html" : "val"](), n = n.replace(/\$|\,/g, ""), isNaN(n) && (n = "0"), sign = n == (n = Math.abs(n)), n = Math.floor(100 * n + .50000000001), cents = n % 100, n = Math.floor(n / 100).toString(), cents < 10 && (cents = "0" + cents); for (var r = 0; r < Math.floor((n.length - (1 + r)) / 3) ; r++) n = n.substring(0, n.length - (4 * r + 3)) + "," + n.substring(n.length - (4 * r + 3)); t(this)[e.useHtml ? "html" : "val"]((sign ? "" : "-") + e.symbol + n) }) }, t.fn.toNumber = function (e) { return e = jQuery.extend({ name: "toNumber", useHtml: !1, global: !0 }, e), this.each(function () { var n = e.useHtml ? "html" : "val"; t(this)[n](t(this)[n]().replace(/[^\d\.]/g, "")) }) } }(jQuery);
"use strict";
var _typeof = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function(e) {
    return typeof e
} : function(e) {
    return e && "function" == typeof Symbol && e.constructor === Symbol && e !== Symbol.prototype ? "symbol" : typeof e
};
! function(e) {
    if ("object" === ("undefined" == typeof exports ? "undefined" : _typeof(exports)) && "undefined" != typeof module) module.exports = e();
    else if ("function" == typeof define && define.amd) define([], e);
    else {
        var t;
        t = "undefined" != typeof window ? window : "undefined" != typeof global ? global : "undefined" != typeof self ? self : this, t.GitHubCalendar = e()
    }
}(function() {
    return function() {
        function e(t, r, n) {
            function a(u, s) {
                if (!r[u]) {
                    if (!t[u]) {
                        var i = "function" == typeof require && require;
                        if (!s && i) return i(u, !0);
                        if (o) return o(u, !0);
                        var c = new Error("Cannot find module '" + u + "'");
                        throw c.code = "MODULE_NOT_FOUND", c
                    }
                    var l = r[u] = {
                        exports: {}
                    };
                    t[u][0].call(l.exports, function(e) {
                        var r = t[u][1][e];
                        return a(r || e)
                    }, l, l.exports, e, t, r, n)
                }
                return r[u].exports
            }
            for (var o = "function" == typeof require && require, u = 0; u < n.length; u++) a(n[u]);
            return a
        }
        return e
    }()({
        1: [function(e, t) {
            var r = e("github-calendar-parser"),
                n = e("elly"),
                a = e("add-subtract-date"),
                o = e("formatoid"),
                u = "MMM D, YYYY",
                s = "MMMM D";
            t.exports = function(e, t, i) {
                e = n(e), i = i || {}, i.summary_text = i.summary_text || 'Summary of pull requests, issues opened, and commits made by <a href="https://github.com/' + t + '" target="blank">@' + t + "</a>", i.global_stats === !1 && (e.style.minHeight = "175px"), i.proxy = i.proxy || function(e) {
                    return "https://urlreq.appspot.com/req?method=GET&url=" + e
                };
                var c = function l() {
                    return fetch(i.proxy("https://github.com/" + t)).then(function(e) {            
                        return e.text()
                    }).then(function(t) {
                        console.log(t)
                        var c = document.createElement("div");
                        c.innerHTML = t;            
                        var blah = c.querySelector(".activity-overview-box");
                        blah.innerHTML = "";

                        var d = c.querySelector(".js-yearly-contributions");
                        if (d.querySelector(".float-left.text-gray").innerHTML = i.summary_text, d.querySelector("include-fragment")) setTimeout(l, 500);
                        else {
                            if (i.responsive === !0) {
                                var f = d.querySelector("svg.js-calendar-graph-svg"),
                                    p = f.getAttribute("width"),
                                    b = f.getAttribute("height");
                                f.removeAttribute("height"), f.setAttribute("width", "100%"), f.setAttribute("viewBox", "0 0 " + p + " " + b)
                            }
                            if (i.global_stats !== !1) {
                                var m = r(n("svg", d).outerHTML),
                                    g = m.current_streak ? o(m.current_streak_range[0], s) + " – " + o(m.current_streak_range[1], s) : m.last_contributed ? "Last contributed in " + o(m.last_contributed, s) + "." : "Rock - Hard Place",
                                    h = m.longest_streak ? o(m.longest_streak_range[0], s) + " – " + o(m.longest_streak_range[1], s) : m.last_contributed ? "Last contributed in " + o(m.last_contributed, s) + "." : "Rock - Hard Place",
                                    y = n("<div>", {
                                        "class": "contrib-column contrib-column-first table-column",
                                        html: '<span class="text-muted">Contributions in the last year</span>\n                               <span class="contrib-number">' + m.last_year + ' total</span>\n                               <span class="text-muted">' + o(a.subtract(new Date, 1, "year"), u) + " – " + o(new Date, u) + "</span>"
                                    }),
                                    M = n("<div>", {
                                        "class": "contrib-column table-column",
                                        html: '<span class="text-muted">Longest streak</span>\n                               <span class="contrib-number">' + m.longest_streak + ' days</span>\n                               <span class="text-muted">' + h + "</span>"
                                    }),
                                    x = n("<div>", {
                                        "class": "contrib-column table-column",
                                        html: '<span class="text-muted">Current streak</span>\n                               <span class="contrib-number">' + m.current_streak + ' days</span>\n                               <span class="text-muted">' + g + "</span>"
                                    });
                                d.appendChild(y), d.appendChild(M), d.appendChild(x)
                            }
                            e.innerHTML = d.innerHTML
                        }
                    })["catch"](function(e) {
                        return console.error(e)
                    })
                };
                return c()
            }
        }, {
            "add-subtract-date": 2,
            elly: 4,
            formatoid: 6,
            "github-calendar-parser": 8
        }],
        2: [function(e, t) {
            function r(e) {
                return function t(r, n, a) {
                    switch (n = e * n, a) {
                        case "years":
                        case "year":
                            r.setFullYear(r.getFullYear() + n);
                            break;
                        case "months":
                        case "month":
                            r.setMonth(r.getMonth() + n);
                            break;
                        case "weeks":
                        case "week":
                            return t(r, 7 * n, "days");
                        case "days":
                        case "day":
                            r.setDate(r.getDate() + n);
                            break;
                        case "hours":
                        case "hour":
                            r.setHours(r.getHours() + n);
                            break;
                        case "minutes":
                        case "minute":
                            r.setMinutes(r.getMinutes() + n);
                            break;
                        case "seconds":
                        case "second":
                            r.setSeconds(r.getSeconds() + n);
                            break;
                        case "milliseconds":
                        case "millisecond":
                            r.setMilliseconds(r.getMilliseconds() + n);
                            break;
                        default:
                            throw new Error("Invalid range: " + a)
                    }
                    return r
                }
            }
            t.exports = {
                add: r(1),
                subtract: r(-1)
            }
        }, {}],
        3: [function(e, t) {
            t.exports.en = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"], t.exports.en.abbr = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"], t.exports.en["short"] = ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"], t.exports.fr = ["dimanche", "lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi"], t.exports.fr.abbr = ["dim", "lun", "mar", "mer", "jeu", "ven", "sam"], t.exports.fr["short"] = ["di", "lu", "ma", "me", "je", "ve", "sa"], t.exports.es = ["domingo", "lunes", "martes", "miercoles", "jueves", "viernes", "sabado"], t.exports.es.abbr = ["dom", "lun", "mar", "mir", "jue", "vie", "sab"], t.exports.es["short"] = ["do", "lu", "ma", "mi", "ju", "vi", "sa"], t.exports.it = ["Domenica", "Lunedi", "Martedi", "Mercoledi", "Giovedi", "Venerdi", "Sabato"], t.exports.it.abbr = ["Dom", "Lun", "Mar", "Mer", "Gio", "Ven", "Sab"], t.exports.it["short"] = ["D", "L", "Ma", "Me", "G", "V", "S"], t.exports = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"], t.exports.abbr = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"], t.exports["short"] = ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]
        }, {}],
        4: [function(e, t) {
            function r(e, t) {
                return "string" == typeof e ? "<" === e.charAt(0) ? (e = document.createElement(e.slice(1, -1)), n(t || {}, function(t, r) {
                    switch (r) {
                        case "text":
                            return void(e.textContent = t);
                        case "html":
                            return void(e.innerHTML = t)
                    }
                    e.setAttribute(r, t)
                }), e) : (t = t || document, t.querySelector(e)) : e
            }
            var n = e("iterate-object"),
                a = e("sliced");
            r.$$ = function(e, t) {
                return "string" == typeof e ? (t = t || document, a(t.querySelectorAll(e))) : [e]
            }, t.exports = r
        }, {
            "iterate-object": 9,
            sliced: 13
        }],
        5: [function(e, t) {
            t.exports = function(e, t, r) {
                t = t || 2, r = r || "0", e = e.toString();
                var n = t - e.length;
                return (0 >= n ? "" : r.repeat(n)) + e
            }
        }, {}],
        6: [function(e, t) {
            var r = e("months"),
                n = e("days"),
                a = e("fillo"),
                o = e("parse-it").Parser,
                u = {
                    YYYY: function(e, t) {
                        return t ? e.getUTCFullYear() : e.getFullYear()
                    },
                    YY: function(e, t) {
                        return u.YYYY(e, t) % 100
                    },
                    MMMM: function(e, t) {
                        return t ? r[e.getUTCMonth()] : r[e.getMonth()]
                    },
                    MMM: function(e, t) {
                        return t ? r.abbr[e.getUTCMonth()] : r.abbr[e.getMonth()]
                    },
                    MM: function(e, t) {
                        return a(t ? e.getUTCMonth() + 1 : e.getMonth() + 1)
                    },
                    M: function(e, t) {
                        return t ? e.getUTCMonth() + 1 : e.getMonth() + 1
                    },
                    dddd: function(e, t) {
                        return n[u.d(e, t)]
                    },
                    ddd: function(e, t) {
                        return n.abbr[u.d(e, t)]
                    },
                    dd: function(e, t) {
                        return n["short"][u.d(e, t)]
                    },
                    d: function(e, t) {
                        return t ? e.getUTCDay() : e.getDay()
                    },
                    DD: function(e, t) {
                        return a(u.D(e, t))
                    },
                    D: function(e, t) {
                        return t ? e.getUTCDate() : e.getDate()
                    },
                    A: function(e, t) {
                        return u.a(e, t).toUpperCase()
                    },
                    a: function(e, t) {
                        return u.H(e, t) >= 12 ? "pm" : "am"
                    },
                    hh: function(e, t) {
                        return a(u.h(e, t))
                    },
                    h: function(e, t) {
                        return u.H(e, t) % 12 || 12
                    },
                    HH: function(e, t) {
                        return a(u.H(e, t))
                    },
                    H: function(e, t) {
                        return t ? e.getUTCHours() : e.getHours()
                    },
                    mm: function(e, t) {
                        return a(u.m(e, t))
                    },
                    m: function(e, t) {
                        return t ? e.getUTCMinutes() : e.getMinutes()
                    },
                    ss: function(e, t) {
                        return a(u.s(e, t))
                    },
                    s: function(e, t) {
                        return t ? e.getUTCSeconds() : e.getSeconds()
                    },
                    S: function(e, t) {
                        return Math.round(u.s(e, t) / 60 * 10)
                    },
                    SS: function(e, t) {
                        return a(u.s(e, t) / 60 * 100)
                    },
                    SSS: function(e, t) {
                        return a(u.s(e, t) / 60 * 1e3, 3)
                    },
                    Z: function(e) {
                        var t = -e.getTimezoneOffset();
                        return (t >= 0 ? "+" : "-") + a(parseInt(t / 60)) + ":" + a(t % 60)
                    },
                    ZZ: function(e) {
                        var t = -e.getTimezoneOffset();
                        return (t >= 0 ? "+" : "-") + a(parseInt(t / 60)) + a(t % 60)
                    }
                },
                s = new o(u);
            t.exports = function(e, t) {
                return s.run(t, [e, e._useUTC])
            }
        }, {
            days: 3,
            fillo: 5,
            months: 10,
            "parse-it": 11
        }],
        7: [function(e, t) {
            t.exports = ["#eee", "#d6e685", "#8cc665", "#44a340", "#1e6823"]
        }, {}],
        8: [function(e, t) {
            var r = e("github-calendar-legend");
            t.exports = function(e) {
                var t = {
                        last_year: 0,
                        longest_streak: -1,
                        longest_streak_range: [],
                        current_streak: 0,
                        current_streak_range: [],
                        weeks: [],
                        days: [],
                        last_contributed: null
                    },
                    n = [],
                    a = function() {
                        t.current_streak > t.longest_streak && (t.longest_streak = t.current_streak, t.longest_streak_range[0] = t.current_streak_range[0], t.longest_streak_range[1] = t.current_streak_range[1])
                    };
                return e.split("\n").slice(2).map(function(e) {
                    return e.trim()
                }).forEach(function(e) {
                    if (e.startsWith("<g transform")) return n.length && t.weeks.push(n) && (n = []);
                    var o = e.match(/fill="(#[a-z0-9]+)"/),
                        u = e.match(/data-date="([0-9\-]+)"/),
                        s = e.match(/data-count="([0-9]+)"/);
                    if (o = o && o[1], u = u && u[1], s = s && +s[1], o) {
                        var i = {
                            fill: o,
                            date: new Date(u),
                            count: s,
                            level: r.indexOf(o)
                        };
                        0 === t.current_streak && (t.current_streak_range[0] = i.date), i.count ? (++t.current_streak, t.last_year += i.count, t.last_contributed = i.date, t.current_streak_range[1] = i.date) : (a(), t.current_streak = 0), n.push(i), t.days.push(i)
                    }
                }), a(), t
            }
        }, {
            "github-calendar-legend": 7
        }],
        9: [function(e, t) {
            function r(e, t) {
                var r = 0,
                    n = [];
                if (Array.isArray(e))
                    for (; r < e.length && t(e[r], r, e) !== !1; ++r);
                else if ("object" === ("undefined" == typeof e ? "undefined" : _typeof(e)) && null !== e)
                    for (n = Object.keys(e); r < n.length && t(e[n[r]], n[r], e) !== !1; ++r);
            }
            t.exports = r
        }, {}],
        10: [function(e, t) {
            t.exports = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], t.exports.abbr = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"], t.exports.it = ["Gennaio", "Febbraio", "Marzo", "Aprile", "Maggio", "Giugno", "Luglio", "Agosto", "Settembre", "Ottobre", "Novembre", "Dicembre"], t.exports.abbr.it = ["Gen", "Feb", "Mar", "Apr", "Mag", "Giu", "Lug", "Ago", "Set", "Ott", "Nov", "Dic"], t.exports.de = ["Januar", "Februar", "März", "April", "Mai", "Juni", "Juli", "August", "September", "Oktober", "November", "Dezember"], t.exports.abbr.de = ["Jan", "Feb", "Mär", "Apr", "Mai", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Dez"]
        }, {}],
        11: [function(e, t) {
            function r(e, t) {
                if (!(e instanceof t)) throw new TypeError("Cannot call a class as a function")
            }

            function n(e, t, r) {
                return new u(t).run(e, r)
            }
            var a = function() {
                    function e(e, t) {
                        for (var r = 0; r < t.length; r++) {
                            var n = t[r];
                            n.enumerable = n.enumerable || !1, n.configurable = !0, "value" in n && (n.writable = !0), Object.defineProperty(e, n.key, n)
                        }
                    }
                    return function(t, r, n) {
                        return r && e(t.prototype, r), n && e(t, n), t
                    }
                }(),
                o = e("regex-escape"),
                u = function() {
                    function e(t) {
                        r(this, e), this.obj = t || {}, this.re = new RegExp("^(" + Object.keys(t).map(o).join("|") + ")")
                    }
                    return a(e, [{
                        key: "run",
                        value: function(e, t) {
                            var r = "";
                            t = t || [];
                            do {
                                var n = e.match(this.re),
                                    a = n && n[1],
                                    o = a || e.charAt(0);
                                if (a) {
                                    var u = this.obj[a];
                                    "function" == typeof u && (u = u.apply(this, t)), r += u
                                } else r += o;
                                e = e.substring(o.length)
                            } while (e);
                            return r

                        }
                    }]), e
                }();
            n.Parser = u, t.exports = n
        }, {
            "regex-escape": 12
        }],
        12: [function(e, t) {
            function r(e) {
                return e.replace(/[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g, "\\$&")
            }
            r.proto = function() {
                return RegExp.escape = r, r
            }, t.exports = r
        }, {}],
        13: [function(e, t) {
            t.exports = function(e, t, r) {
                var n = [],
                    a = e.length;
                if (0 === a) return n;
                var o = 0 > t ? Math.max(0, t + a) : t || 0;
                for (void 0 !== r && (a = 0 > r ? r + a : r); a-- > o;) n[a - o] = e[a];
                return n
            }
        }, {}]
    }, {}, [1])(1)
});


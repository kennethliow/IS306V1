(function(a) {
	a.fn.awShowcase = function(s) {
		var y = {
			content_width : 700,
			content_height : 470,
			fit_to_parent : false,
			auto : false,
			interval : 3000,
			continuous : false,
			loading : true,
			tooltip_width : 200,
			tooltip_icon_width : 32,
			tooltip_icon_height : 32,
			tooltip_offsetx : 18,
			tooltip_offsety : 0,
			arrows : true,
			buttons : true,
			btn_numbers : false,
			keybord_keys : false,
			mousetrace : false,
			pauseonover : true,
			stoponclick : true,
			transition : "hslide",
			transition_delay : 300,
			transition_speed : 500,
			show_caption : "onload",
			thumbnails : false,
			thumbnails_position : "outside-last",
			thumbnails_direction : "vertical",
			thumbnails_slidex : 0,
			dynamic_height : false,
			speed_change : false,
			viewline : false,
			fullscreen_width_x : 15,
			custom_function : null
		};
		s = a.extend(y, s);
		var R = 0;
		var m = 0;
		var o = false;
		var k = false;
		var G = null;
		var I = a(this);
		var D = s.content_width;
		var p = false;
		var L = 10000;
		var w = 0;
		var Q = 0;
		var q = 0;
		var C = a(document.createElement("div")).css("overflow", "hidden").css(
				"position", "relative").addClass("showcase-content-container")
				.prependTo(I);
		if (s.fit_to_parent) {
			D = a(I).width() + s.fullscreen_width_x
		}
		if (s.viewline) {
			s.thumbnails = false;
			s.dynamic_height = false;
			C.css("width", L);
			I.css("overflow", "hidden");
			$(".showcase-arrow-previous").hide()
		}
		var c = [];
		var K = [];
		var f = 0;
		I.children(".showcase-slide").each(function() {
			var W = a(this);
			f++;
			if (s.thumbnails) {
				var V = W.find(".showcase-thumbnail");
				K.push(V);
				V.remove()
			}
			var U = W.find(".showcase-content").children().width();
			var X = W.find(".showcase-content").children().height();
			c.push(W.html());
			W.remove();
			var Y = x(f - 1);
			if (s.viewline || f === 1) {
				C.append(Y)
			}
			if (s.viewline) {
				Y.css("position", "relative");
				Y.css("float", "left");
				Y.css("width", U)
			}
			if (s.dynamic_height) {
				Y.css("height", X);
				if (f === 1) {
					C.css("height", X)
				}
			} else {
				Y.css("height", s.content_height);
				if (f === 1) {
					C.css("height", s.content_height)
				}
			}
			if (s.viewline || f === 1) {
				O(Y);
				n(Y);
				if (s.show_caption === "show") {
					a(Y).find(".showcase-caption").show()
				}
			}
		});
		var B;
		var t = 0;
		var z = 0;
		if (s.thumbnails) {
			thumb_container = a("<div />");
			thumb_restriction = a("<div />");
			B = a("<div />");
			for (i = K.length - 1; i >= 0; --i) {
				var J = a(K[i]).css({
					overflow : "hidden"
				});
				J.attr("id", "showcase-thumbnail-" + i);
				J.addClass((i === 0) ? "active" : "");
				J.click(function(V, U) {
					return function() {
						if (G) {
							k = true;
							clearInterval(G)
						}
						v(V, U)
					}
				}(i, ""));
				B.prepend(J)
			}
			if (s.thumbnails_position === "outside-first"
					|| s.thumbnails_position === "outside-last") {
				if (s.thumbnails_direction !== "horizontal") {
					C.css("float", "left");
					C.css("width", s.content_width);
					thumb_container.css("float", "left");
					thumb_container.css("height", s.content_height)
				} else {
					a(B).find(".showcase-thumbnail").css("float", "left")
				}
				if (s.thumbnails_position === "outside-last") {
					I.append(thumb_container);
					if (s.thumbnails_direction !== "horizontal") {
						I.append(a("<div />").addClass("clear"))
					}
				} else {
					I.prepend(thumb_container);
					if (s.thumbnails_direction !== "horizontal") {
						I.append(a("<div />").addClass("clear"))
					}
				}
			} else {
				thumb_container.css({
					position : "absolute",
					"z-index" : 20
				});
				if (s.thumbnails_direction === "horizontal") {
					thumb_container.css({
						left : 0,
						right : 0
					});
					a(B).find(".showcase-thumbnail").css("float", "left");
					a(B).append(a("<div />").addClass("clear"));
					if (s.thumbnails_position === "inside-first") {
						thumb_container.css("top", 0)
					} else {
						thumb_container.css("bottom", 0)
					}
				} else {
					thumb_container.css({
						top : 0,
						bottom : 0
					});
					if (s.thumbnails_position === "inside-first") {
						thumb_container.css("left", 0)
					} else {
						thumb_container.css("right", 0)
					}
				}
				C.prepend(thumb_container)
			}
			thumb_container.addClass("showcase-thumbnail-container");
			thumb_container.css("overflow", "hidden");
			thumb_restriction.addClass("showcase-thumbnail-restriction");
			thumb_restriction.css({
				overflow : "hidden",
				position : "relative"
			});
			if (s.thumbnails_direction === "horizontal") {
				thumb_restriction.css({
					"float" : "left"
				})
			}
			B.addClass("showcase-thumbnail-wrapper");
			if (s.thumbnails_direction === "horizontal") {
				B.addClass("showcase-thumbnail-wrapper-horizontal")
			} else {
				B.addClass("showcase-thumbnail-wrapper-vertical")
			}
			B.css("position", "relative");
			thumb_restriction.append(B);
			thumb_container.append(thumb_restriction);
			var g = a('<div class="showcase-thumbnail-button-backward" />');
			if (s.thumbnails_direction !== "horizontal") {
				g
						.html('<span class="showcase-thumbnail-vertical"><span>Up</span></span>')
			} else {
				g.css({
					"float" : "left"
				});
				g
						.html('<span class="showcase-thumbnail-horizontal"><span>Left</span></span>')
			}
			g.click(function() {
				P("backward", false, true)
			});
			thumb_container.prepend(g);
			var b = a('<div class="showcase-thumbnail-button-forward" />');
			if (s.thumbnails_direction !== "horizontal") {
				b
						.html('<span class="showcase-thumbnail-vertical"><span>Down</span></span>')
			} else {
				b.css({
					"float" : "left"
				});
				b
						.html('<span class="showcase-thumbnail-horizontal"><span>Right</span></span>')
			}
			b.click(function() {
				P("forward", false, true)
			});
			thumb_container.append(b);
			var T = 0;
			if (s.thumbnails_direction !== "horizontal") {
				T = e(B, false);
				T += (e(g)) + (e(b));
				while (T < s.content_height) {
					T += e(a(K[0]));
					z++
				}
			} else {
				T = u(B, false);
				T += (u(g)) + (u(b));
				while (T < D) {
					T += u(a(K[0]));
					z++
				}
			}
			if (z + 1 > K.length) {
				if (s.thumbnails_direction !== "horizontal") {
					thumb_restriction.css("margin-top", e(g))
				} else {
					thumb_restriction.css("margin-left", u(g))
				}
				g.hide();
				b.hide()
			}
			if (s.thumbnails_direction !== "horizontal") {
				var j = (e(g)) + (e(b));
				thumb_restriction.css("height", s.content_height - j)
			} else {
				var r = (u(g)) + (u(b));
				thumb_restriction.css("width", D - r)
			}
			if (s.thumbnails_direction === "horizontal") {
				a(".showcase-thumbnail").each(function() {
					t += u(a(this))
				});
				B.css("width", t)
			} else {
				a(".showcase-thumbnail").each(function() {
					t += e(a(this))
				})
			}
		}
		if (s.thumbnails && s.thumbnails_position.indexOf("outside") !== -1
				&& s.thumbnails_direction !== "horizontal" && !s.viewline) {
			I.css("width", D + u(B, true, false))
		} else {
			if (!s.fit_to_parent) {
				I.css("width", D)
			}
		}
		if (f > 1 && s.auto) {
			G = window.setInterval(M, s.interval)
		}
		if (s.auto && s.pauseonover) {
			I.mouseenter(function() {
				o = true;
				clearInterval(G)
			});
			I.mouseleave(function() {
				if (!k) {
					o = false;
					G = window.setInterval(M, s.interval)
				}
			})
		}
		if (s.arrows && f > 1) {
			a(document.createElement("div"))
					.addClass("showcase-arrow-previous").prependTo(I).click(
							function() {
								if (G) {
									if (s.stoponclick) {
										k = true
									}
									clearInterval(G)
								}
								v((R === 0) ? f - 1 : parseInt(R) - 1,
										"previous")
							});
			a(document.createElement("div")).addClass("showcase-arrow-next")
					.prependTo(I).click(function() {
						if (G) {
							if (s.stoponclick) {
								k = true
							}
							clearInterval(G)
						}
						v(R + 1, "next")
					});
			if (s.viewline) {
				$(".showcase-arrow-previous").hide()
			}
		}
		if (s.buttons && f > 1) {
			a(document.createElement("div")).css("clear", "both").addClass(
					"showcase-button-wrapper").appendTo(I);
			i = 0;
			while (i < f) {
				a(document.createElement("span")).attr("id",
						"showcase-navigation-button-" + i).addClass(
						(i === 0) ? "active" : "").html(
						(s.btn_numbers) ? parseInt(i) + 1 : "&#9679;").click(
						function(V, U) {
							return function() {
								if (G) {
									if (s.stoponclick) {
										k = true
									}
									clearInterval(G)
								}
								v(V, U)
							}
						}(i, "")).appendTo(
						a(I).find(".showcase-button-wrapper"));
				i++
			}
		}
		if (s.keybord_keys) {
			a(document).keydown(function(U) {
				if (s.stoponclick) {
					k = true
				}
				if (G) {
					clearInterval(G)
				}
				if (U.keyCode === 37) {
					v((R === 0) ? f - 1 : parseInt(R) - 1, "previous")
				}
				if (U.keyCode === 39) {
					v((R === f - 1) ? 0 : parseInt(R) + 1, "next")
				}
			})
		}
		function x(V) {
			var U = a(document.createElement("div")).attr("id",
					"showcase-content-" + V).css("overflow", "hidden").css(
					"position", "absolute").addClass("showcase-content").html(
					c[V]);
			if (!s.viewline) {
				U.css("width", s.content_width)
			}
			if (s.fit_to_parent && !s.viewline) {
				U.css("left", (D / 2) - s.content_width / 2)
			}
			return U
		}
		function M() {
			var U = parseInt(R) + 1;
			if (U === f && s.continuous) {
				U = 0
			} else {
				if (U === f && !s.continuous) {
					o = true;
					clearInterval(G)
				}
			}
			if (!o) {
				v(U, "next")
			}
		}
		function v(aa, Z) {
			if (R !== aa && !p) {
				var Y;
				var X;
				var U = 0;
				var V;
				var W = (s.fit_to_parent) ? (D / 2) - (s.content_width / 2) : 0;
				if ((aa > R && Z !== "previous") || Z === "next") {
					if (s.viewline) {
						if (R < f - 1) {
							if (!s.speed_change) {
								p = true
							}
							h();
							if (s.pauseonover) {
								window.clearInterval(G)
							}
							q = 0;
							for (V = R + 1, len = f; V < len; ++V) {
								Y = l[V];
								q += Y.find(".showcase-content").children()
										.width()
							}
							if (q > D) {
								Q = w;
								w -= l[R].find(".showcase-content").children()
										.width()
							} else {
								if ($(".showcase-arrow-next").is(":visible")) {
									Q = w;
									w = -(L - (q + (D - q)));
									$(".showcase-arrow-next").fadeOut(300)
								}
							}
							C.animate({
								left : w + "px"
							}, s.transition_speed, function() {
								p = false
							});
							if ($(".showcase-arrow-next").is(":visible")) {
								R++
							}
							$(".showcase-arrow-previous").fadeIn(300)
						}
					} else {
						if (!s.speed_change) {
							p = true
						}
						Y = a(I).find("#showcase-content-" + parseInt(R));
						X = x(aa);
						C.append(X);
						if (s.dynamic_height) {
							X.css("height", X.find(".showcase-content")
									.children().height())
						} else {
							X.css("height", s.content_height)
						}
						if (Y.find(".showcase-content").children().height() > X
								.find(".showcase-content").children().height()
								&& s.dynamic_height) {
							C.stop(true, true).animate(
									{
										height : X.find(".showcase-content")
												.children().height()
									}, 200);
							U = 100
						}
						if (s.transition === "hslide") {
							a(Y).delay(U).animate({
								left : -(s.content_width)
							}, s.transition_speed + s.transition_delay,
									function() {
										Y.remove()
									})
						} else {
							if (s.transition === "vslide") {
								a(Y).delay(U).animate({
									top : -(s.content_height)
								}, s.transition_speed + s.transition_delay,
										function() {
											Y.remove()
										})
							} else {
								a(Y).delay(U).fadeOut(s.transition_speed,
										function() {
											Y.remove()
										})
							}
						}
						O(Y, true);
						n(Y, true);
						if (s.transition === "hslide") {
							X.css("left", D);
							a(X).delay(U).animate({
								left : W
							}, s.transition_speed, function() {
								O(X);
								n(X);
								N(X)
							})
						} else {
							if (s.transition === "vslide") {
								X.css("top", I.height());
								a(X).delay(U).animate({
									top : "0px"
								}, s.transition_speed, function() {
									O(X);
									n(X);
									N(X)
								})
							} else {
								X.css("left", W);
								X.css("display", "none");
								a(X).delay(U).fadeIn(s.transition_speed,
										function() {
											O(X);
											n(X);
											N(X)
										})
							}
						}
					}
				} else {
					if (aa < R || Z === "previous") {
						if (s.viewline) {
							if (R !== 0) {
								if (!s.speed_change) {
									p = true
								}
								h();
								if (s.pauseonover) {
									window.clearInterval(G)
								}
								C.animate({
									left : Q + "px"
								}, s.transition_speed, function() {
									p = false
								});
								w = Q;
								R--;
								if (R === 0) {
									$(".showcase-arrow-previous").fadeOut(300)
								}
								old_id = R - 1;
								sub_width = a(l[old_id]).width();
								Q = Q + sub_width
							}
							$(".showcase-arrow-next").fadeIn(300)
						} else {
							if (!s.speed_change) {
								p = true
							}
							Y = a(I).find("#showcase-content-" + parseInt(R));
							X = x(aa);
							C.append(X);
							if (s.dynamic_height) {
								X.css("height", X.find(".showcase-content")
										.children().height())
							} else {
								X.css("height", s.content_height)
							}
							if (Y.find(".showcase-content").children().height() > X
									.find(".showcase-content").children()
									.height()
									&& s.dynamic_height) {
								C.stop(true, true).animate(
										{
											height : X
													.find(".showcase-content")
													.children().height()
										}, 200);
								U = 100
							}
							if (s.transition === "hslide") {
								a(Y).delay(U).animate({
									left : (D) + "px"
								}, s.transition_speed + s.transition_delay,
										function() {
											O(Y, true);
											n(Y, true);
											Y.remove()
										})
							} else {
								if (s.transition === "vslide") {
									a(Y).delay(U).animate({
										top : (s.content_height) + "px"
									}, s.transition_speed + s.transition_delay,
											function() {
												O(Y, true);
												n(Y, true);
												Y.remove()
											})
								} else {
									a(Y).delay(U).fadeOut(s.transition_speed,
											function() {
												O(Y, true);
												n(Y, true);
												Y.remove()
											})
								}
							}
							if (s.transition === "hslide") {
								X.css("left", "-" + s.content_width + "px");
								a(X).delay(U).animate({
									left : W
								}, s.transition_speed, function() {
									O(X);
									n(X);
									N(X)
								})
							} else {
								if (s.transition === "vslide") {
									X.css("top", "-" + I.height() + "px");
									a(X).delay(U).animate({
										top : "0px"
									}, s.transition_speed, function() {
										O(X);
										n(X);
										N(X)
									})
								} else {
									X.css("left", W);
									X.css("display", "none");
									a(X).delay(U).fadeIn(s.transition_speed,
											function() {
												O(X);
												n(X);
												N(X)
											})
								}
							}
							C.append(X)
						}
					}
				}
				if (!s.viewline) {
					m = R;
					R = aa;
					if (s.thumbnails) {
						if ((R > m && Z !== "previous") || Z === "next") {
							P("forward", true)
						} else {
							if (R < m || Z === "previous") {
								P("backward", true)
							}
						}
					}
					if (s.arrows) {
						a(I).find(".showcase-arrow-previous").unbind("click")
								.click(
										function() {
											if (G) {
												if (s.stoponclick) {
													k = true
												}
												clearInterval(G)
											}
											v((R === 0) ? f - 1
													: parseInt(R) - 1,
													"previous")
										});
						a(I).find(".showcase-arrow-next").unbind("click")
								.click(
										function() {
											if (G) {
												if (s.stoponclick) {
													k = true
												}
												clearInterval(G)
											}
											v((R === f - 1) ? 0
													: parseInt(R) + 1, "next")
										})
					}
					if (s.thumbnails) {
						V = 0;
						I.find(".showcase-thumbnail").each(function() {
							var ab = a(this);
							ab.removeClass("active");
							if (V === R) {
								ab.addClass("active")
							}
							V++
						})
					}
					if (s.show_caption === "show") {
						a(X).find(".showcase-caption").show()
					}
				}
				if (s.buttons) {
					V = 0;
					I.find(".showcase-button-wrapper span").each(function() {
						var ab = a(this);
						ab.removeClass("active");
						if (V === R) {
							ab.addClass("active")
						}
						V++
					})
				}
				if (typeof s.custom_function == "function") {
					s.custom_function()
				}
			}
		}
		function N(U) {
			if (s.dynamic_height) {
				C.stop(true, true).animate({
					height : U.find(".showcase-content").children().height()
				}, 200)
			}
			p = false
		}
		var E = 0;
		function P(ac, X, W) {
			var ab = true;
			var ad = e(a(B).find(".showcase-thumbnail"));
			if (s.thumbnails_direction === "horizontal") {
				ad = u(a(B).find(".showcase-thumbnail"))
			}
			var ae = 1;
			if (s.thumbnails_slidex === 0) {
				s.thumbnails_slidex = z
			}
			if (X) {
				var V = E;
				var Y = 0;
				while (V < 0) {
					if (s.thumbnails_direction === "horizontal") {
						V += u(a(K[0]))
					} else {
						V += e(a(K[0]))
					}
					Y++
				}
				var aa = Y;
				var Z = z + Y - 1;
				if (R >= aa && R <= Z) {
					ab = false
				}
				var U;
				if ((R - Z) > s.thumbnails_slidex) {
					U = R - Z;
					while (U > s.thumbnails_slidex) {
						U -= s.thumbnails_slidex;
						ae++
					}
				} else {
					if ((aa - R) > s.thumbnails_slidex) {
						U = aa - R;
						while (U > s.thumbnails_slidex) {
							U -= s.thumbnails_slidex;
							ae++
						}
					} else {
						ae = 1
					}
				}
			}
			if (ac === "forward" && ab) {
				if (s.thumbnails_direction === "vertical"
						&& s.content_height < (t + E)) {
					E -= ad * (s.thumbnails_slidex * ae)
				} else {
					if (s.thumbnails_direction === "horizontal"
							&& s.content_width < (t + E)) {
						E -= ad * (s.thumbnails_slidex * ae)
					} else {
						if (R === 0) {
							if (!W) {
								E = 0
							}
						}
					}
				}
				if (s.thumbnails_direction === "horizontal") {
					B.animate({
						left : E
					}, 300)
				} else {
					B.animate({
						top : E
					}, 300)
				}
			} else {
				if (ab) {
					if (E < 0) {
						E += ad * (s.thumbnails_slidex * ae)
					} else {
						if (R === f - 1) {
							if (!W) {
								E -= ad * (s.thumbnails_slidex * ae)
							}
						} else {
							E = 0
						}
					}
					if (s.thumbnails_direction === "horizontal") {
						B.animate({
							left : E
						}, 300)
					} else {
						B.animate({
							top : E
						}, 300)
					}
				}
			}
		}
		function n(U, W) {
			var V = U.find(".showcase-caption");
			if (!W) {
				if (s.show_caption === "onload") {
					V.fadeIn(300)
				} else {
					if (s.show_caption === "onhover") {
						a(U).mouseenter(function() {
							V.fadeIn(300)
						});
						a(U).mouseleave(function() {
							V.stop(true, true).fadeOut(100)
						})
					}
				}
			} else {
				V.stop(true, true).fadeOut(300)
			}
		}
		function O(U, V) {
			U
					.find(".showcase-tooltips a")
					.each(
							function() {
								if (!V) {
									var X = a(this).attr("coords");
									X = X.split(",");
									a(this).addClass("showcase-plus-anchor");
									a(this).css("position", "absolute");
									a(this).css("display", "none");
									a(this).css("width", s.tooltip_icon_width);
									a(this)
											.css("height",
													s.tooltip_icon_height);
									a(this)
											.css(
													"left",
													parseInt(X[0])
															- (parseInt(s.tooltip_icon_width) / 2));
									a(this)
											.css(
													"top",
													parseInt(X[1])
															- (parseInt(s.tooltip_icon_height) / 2));
									var W = a(this).html();
									a(this).mouseenter(function() {
										d(U, X[0], X[1], W)
									});
									a(this).mouseleave(function() {
										d(U, X[0], X[1], W)
									});
									a(this).html("");
									a(this).fadeIn(300)
								} else {
									a(this).stop(true, true).fadeOut(300)
								}
							})
		}
		var A = null;
		function d(V, U, Z, W) {
			if (A === null) {
				A = a(document.createElement("div")).addClass(
						"showcase-tooltip").css("display", "none").css(
						"position", "absolute").css("max-width",
						s.tooltip_width).html(W);
				V.append(A);
				var Y = parseInt(A.css("padding-right")) * 2
						+ parseInt(A.css("border-right-width")) * 2;
				var X = parseInt(A.css("padding-bottom")) * 2
						+ parseInt(A.css("border-bottom-width")) * 2;
				lastx = parseInt(U) + A.width() + Y;
				lasty = parseInt(Z) + A.height() + X;
				if (lastx < s.content_width) {
					A.css("left", parseInt(U) + parseInt(s.tooltip_offsetx))
				} else {
					A
							.css(
									"left",
									(parseInt(U) - parseInt(s.tooltip_offsetx))
											- (parseInt(A.width()) + parseInt(s.tooltip_offsetx)))
				}
				if (lasty < s.content_height) {
					A.css("top", parseInt(Z) + parseInt(s.tooltip_offsety))
				} else {
					A.css("top", (parseInt(Z) - parseInt(s.tooltip_offsety))
							- (parseInt(A.height()) + parseInt(X)))
				}
				A.fadeIn(400)
			} else {
				A.fadeOut(400);
				A.remove();
				A = null
			}
		}
		function e(W, aa, X, V, Z) {
			aa = typeof (aa) !== "undefined" ? aa : true;
			X = typeof (X) !== "undefined" ? X : true;
			V = typeof (V) !== "undefined" ? V : true;
			Z = typeof (Z) !== "undefined" ? Z : true;
			var U = (aa) ? a((W)).height() : 0;
			var Y = 0;
			if (X) {
				if (a(W).css("margin-left") !== "auto") {
					Y = parseFloat(a(W).css("margin-left"))
				}
				if (a(W).css("margin-right") !== "auto") {
					Y += parseFloat(a(W).css("margin-right"))
				}
			}
			elPadding = 0;
			if (V) {
				if (a(W).css("padding-left") !== "auto") {
					elPadding = parseFloat(a(W).css("padding-left"))
				}
				if (a(W).css("padding-right") !== "auto") {
					elPadding += parseFloat(a(W).css("padding-right"))
				}
			}
			elBorder = 0;
			if (Z) {
				if (a(W).css("border-left-width") !== "auto") {
					elBorder = parseFloat(a(W).css("border-left-width"))
				}
				if (a(W).css("border-right-width") !== "auto") {
					elBorder += parseFloat(a(W).css("border-right-width"))
				}
			}
			U += Y + elPadding + elBorder;
			return U
		}
		function u(W, aa, X, U, Z) {
			aa = typeof (aa) !== "undefined" ? aa : true;
			X = typeof (X) !== "undefined" ? X : true;
			U = typeof (U) !== "undefined" ? U : true;
			Z = typeof (Z) !== "undefined" ? Z : true;
			var V = (aa) ? a((W)).width() : 0;
			var Y = 0;
			if (X) {
				if (a(W).css("margin-left") !== "auto") {
					Y = parseFloat(a(W).css("margin-left"))
				}
				if (a(W).css("margin-right") !== "auto") {
					Y += parseFloat(a(W).css("margin-right"))
				}
			}
			elPadding = 0;
			if (U) {
				if (a(W).css("padding-left") !== "auto") {
					elPadding = parseFloat(a(W).css("padding-left"))
				}
				if (a(W).css("padding-right") !== "auto") {
					elPadding += parseFloat(a(W).css("padding-right"))
				}
			}
			elBorder = 0;
			if (Z) {
				if (a(W).css("border-left-width") !== "auto") {
					elBorder = parseFloat(a(W).css("border-left-width"))
				}
				if (a(W).css("border-right-width") !== "auto") {
					elBorder += parseFloat(a(W).css("border-right-width"))
				}
			}
			V += Y + elPadding + elBorder;
			return V
		}
		if (s.mousetrace) {
			var S = a(document.createElement("div"))
					.css("position", "absolute").css("top", "0").css(
							"background-color", "#fff").css("color", "#000")
					.css("padding", "3px 5px").css("x-index", "30").html(
							"X: 0 Y: 0");
			I.append(S);
			var F = I.offset();
			C.mousemove(function(U) {
				S.html("X: " + (U.pageX - F.left) + " Y: " + (U.pageY - F.top))
			})
		}
		$("#awOnePageButton").click(
				function H() {
					if ($(".view-page").is(":visible")) {
						var V = a(document.createElement("div"));
						V.addClass("showcase-onepage");
						I.before(V);
						if (G) {
							k = true;
							clearInterval(G)
						}
						$(this).find(".view-page").hide();
						$(this).find(".view-slide").show();
						I.hide();
						$.each(c, function(W, X) {
							obj = x(W);
							obj.css("position", "relative");
							V.append(obj);
							O(obj);
							n(obj);
							if (s.dynamic_height) {
								obj.css("height", obj.find(".showcase-content")
										.children().height())
							} else {
								obj.css("height", s.content_height)
							}
						});
						var U = a(document.createElement("div"));
						U.addClass("clear");
						V.append(U)
					} else {
						$(".showcase-onepage").remove();
						$(this).find(".view-page").show();
						$(this).find(".view-slide").hide();
						I.show()
					}
					return false
				});
		var l = [];
		function h() {
			L = 0;
			C.children("div").each(function() {
				L += $(this).find(".showcase-content").children().width();
				l.push($(this))
			})
		}
		I.removeClass("showcase-load")
	}
})(jQuery);
$(function() {
	$("#rotator").awShowcase({
		arrows : false,
		auto : true,
		buttons : false,
		content_width : 604,
		content_height : 384,
		continuous : true,
		interval : 5000,
		thumbnails : true,
		thumbnails_position : "outside-first",
		transition : "fade",
		transition_speed : 800
	})
});
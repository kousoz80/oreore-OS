 ' Circuit Simulator
 xmax = 400: ymax = 200
 color &hff00
 xlog = 1: xlin = 0: ylog = 1: ylin = 0: xstart = 1: stp = 1e+08
 dim dev$(100), amp(xmax), arg(xmax)
 open "circuit.txt" for input as #1
 input #1, xmode$
 if xmode$ = "xlin" then xlog = 0: xlin = 1
 input #1, ymode$
 if ymode$ = "ylin" then ylog = 0: ylin = 1
 input #1, xstart$: xstart$ = xstart$ + "       "
 if mid$(xstart$, 1, 6) = "start=" then xstart = val(mid$(xstart$, 7))
 if xstart <= 0 then goto @L780'errend
 input #1, stp$: stp$ = stp$ + "      "
 if mid$(stp$, 1, 5) = "stop=" then stp = val(mid$(stp$, 6))
 if xstart >= stp then goto @L780'errend
 if stp <= 0 then goto @L780'errend
 n = 0
@L180:
 'loop0:
 input #1,aa$
 if aa$="end" then @L240
 dev$(n)=aa$
 dev$(n) = dev$(n) + "  "
 n = n + 1
 goto @L180'loop0
@L240:
 'end if
 close
 if n = 0 then @L780'errend
 print "DEVICES = ";n
 amax = 0: amaxp = 0: amin = 1e30: aminp = 0
 for x = 0 to xmax - 1 step 10
 flin = xstart + (stp - xstart) * x / xmax
 flog = xstart * exp(log(stp / xstart) * x / xmax)
 f = flin * xlin + flog * xlog
 w = 6.2832 * f
 a0 = 1: a1 = 0: b0 = 0: b1 = 0: c0 = 0: c1 = 0: d0 = 1: d1 = 0
 for i = 0 to n - 1
 u0 = 1: u1 = 0: v0 = 0: v1 = 0: x0 = 0: x1 = 0: y0 = 1: y1 = 0
 dv$ = mid$(dev$(i), 1, 2): vl = val(mid$(dev$(i), 3))
 if dv$ = "gc" then v1 = w * vl
 if dv$ = "gl" then v1 = -1 / (w * vl)
 if dv$ = "gr" then v0 = 1 / vl
 if dv$ = "cc" then x1 = -1 / (w * vl)
 if dv$ = "cl" then x1 = w * vl
 if dv$ = "cr" then x0 = vl
 p0 = a0 * u0 - a1 * u1 + b0 * v0 - b1 * v1
 p1 = a0 * u1 + a1 * u0 + b0 * v1 + b1 * v0
 q0 = a0 * x0 - a1 * x1 + b0 * y0 - b1 * y1
 q1 = a0 * x1 + a1 * x0 + b0 * y1 + b1 * y0
 r0 = c0 * u0 - c1 * u1 + d0 * v0 - d1 * v1
 r1 = c0 * u1 + c1 * u0 + d0 * v1 + d1 * v0
 s0 = c0 * x0 - c1 * x1 + d0 * y0 - d1 * y1
 s1 = c0 * x1 + c1 * x0 + d0 * y1 + d1 * y0
 a0 = p0: a1 = p1: b0 = q0: b1 = q1: c0 = r0: c1 = r1: d0 = s0: d1 = s1
 next i
 ap = 1 / sqr(a0 * a0 + a1 * a1)
 ag = -atn(a1 / a0)
 amp(x) = ylin * ap + ylog * 20 * log(ap) / log(10)
 arg(x) = ag
 if ap > amax then amax = ap: amaxp = x
 if ap < amin then amin = ap: aminp = x
 next x
 amax = amp(amaxp): amin = amp(aminp)
 cls
 color &hffffff
 line(10,200)-(450,200):line(10,200)-(10,0)
 locate 0, 9
 print "Circuit Simulation"
 print "ZERO = "; xstart;"  SPAN = "; stp; "  MAX = "; amax;"  MIN = "; amin
 line (10, 200 - 140 * (amp(0) - amin) / (amax - amin))-(10, 200 - 140 * (amp(0) - amin) / (amax - amin))
 color &hff0000
 for x = 0 to xmax - 1 step 10
 line -(x + 10, 200 - 140 * (amp(x) - amin) / (amax - amin))
 next x
 color &hffffff
 line(10,130)-(450,130)
 line (10, 130 - 45 * arg(0) )-(10, 130 - 45 * arg(0) )
 color &h00ff00
 for x = 0 to xmax - 1 step 10
 line -(x + 10, 130 - 45 * arg(x))
 next x
 print "HIT ANY KEY TO EXIT";:xx$ = input$(1)
 cls:end
 '
@L780:
 'errend:
 print "ERROR!, HIT ANY KEY TO EXIT";:xx$ = input$(1)
 end

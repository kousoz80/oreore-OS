dim map(4096):sp$=chr$(34):ap$=chr$(39):a=rnd(0)

@startrek
y=2999
print "do you want a difficult game(y or n)? ";:a$=input$(1):print a$
print "stardate 3200:  your mission is ";
if a$="y" then y=999

@L15:
k=0:b=0:d=30
for i=0 to 63
j=int(rnd(99)+1<5):b=b+j
m=int(rnd(y))+1:m=(m<209)+(m<99)+(m<49)+(m<24)+(m<9)+(m<2):k=k+m
map(i)=-100*m-10*j-int(rnd(8)+1)
next i
if (b<2)+(k<4) then goto @L15

print "to destroy ";k;" klingons in 30 stardates."
print "there are ";b;" starbases.":gosub @L160:c=0:h=k

@L40:
u=int(rnd(8)+1):v=int(rnd(8)+1):x=int(rnd(8)+1):y=int(rnd(8)+1)

@L45:
for i=71 to 152:map(i)=0:next i
map(8*x+y+62)=4:m=abs(map(8*u+v-9)):n=int(m/100)
i=1:if n then for j=1 to n:gosub @L165:map(j+134)=300:map(j+140)=s:map(j+146)=t:next j
gosub @disp_position:m=m-100*n:i=2:if int(m/10) then gosub @L165
m=m-int(m/10)*10:i=3:if m then for j=1 to m:gosub @L165:next j

@main_loop:
gosub @L145:gosub @L325

if k then goto @L95
print :print "mission accomplished."
if d<3 then print "boy, you barely made it."
if d>5 then print "good work..."
if d>9 then print "fantastic!"
if d>13 then print "unbelievable!"
d=30-d:i=int(h*100/d)*10:print h;" klingons in ";d;" stardates. (";i;")"
j=100*(c=0)-5*c:print c;" casualties incurred. (";j;")"
print "your score:";i+j:goto @ending

@L95:
if d<0 then print "it";ap$;"s too late, the federation has been conquered.":goto @ending
if e>=0 then @command
print "enterprise destroyed":if h-k>9 then print "but you were a good man"

@ending:
y=987:print :print "anothere game(y or n)? ":a$=input$(1)
if a$="y" then @startrek
print "good bye."
end

@command:
s=220:g=180:l=200:p=260:r=420:w=465:t=555

print "r=report       s=sr. sensor   l=lr. sensor" 
print "g=galaxy map   p=phaser       t=torpedo"
print "w=warp engine"

print "**please use one of these commands*** "
print "command? ";:a$=input$(1):print a$
if a$="r" then @report
if a$="s" then @sr_sensor
if a$="l" then @lr_sensor
if a$="g" then @galaxy_map
if a$="p" then @phaser
if a$="t" then @torpedo
if a$="w" then @warp
goto @command


@L145:
for i=x-(x>1) to x+(x<8)
for j=y-(y>1) to y+(y<8)
if map(8*i+j+62)<>2 then next j:next i:o=0:return

if o=0 then print "sulu: ";sp$;"captain, we are docked at starbase.";sp$

@L160:
e=4000:f=10:o=1:for i=64 to 70:map(i)=0:next i
return

@L165:
s=int(rnd(8))+1:t=int(rnd(8))+1:a=8*s+t+62:if map(a) then @L165
map(a)=i
return

@disp_position:
print "enterprise in Q=";u;v;" S=";x;y
return

@galaxy_map:
gosub @disp_position:j=2:gosub @damaged:if i then goto @command
print " of galaxy map"
for i=0 to 7
print i+1;":";
for j=0 to 7:m=map(8*i+j) 
d$=str$((m>0)*m)
print left$("    ",4-len(d$));d$;
next j
print
next i
print "  ";:for i=0 to 7:print "  ..";:next i:print
print "  ";:for i=1 to 8:print "  ";i;" ";:next i:print
goto @command

@lr_sensor:
gosub @disp_position:j=3:gosub @damaged:if i then @command
print
for i=u-1 to u+1
for j=v-1 to v+1
m=8*i+j-9:a=0 
if (i>0)*(i<9)*(j>0)*(j<9) then a=abs(map(m)):map(m)=a
d$=str$(a)
print left$("    ", 4-len(d$));d$;
next j
print
next i
goto @command

@sr_sensor:
@L220:
gosub @disp_position:j=1:gosub @damaged:if i then @command
m=8*u+v-9:map(m)=abs(map(m))
print
for i=1 to 8
print i;
for j=1 to 8
m=map(8*i+j+62):if m=0 then print " .";
if m=1 then print " k";
if m=2 then print " b";
if m=3 then print " *";
if m=4 then print " e";
next j
print
next i
print " ";
for i=1 to 8:print " ";i;:next i
print :goto @command

@phaser:
@L260:
j=4:gosub @damaged:if i then @command
print " energized. ": input "units to fire",a
if a<1 then @command
if a>e then print "spock: ";sp$;"we have only ";e;" units."sp$:goto @command
e=e-a:if n<1 then print "phaser fired at empty space.":goto @main_loop
a=int(a/n)
for m=135 to 140
if map(m)=0 then goto @L290
gosub @L295:print s;" units hit ";:gosub @L305
@L290:
next m
goto @main_loop

@L295:
if a>1090 then print "...overloaded..":j=4:map(67)=1:a=9:gosub @damaged 
i=map(m+6)-x:j=map(m+12)-y:s=int(a*30/(30+i*i+j*j))+1
return

@L305:
print "klingon at S=";map(m+6);map(m+12)
map(m)=map(m)-s 
if map(m)>0 then print " **damaged**":return
map(m)=0:i=8*u+v-9:j=int(map(i)/abs(map(i))):map(i)=map(i)-100*j:k=k-1
i=8*map(m+6)+map(m+12)+62:map(i)=0:n=n-1
print " ***destroyed***"
return

@L325:
if n=0 then return
print "klingon attack"
if o then print "starbase protects enterprise":return
t=0
for m=135 to 140
if map(m)=0 then goto @L350
a=int((map(m)+(int(rnd(map(m)))+1))/2)
gosub @L295:t=t+s:i=map(m+6):j=map(m+12)
print s;" units hit from klingon at S=";i;j

@L350:
next m

e=e-t
if e<=0 then print "*** bang ***";r:return r
print e," units of energy left.":if rnd(int(e/4))+1>t then return

@L360:
if map(70)=0 then map(70)=int(rnd(int(t/50)+1))+1:j=7:goto @damaged
j=int(rnd(6))+1
map(j+63)=int(rnd(int(t/99)+1))+1+map(j+63)
i=int(rnd(8)+2)
c=c+i
print "mc coy: ";sp$;"sickbay to bridge, we suffered";i;" casualties.";sp$

@damaged:
i=map(j+63)
if j=1 then print "short range sensor";
if j=2 then print "computer display";
if j=3 then print "long range sensor";
if j=4 then print "phaser";
if j=5 then print "warp engine";
if j=6 then print "photon torpedo tubes";
if j=7 then print "shield";
if i=0 then return
print " damaged, ";i;" stardates estimated for repair"
return


@report:
@L420:
print "status report:"
print "stardate ";3230-d
print "time left ";d
print "condition     ";
if o then print "docked":goto @L445
if n then print "red":goto @L445
if e<999 then print "yellow":goto @L445
print "green"
@L445:
print "position  Q=";u;v;" S=";x;y
print "energy ";e
print "torpedoes ";f
print "klingons left ";k
print "starbases ";b
for j=1 to 7
if map(j+63) then gosub @damaged
next j
goto @command

@warp:
@L465:
j=5:gosub @damaged:if i=0 then print
@L470:
input "sector distance";w
if w<1 then @command
if i*(w>2) then print "chekov: ";sp$;"we can try 2 at most, sir.";sp$:goto @L470 
if w>91 then w=91:print "spock: ";sp$;"are you sure, captain?";sp$
if e<int(w*w/2) then print "scotty: ";sp$;"sir, we do not have the energy.";sp$:goto @command 
gosub @L615:if r=0 then @command
d=d-1:e=e-int(w*w/2):map(8*x+y+62)=0
for m=64 to 70:map(m)=(map(m)-1)*(map(m)>0):next m
p=45*x+22:g=45*y+22:w=45*w
for m=1 to 8
w=w-r:if w<-22 then goto @L525
p=p+s:g=g+t:i=int(p/45):j=int(g/45)
if (i<1)+(i>8)+(j<1)+(j>8) then goto @L530
if map(8*i+j+62)=0 then x=i:y=j:next m 

print "**emergency stop**"
print "spock: ";sp$;"to err is human.";sp$

@L525:
map(8*x+y+62)=4:gosub @disp_position:goto @main_loop 
@L530:
p=u*72+int(p/5)+int(int(w/5)*s/r)-9
u=int(p/72):g=v*72+int(g/5)+int(int(w/5)*t/r)-9:v=int(g/72) 
if rnd(9)+1<2 then print "***space storm***":t=100:gosub @L360
if (u>0)*(u<9)*(v>0)*(v<9) then x=int((p+9-72*u)/9):y=int((g+9-72*v)/9):goto @L45
print "**you wandered outside the galaxy**"
print "on board computer takes over, and saved your life":goto @L40

@torpedo:
@L555:
j=6:gosub @damaged:if i then goto @command
if f=0 then print " empty":goto @command
print " loaded":gosub @L615:if r=0 then @command
print "torpedo track ";
f=f-1:p=45*x+22:g=45*y+22
for m=1 to 8
p=p+s:g=g+t:i=int(p/45):j=int(g/45)
if (i<1)+(i>8)+(j<1)+(j>8) then @L585
l=8*i+j+62:w=8*u+v-9:r=int(map(w)/abs(map(w))):print i;j;" ";

if map(l)=1 then @L590
if map(l)=2 then @L595
if map(l)=3 then @L600
if map(l)=4 then @L610

@L585:
next m
print "...missed"
goto @main_loop

@L590:
s=int(rnd(99)+281)
for m=135 to 140
if (map(m+6)=i)*(map(m+12)=j) then gosub @L305
next m
goto @main_loop

@L595:
b=b-1:map(l)=0:map(w)=map(w)-10*r
print "starbase destroyed"
print "spock: ";sp$;"i often find human behaviour fascinating.";sp$
goto @main_loop

@L600:
print "hit a star"
if rnd(9)+1<3 then print "torpedo absorbed"
goto @main_loop

@L605:
map(l)=0:map(w)=map(w)-r
if rnd(9)+1<6 print "star destroyed"
goto @main_loop

@L610:
t=300
print "it novas    ***radiation alarm***":gosub @L360
goto @main_loop


@L615:
input "course (0-360)",i
if (i>360)+(i<0) then r=0:return
s=int((i+45)/90):i=i-s*90:r=int((45+i*i)/110)+45
if s=0 then s=-45:t=i
if s=1 then s=i:t=45
if s=2 then s=45:t=-i
if s=3 then s=-i:t=-45
return

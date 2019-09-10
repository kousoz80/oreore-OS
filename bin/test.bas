a=1+2
a=1-2
a=1*2
a=1/2
a=1^2
a=sqr(1)
a=exp(1)
a=log(1)
a=sin(1)
a=cos(1)
a=tan(1)
a=atn(1)
a=int(2)
a=sgn(2)
a=abs(2)
a=rnd(2)
a$=inkey$
a$=input$(1)
a$=input$(1,2)
a$=mid$("123",1,2)
a$=left$("123",1)
a$=right$("123",1)
a$=str$(1)
a$=hex$(1)
a$=bin$(1)
a$=oct$(1)
a=len("123")
a=asc("1")
a$=chr$(60)
a=point(1,2)
a=instr("123","1",1)
color 0
locate 0,0
pset(0,0)
line(0,0)-(100,100)
box(0,0)-(100,100)
boxf(0,0)-(100,100)
circle(0,0)-(100,100)
circlef(0,0)-(100,100)
image (0,0),"fff"
exec "ls"
wait 10
open "www" for input as#1
open "xxx" for output as#2
close #1
close

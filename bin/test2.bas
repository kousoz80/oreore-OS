for i=1 to 10
gosub @ttt
next
end
 
@ttt:
if i>5 then t=-i else t=2*i
print t
return

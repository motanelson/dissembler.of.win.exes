import os
print("\033c\033[43;30m\nget me file name to show")
a=input()
print("\nget me function name to show")
b=input()
c="objdump -D $1 > out.txt".replace("$1",a)
os.system(c)
f1=open("out.txt","r")
d=f1.read()
f1.close()
e=d.split("\n")
i=False
for h in e:
    h=h.strip()
    if i:
        
        o=h.find(">:")
        i=False
    if i:
        print(h)
    j=h.find(">:")
    if j>-1:
        l=h.find(b)
        if l>-1:
            j=h.find("<")
            i=True
            print(h[j+1:])
     
        

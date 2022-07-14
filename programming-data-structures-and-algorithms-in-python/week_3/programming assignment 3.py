def contracting(l):
  final=[]
  f=abs(int(l[0]))+abs(int(l[1])+100)
  for p in range(len(l)-1):
  	diff=abs(int(l[p])-int(l[p+1]))
  	#print(&quot;diff=&quot;,diff,f)
  	if diff < f:
  		final.append(diff)
  		f=diff
  	else:
  		break
  return(len(final)==(len(l)-1))



def counthv(l):
	hv = []
	vc = []
	for a in range(1, len(l)-1):
		if l[a] > l[a + 1] and l[a] > l[a - 1]:
			hv.append(l[a])
		if l[a] < l[a + 1] and l[a] < l[a - 1]:
			vc.append(l[a])
	return [len(hv), len(vc)]

def leftrotate(m):
    p = []

    for i in range(len(m)):
        q = []
        for j in range(len(m[i])):
            q.append(m[j][len(m)-1-i])
        p.append(q)
    return p
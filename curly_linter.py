i=1
with open('Mechatronics.tex', 'r') as f:
	for line in f:
		if line.count('{') != line.count('}'):
			print i
		i+=1
from pysat.solvers import Glucose3
from pysat.formula import CNF

index = 1
aux = 0
n_clauses = 0
map_var = dict()
output_file = open("nonogram.cnf", "w") 


def mapping(varlist):
	global index
	for var in varlist:
		map_var[var] = index
		index = index + 1

def convert(s):
	sign = True if s[0] == '-' else False
	if sign:
		return "-"+str(map_var[s[1:]])
	return str(map_var[s])

def not_convert(s):
	sign = True if s[0] == '-' else False
	if sign:
		return str(map_var[s[1:]])
	return "-"+str(map_var[s])


def or_list(l):
	global n_clauses
	n_clauses += 1
	for el in l:
		output_file.write("{} ".format(convert(el)))
	output_file.write("0\n")

def at_least_one(l):
	or_list(l)

def at_most_one(l):
	global n_clauses
	for i in range(len(l)):
		for j in range(i+1, len(l)):
			output_file.write("{} {} 0\n".format(not_convert(l[i]),not_convert(l[j])))
			n_clauses += 1

def exactly_one(l):
	at_least_one(l)
	at_most_one(l)

def and_list(l):
	global n_clauses
	for var in l:
		output_file.write("{} 0\n".format(convert(var)))
		n_clauses += 1


def dnf_list(l1,l2):
	global n_clauses
	for var1 in l1:
		for var2 in l2:
			output_file.write("{} {} 0\n".format(convert(var1), convert(var2)))
			n_clauses = n_clauses + 1


def iff_list_and(x, l):
	# IF (ex. a1 -> (x00 and x01 and x02 ...) and so on)
	dnf_list(["-{}".format(x)], l)
	# ONLY IF
	l_neg = list()
	for var in l:
		s = "-{}".format(var) if var[0] != "-" else var[1:]
		l_neg.append("{}".format(s))
	l_neg.append(x)
	or_list(l_neg)


def dnf_formula(conjs):
	global aux
	l_a = list()
	for conj in conjs:
		a = "a{}".format(aux)
		aux += 1
		l_a.append(a)
		mapping([a])
		iff_list_and(a, conj)
	or_list(l_a)


def set_row(row, num, size):
	conjs = list()
	for i in range(0, 5-num+1):
		l = list()
		for j in range(0, num):
			l.append("x{}{}".format(row, (i+j)%size))
		for k in range(num, size):
			l.append("-x{}{}".format(row, (i+k)%size))
		conjs.append(l)
	dnf_formula(conjs)

def set_column(col, num, size):
	conjs = list()
	for i in range(0, 5-num+1):
		l = list()
		for j in range(0, num):
			l.append("x{}{}".format((i+j)%size, col))
		for k in range(num, size):
			l.append("-x{}{}".format((i+k)%size, col))
		conjs.append(l)
	dnf_formula(conjs)



var = list()
for i in range(0,5):
	for j in range(0,5):
		var.append("x{}{}".format(i,j))
mapping(var)
print(map_var)
exactly_one(["x40","x41","x42","x43","x44"])
and_list(["x30","x31","x32","x34","-x33"])
set_row(0,2,5)
set_row(1,3,5)
set_row(2,3,5)
set_column(0,2,5)
set_column(1,3,5)
set_column(2,4,5)
set_column(3,2,5)
set_column(4,2,5)
print(map_var)

formula = CNF(from_file='nonogram.cnf')
g = Glucose3(bootstrap_with=formula.clauses)
g.solve()
g.get_model()
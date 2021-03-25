from pysat.solvers import Glucose3
from pysat.formula import CNF

index = 1
aux = 0
n_clauses = 0
map_var = dict()

output_file = open("reserv.cnf", "w")

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

def if_list_or(x,l):
	global n_clauses
	for el in l:
		output_file.write("{} ".format(convert(el)))
	output_file.write("{} 0\n".format(not_convert(x)))
	n_clauses += 1


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


if __name__ == "__main__":
	l = list()
	for i in range(1,6):
		for j in range(1,6):
				l.append("p{}{}".format(i,j))
	for i in range(1,6):
		l.append("u{}".format(i))
	mapping(l)
	for i in range(1,6):
		l = list()
		for j in range(1,6):
			l.append("p{}{}".format(i,j))
		exactly_one(l)
	for j in range(1,6):
		l = list()
		for i in range(1,6):
			l.append("p{}{}".format(i,j))
		exactly_one(l)

	if_list_or("u1",["p11","p12"])
	if_list_or("u2",["p22","p24"])
	if_list_or("u4",["p42","p44"])
	if_list_or("u5",["p51","p55"])
	if_list_or("u3",["p31"])
	
	output_file.close()
	formula = CNF(from_file='reserv.cnf')
	g = Glucose3(bootstrap_with=formula.clauses)
	print(g.solve())
	print(g.solve(assumptions=[26]))
	print(g.solve(assumptions=[26,27]))
	print(g.solve(assumptions=[26,27,28]))
	#print(g.solve(assumptions=[26,27,28,29]))
	print(g.solve(assumptions=[26,27,29,30]))
	print(g.get_core())
	
	#print(g.get_core())
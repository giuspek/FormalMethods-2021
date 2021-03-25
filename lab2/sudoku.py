index = 1
n_clauses = 0
map_var = dict()
output_file = open("sudoku.cnf","w")

def mapping(varlist):
	global index
	for var in varlist:
		map_var[var] = index
		index = index + 1

def or_list(varlist):
	global n_clauses
	for var in varlist:
		output_file.write("{} ".format(map_var[var]))
	output_file.write("0\n")
	n_clauses = n_clauses + 1

def neg_or_list(varlist):
	global n_clauses
	for var in varlist:
		output_file.write("-{} ".format(map_var[var]))
	output_file.write("0\n")
	n_clauses = n_clauses + 1

def at_most_one(varlist):
	global n_clauses
	for i in range(0, len(varlist)):
		for j in range(i+1, len(varlist)):
			output_file.write("-{} -{} 0\n".format(map_var[varlist[i]], map_var[varlist[j]]))
			n_clauses = n_clauses + 1

def and_list(varlist):
	global n_clauses
	for var in varlist:
		output_file.write("{} 0\n".format(map_var[var]))
		n_clauses += 1


def exactly_one(varlist):
	#AtLeastOne
	or_list(varlist)
	#AtMostOne
	at_most_one(varlist)

varlist = list()
for i in range(1,10):
	for j in range(1,10):
		for k in range(1,10):
			varlist.append("x{}{}{}".format(i,j,k))

mapping(varlist)

# Each row
for i in range(1,10):
	for k in range(1,10):
		varlist = list()
		for j in range(1,10):
			varlist.append("x{}{}{}".format(i,j,k))
		exactly_one(varlist)

# Each colums
for j in range(1,10):
	for k in range(1,10):
		varlist = list()
		for i in range(1,10):
			varlist.append("x{}{}{}".format(i,j,k))
		exactly_one(varlist)

for k in range(1,10):
	for i in range(1,10,3):
		for j in range(1,10,3):
			varlist = list()
			varlist.append("x{}{}{}".format(i,j,k))
			varlist.append("x{}{}{}".format(i,j+1,k))
			varlist.append("x{}{}{}".format(i,j+2,k))
			varlist.append("x{}{}{}".format(i+1,j,k))
			varlist.append("x{}{}{}".format(i+2,j,k))
			varlist.append("x{}{}{}".format(i+1,j+1,k))
			varlist.append("x{}{}{}".format(i+1,j+2,k))
			varlist.append("x{}{}{}".format(i+2,j+1,k))
			varlist.append("x{}{}{}".format(i+2,j+2,k))
			exactly_one(varlist)

and_list(["x149","x171",""])

output_file.write("c Add this problem line: p cnf {} {}".format(index, n_clauses))	

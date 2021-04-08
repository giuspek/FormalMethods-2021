index = 1
n_clauses = 0
map_var = dict()
output_file = open("riddle.cnf","w")


def mapping(varlist):
	global index
	for var in varlist:
		map_var[var] = index
		index = index + 1


def dnf_list(l1,l2):
	global n_clauses
	for var1 in l1:
		for var2 in l2:
			output_file.write("{} {} 0\n".format(map_var[var1], map_var[var2]))
			n_clauses = n_clauses + 1

def negation(var):
	global n_clauses
	output_file.write("-{} 0\n".format(map_var[var]))
	n_clauses = n_clauses + 1

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


def exactly_one(varlist):
	#AtLeastOne
	or_list(varlist)
	#AtMostOne
	at_most_one(varlist)


# Mapping
variables = list()
for i in range(0,4):
	for j in ["c","g","s","m","A","L","S","I"]:
		variables.append("x{}{}".format(i,j))
mapping(variables)


# Clue 1
dnf_list(["x0A", "x2c"], ["x1A","x3c"])

#Clue 2
negation("x0g")
negation("x3S")
neg_or_list(["x1g","x2S"])

#Clue 3 and 4
dnf_list(["x0s", "x3L"], ["x0L","x3s"])
dnf_list(["x0A", "x2I"], ["x1A","x3I"])

for day in range(0,4):
	list_company = list()
	for company in ["A","L","S","I"]:
		list_company.append("x{}{}".format(day, company))
	exactly_one(list_company)
	list_jobs = list()
	for job in ["c","g","s","m"]:
		list_jobs.append("x{}{}".format(day, job))
	exactly_one(list_jobs)

for company in ["A","L","S","I"]:
	list_days = list()
	for day in range(0,4):
		list_days.append("x{}{}".format(day, company))
	exactly_one(list_days)

for job in ["c","g","s","m"]:
	list_days = list()
	for day in range(0,4):
		list_days.append("x{}{}".format(day, job))
	exactly_one(list_days)

output_file.write("c Add this problem line: p cnf {} {}".format(index - 1, n_clauses))


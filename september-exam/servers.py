output = open("servers.smt", "w")
RAM_servers = [2, 4, 4, 16, 8, 16, 16, 32, 8, 16, 8]
storage_servers = [100, 800, 1000, 8000, 3000, 6000, 4000, 2000, 1000, 10000, 1000]

RAM_vm = [1, 16, 4, 2, 4, 8, 2, 4, 16, 16, 12]
storage_vm = [100, 900, 710, 800, 7000, 4000, 800, 2500, 450, 3700, 1300]

# Create Pseudo-Boolean variables and counter of servers
for i in range(11):
	for j in range(11):
		output.write("(declare-const srv{}_vm{} Int)\n".format(i,j))

for i in range(11):
	output.write("(declare-const use_srv{} Int)\n".format(i))

output.write("(declare-const n_servers Int)")

output.write("\n")

output.write("(assert (and (>= n_servers 0) (<= n_servers 11)))\n")

for i in range(11):
	output.write("(assert (and (>= use_srv{} 0) (<= use_srv{} 1)))\n".format(i,i))

for i in range(11):
	for j in range(11):
		output.write("(assert (or (= srv{}_vm{} 0) (= srv{}_vm{} 1) ))\n".format(i,j, i, j))

output.write("\n")

# A virtual machine can be placed only on one server

for j in range(11):
	output.write("(assert (= (+ ")
	for i in range(11):
		output.write("srv{}_vm{} ".format(i,j))
	output.write(") 1))\n")

output.write("\n")

# Create linear relation that sum, for each server, the amount of RAM and storage used according to the virtual machines associated to it. 
# Notice how using Pseudo-Boolean operators drastically help us!

for i in range(11):
	output.write("(assert (<= (+ ")
	for j in range(11):
		output.write("(* srv{}_vm{} {}) ".format(i,j, RAM_vm[j]))
	output.write(") {}))\n".format(RAM_servers[i]))

	output.write("(assert (<= (+ ")
	for j in range(11):
		output.write("(* srv{}_vm{} {}) ".format(i,j, storage_vm[j]))
	output.write(") {}))\n".format(storage_servers[i]))

output.write("\n")

# If at least one virtual machine has been assigned to a server, then an additional pseudoboolean variable (use_srv) becomes one, meaning
# it has been used and must be counted.

for i in range(11):
	output.write("(assert (=> (or ")
	for j in range(11):
		output.write("(= srv{}_vm{} 1) ".format(i,j))
	output.write(") (= use_srv{} 1)))\n".format(i))

	output.write("(assert (=> (not (or ")
	for j in range(11):
		output.write("(= srv{}_vm{} 1) ".format(i,j))
	output.write(")) (= use_srv{} 0)))\n".format(i))

# Sum all the use_srv pseudoBoolean variable into n_server

output.write("(assert (= n_servers (+ ")
for i in range(11):
	output.write("use_srv{} ".format(i))
output.write(")))\n")

# Minimize it!

output.write("(minimize n_servers)\n")

# PS: see lab6 to read more about PseudoBoolean and their use, such as in the clique problem.
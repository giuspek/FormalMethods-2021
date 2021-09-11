output = open("tends.smt", "w")

trees = [(0,2),(0,4),(1,3),(3,1),(4,1)]
row_hints = [2,0,2,0,1]
column_hints = [1,2,0,2,0]

# Initialize variariables, one for each cell (TRUE being a cell with a tent)
for i in range(5):
	for j in range(5):
		output.write("(declare-const m{}{} Bool)\n".format(i,j))

# Cells with trees cannot contain a tent
for i in range(len(trees)):
	output.write("(assert (not m{}{}))\n".format(trees[i][0], trees[i][1]))


# I used a switch cycle to configure the three possible assignments of hints 0,1 and 2
for i in range(len(row_hints)):
	if row_hints[i] == 0:
		output.write("(assert (and ")
		for j in range(5):
			output.write("(not m{}{}) ".format(i,j))
		output.write("))\n")
	if row_hints[i] == 1:
		output.write("(assert (or ")
		listof = ["m{}{}".format(i,y%5) for y in range(0, 10)]
		for j in range(5):
			output.write("(and {} (not {}) (not {}) (not {}) (not {})) ".format(listof[j], listof[j+1], listof[j+2], listof[j+3], listof[j+4]))
		output.write("))\n")
	if row_hints[i] == 2:
		# Remember: each pair of cells should be considered, not only the adjacent ones!
		output.write("(assert (or ")
		for j1 in range(5):
			for j2 in range(j1):
				output.write("(and m{}{} m{}{}) ".format(i,j2, i, j1))
		output.write("))\n")

# The same applies for columns...
for j in range(len(column_hints)):
	if column_hints[j] == 0:
		output.write("(assert (and ")
		for i in range(5):
			output.write("(not m{}{}) ".format(i,j))
		output.write("))\n")
	if column_hints[j] == 1:
		output.write("(assert (or ")
		for i in range(5):
			output.write("m{}{} ".format(i,j))
		output.write("))\n")
	if column_hints[j] == 2:
		output.write("(assert (or ")
		for i1 in range(5):
			for i2 in range(i1):
				output.write("(and m{}{} m{}{}) ".format(i2,j, i1, j))
		output.write("))\n")

# For each tree, make sure that an adjacent cell is at least TRUE
for i in range(len(trees)):
	has_left, has_right, has_up, has_down = trees[i][0] > 0, trees[i][0] < 4, trees[i][1] > 0, trees[i][1] < 4
	output.write("(assert (or ")
	tree = trees[i]
	if has_left:
		output.write("m{}{} ".format(tree[0] - 1, tree[1]))
	if has_right:
		output.write("m{}{} ".format(tree[0] + 1, tree[1]))
	if has_up:
		output.write("m{}{} ".format(tree[0], tree[1] - 1))
	if has_down:
		output.write("m{}{} ".format(tree[0], tree[1] + 1))
	output.write("))\n")

# If a cell contains a tent, make sure the orthogonal adjacent cells are not TRUE
for i in range(5):
	for j in range(5):
		has_left, has_right, has_up, has_down = i > 0, i < 4, j > 0, j < 4
		output.write("(assert (=> m{}{} (and ".format(i,j))
		if has_left:
			output.write("(not m{}{}) ".format(i - 1, j))
		if has_right:
			output.write("(not m{}{}) ".format(i + 1, j))
		if has_up:
			output.write("(not m{}{}) ".format(i, j - 1))
		if has_down:
			output.write("(not m{}{}) ".format(i, j + 1))
		output.write(")))\n")



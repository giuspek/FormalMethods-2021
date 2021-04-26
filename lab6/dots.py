file = open("dots.smt","w")

for i in range(25):
	file.write("(declare-const x{} Int)\n".format(i))

fixed = [0,1,8,11,12,16,23,24]

for i in range(25):
	file.write("(assert (>= x{} 1))\n".format(i))
	file.write("(assert (<= x{} 4))\n".format(i))

for i in range(25):
	up, down, left, right = -1, -1, -1, -1
	if i >= 5:
		up = i - 5
	if i <= 19:
		down = i + 5
	if i % 5 != 0:
		left = i - 1
	if i % 5 != 4:
		right = i + 1

	up_s = "" if up == -1 else "(= x{} x{})".format(i, up)
	down_s = "" if down == -1 else "(= x{} x{})".format(i, down)
	left_s = "" if left == -1 else "(= x{} x{})".format(i, left)
	right_s = "" if right == -1 else "(= x{} x{})".format(i, right)
	
	directions = list()
	if up != -1:
		directions.append(up_s)
	if down != -1:
		directions.append(down_s)
	if left != -1:
		directions.append(left_s)
	if right != -1:
		directions.append(right_s)

	if i in fixed:
		file.write("(assert (or {} {} {} {}) )\n".format(up_s, down_s, left_s, right_s))
	else:
		file.write("(assert (or ")
		for j1 in range(len(directions)):
			for j2 in range(j1+1, len(directions)):
				file.write("(and {} {})".format(directions[j1], directions[j2]))
		file.write("))\n")
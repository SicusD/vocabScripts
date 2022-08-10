from os import listdir

res = []
OUTFILEPATH = "data.sql"

def main():
	files = listdir()

	for file in files:
		if file.endswith(".csv"):
			res.append(file)

	if len(res) > 1:
		print("too many files found. Please include just one CSV file in the same directory as this script.")
		exit(1)
	else:
		path = res[0]
		print("attempting to convert %s" % path)
		convertCSV(path, OUTFILEPATH)
		print("all done!")
		exit(0)

def convertCSV(inputPath, outputPath): # be sure to pass in a file object and a path which would be a string. 
	count = 1
	id = 0 # unique incremented int
	with open(inputPath, 'r') as inputFile:
		linecount = sum(1 for line in inputFile)
		print("read ", linecount, " lines")
		inputFile.close()

	with open(inputPath, 'r') as inputFile:
		line = inputFile.readline()

		with open(outputPath, 'a') as output:
			#output = open(outputPath, 'a')	

			while count<=linecount:
				print("reading line: %d" % count)
				#special case for first line
				if count == 1:
					columns = line.split(",")
				
					print("columns detected: ")
					print(columns)
				
					count+=1
				# special case for last line
				elif count == linecount:
					values = line.split(",")
					writeClosingBlock(id, values, output)
					count += 1			
				else:
					values = line.split(",")
					
					print("values detected: ")
					print(values)	

					writeToSQL(id, values, output)

					count+=1
					id += 1
				line = inputFile.readline()


def writeToSQL(n, vals, file):
		category = fixData(vals[0])
		vocabWord = fixData(vals[1])
		data = fixData(" ".join(vals[2:]).strip())
		print("writing data...")
		file.write(f"\n({n}, {category},{vocabWord},{data}),")
		
def writeClosingBlock(n, vals, file):
		category = fixData(vals[0])
		vocabWord = fixData(vals[1])
		data = fixData(" ".join(vals[2:]).strip())
		file.write(f"\n({n},{category},{vocabWord},{data});")
		file.write("\nCOMMIT;")

def fixData(d):
	if d[0] != '"' or d[-1] != '"':
		d = '"' + d + '"'
	return d


if __name__ == "__main__":
	main()

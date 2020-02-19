#! /usr/bin/python3
#Open the file contains the data
InFileName1 = 
InFile1 = open(InFileName1, 'r')

InFileName2 = 
InFile2 = open(InFileName2, 'r')

LineNumber1 = 0

# Loop through each line in the file
for Line1 in InFile1:
	if LineNumber1 > 0:
		#Remove the line ending character
		Line1=Line1.strip('\n')
		#parsing the strings of each line
		LineList1=Line1.split(',')
for Line2 in InFile2:

with open("./data/world_checklist_name_dec_19_nick_12cols.csv", 'r') as wcsp, open("./results/Spermatophyta_clean02172020.csv", 'r') as ncbi:
	ww = wcsp.readlines()
	nn = ncbi.readlines()

with open('match.csv', 'w') as outFile:
    for line in nn:
        if line not in fileone:
            outFile.write(line)
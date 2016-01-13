'''
Positive input as number in base 10 and a base to convert to
Works correctly up to hexadecimal conversion
'''

def converBase10(number, base):
	'''
	Remainder variable for each recursive call
	A list to store the converted number
	While the number is greater than zero
		Divide the number input by base and get the remainder
		Insert remainder into a list
		Call the function until number is no longer greater than zero
	Convert 10-15 to A-F for hexadecimal
	return the list of digits which make the converted number
	'''
	remainder = 0
	newnumber = [] 
	while number > 0:
		remainder = number % base
		number = number / base
		newnumber.insert(0,remainder)
		converBase10(number, base)
	for n,i in enumerate(newnumber):
		if i == 10:
			newnumber[n] = 'A'
		if i == 11:
			newnumber[n] = 'B'
		if i == 12:
			newnumber[n] = 'C'
		if i == 13:
			newnumber[n] = 'D'
		if i == 14:
			newnumber[n] = 'E'
		if i == 15:
			newnumber[n] = 'F'
	return newnumber

number = int(raw_input('Enter a number in base 10: '))
base = int(raw_input('Enter the new base(upto 16 i.e. hexadecimal): '))

print 'The number converted from decimal to base', base, 'is:', 

for i in converBase10(number, base):  #Prints each list entry to make the number
	print i,
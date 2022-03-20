# Bitwise Operators in C 

For the sake of examples, let A = 60 and B = 13.

**&** - Binary *AND* Operator copies a bit to the result if it exists in both operands
	* (A & B) = 12, i.e (0011 1100) & (0000 1101) = (0000 1100)

**|** - Binary *OR* Operator copies a bit if it exists in either operand.

	* (A | B) = 61, i.e. (0011 1100) | (0000 1101) = (0011 1101)

**^** - Binary *XOR* Operator copies the bit if it is set in one operand but not both.

	* (A ^ B) = 49, i.e.  (0011 1100) ^ (0000 1101) = (0011 0001)

**~** - Binary *One's Complement Operator* is unary and has the effect of 'flipping' bits.

	* (~A) = ~(60) = 195, i.e.  ~(0011 1100) = (1100 0011)

**<<** - Binary *Left Shift Operator* modifies the value of the left operand by moving its bits leftward by the number specified by the right operand.

	* A << 2 = 240, i.e. (0011 1100) << 2 = (1111 0000)

**>>** - Binary *Right Shift Operator* modifies the value of the left operand by moving its bits rightward by the number specified by the right operand.

	* A >> 2 = 15, i.e. (0011 1100) >> 2 = (0000 1111) 

## Vocabulary 
**left operand** - The variable to the left of the operator.
**right operand** - The variable to the right of the operator.

## Tags
#software

# I2C Data Line: SDA 

SDA one of the two open-drain, bidirectional lines of the I2C bus. The SDA line is where the communication happens between the master(s) and slave(s). The Master reads or writes a sequence of 1s and 0s by pulling the line HIGH or LOW respectively.

This sequence of 1s and 0s establishes the 3 components of communication:

1. Direction - Is the Master reading data from the slave (R/W bit = 1) or writing to the slave (R/W bit = 0)?
2. Information - What bytes of is are the master reading or writing?
3. Location - Where are we reading from or writing to? Context gives the data its meaning.
	* Slave Address
	* Slave's Register Address

## Tags

Input data will require the following format
	<xDimension> <yDimension> <alpha> <Number_Timesteps>
		x_Pos y_Pos temp hold
		x_Pos y_Pos temp hold
			...

Hold values can be 0 or 1, positions with hold set to 0 will perform calculations as normal
	and positions with hold set to 1 will not perform update calculations
'*' can be used in x_Pos, y_Pos, or both to indicate wildcard temperature values, these values will set each wildcard cell
	to the indicated temperature and hold value.



1: Place input data file in root folder.
2: Run Makefile located in root folder. 
	Makefile will compile required files for both C and Fortran projects and place executbales in C and F directories
3: To run each simulation from C and F directories (all arguements are required):
	C: ../project_C <inputdata file> <frequency> <output file>
	F: ../project_F <inputdata file> <frequency> <output file>
4: After running simulations, output files will have been created in the C and F directories corresponding to each simulation
	at the declared frequency.
5: To remove executable and output files run make clean command from root directory



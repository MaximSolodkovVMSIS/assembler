		JUMPS
.model small
.stack 100h
	
.data  
            
offsetX	dw	0
width	EQU	120
level	db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 0, 0, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 
		db	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 
		db	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 
		db	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 
		db	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1

chars	db	' ',		' ',		' ',		'o',		179,		48
colors	db  00110000b,	00100000b,	01100000b,	00111110b,	00111111b,	00111111b
;			0 sky,		1 grass,	2 wall, 	3 coin,		4 flagpole,	5 flag  

entityX		dw	20,	65
entityY	 	db	19,	19
entityDir	db	0,	0
entityCount	db	2                              
                              
curPage		db	0
                               
row			db	0
column		db	0

playerX		dw	10
playerY		db	18    
               
coinsCollected		db	0
maxCoins			db	5
               
fallState			db 0                           
                     
coinsStr			db "Coins:$"                               
levelCompletedStr	db "Level completed!$"                               
levelFailedStr		db "Level failed$"




.code
start:    
	mov		ah, 0h 
	mov		al, 03h 
	int		10h    ;установка видеорежима 
		
	mov		ax, @data
	mov		ds, ax
	push	ds
	pop		es            
                
lp:
	call	processKeys                       
	call	render		                  
	call	processWorld   
		
	mov	ah, 86h  
	mov	cx, 0000h
	mov	dx, 208Dh 
	int	15h 
	;работа с системным таймером 
		          
	jmp		lp; бесконечный цикл              
	
	mov	ah,08h 
	int 21h 
	mov	ax,0003h 
	int 10h           
	mov	ah, 4Ch 
	int	21h
	;завершение программы 
		
render proc
	mov	ah, 0
	mov	al, curPage
	inc	ax        
	mov	bh, 4
	div	bh
	mov	curPage, ah
	;переключение видеостраниц 
		
	mov	ah, 01h
	mov	ch, 00010000b   
	int	10h
	;установка видеорежима            
	             
	mov	cx, 25
	mov	row, 0
		
rowLoop:       
	push	cx
	mov		cx, 80
	mov		column, 0
								           
colLoop:       
	mov		al, ' ';установка в каждой ячейке пробела для очистки 
	mov		dh, row
	mov		dl, column   
	call	drawChar
					           
	inc		column					           
	loop	colLoop
		                
	pop		cx      
	inc		row
	loop	rowLoop	
	;циклы которые проходятся по 25 строкам и 80 столбцам экрана. 			                    		                    
		                    
	mov		al, 1
	mov		bl, 00000000b
	mov		dx, playerX
	mov		bh, playerY
	call	drawOnMap
	;отображение персонажа на карте 
		
	mov		al, 186
	inc		bh
	call	drawOnMap 
	;добавляют элемент на карту 				
		                    
	mov		ch, 0		                    
	mov		cl, entityCount		                   
	mov		al, 15
	mov		si, 0		 
	;отражение игровых существ 
;отображение сцены, очистка, отображение персонажей и обьектов 
drawEntity:            
	mov		bx, si
	mov		dx, entityX[si + bx]
	mov		bh, entityY[si] 
	;координаты х и у, массивы содержащие координаты обьектов    
	mov		bl, 00000100b 
	call	drawOnMap						               
		          
	inc		si		             
	loop	drawEntity					
		                   
	lea		si, coinsStr
	mov		dh, 0
	mov		dl, 0
	mov		bl, 00001110b
	call	drawString			          

	inc		dl		                       
	mov		al, 'o'
	mov		bl, 00001110b
	mov		ch, 0
	mov		cl, coinsCollected         
	jcxz	endDrawCollectedCoins
;отображает обьекты, текстовую строку с кол-вом монет 
		
drawCollectedCoins:     
	call	drawChar
	inc		dl
	loop	drawCollectedCoins
endDrawCollectedCoins:		 	                    
	mov		cl, maxCoins
	sub		cl, coinsCollected
	mov		bl, 00000000b
	jcxz	endDrawRemainingCoins		                    
drawRemainingCoins:
	call	drawChar
	inc		dl      				             				             
	loop	drawRemainingCoins
endDrawRemainingCoins: 					                       
	mov		al, curPage
	mov		ah, 5h
	int		10h
    ret
render  endp
;вызываем разные процедуры для отображения собранных монет на экране
           
drawOnMap proc		
	push	dx
	
	sub	dx, offsetX
	cmp		dx, 0
	jl endDrawOnMap
	cmp	dx, 79
	jg endDrawOnMap
	    
	mov	dh, bh
	call drawChar
endDrawOnMap:	        
	pop	dx	             
	ret	             
drawOnMap endp   
;проверка положения символа относительно границ экрана   

drawChar	proc	
	push	dx
	push	cx  
	push	bx
	push	ax
	push	bx
	push	ax
		
	mov		bh, curPage
	mov		ah, 02h
	int		10h   

	mov		bh, dh
	mov		dh, 0
	add		dx, offsetX						     				            		             
	call	getBlock		
		
	pop		ax
	pop		cx
	and		cl, 00001111b
	mov		bh, 0		
		
	cmp		chars[bx], ' '; проверка на символ фона(пробел)                 
	je		noBackgroundChar
	mov		al, chars[bx]				          
	mov		cl, 0		                 
						                 
noBackgroundChar:
					                
	mov		bl, colors[bx] 
	or		bl, cl; обьединение цветового атрибута символа и бита цвета 
	mov		bh, curPage
	mov		ah, 09h		
	mov		cx, 1    
	int		10h

	pop		ax					
	pop		bx							 			    	
	pop		cx
	pop		dx			            	            
	ret	           
drawChar  endp
;отображение символа с цчетом цвета на экране, установка курсора на экране 

drawString	proc		
	push	ax		       
		                           
drawStringLoop:
	cmp		byte ptr [si], '$'
	je		endDrawString
	
	mov		al, [si]
	call	drawChar
	inc		dl
	inc		si

	jmp		drawStringLoop
				
endDrawString:
	pop		ax             
	ret	              
drawString endp 
;процедура позволяет отобразить строку символов на экране, последовательно вызывая DrawChar //курсор двигается вправо   

setBlock proc; установка типа блока	
	push	bx
	push	ax
	        
	mov		al, bl	        
	call	getBlockOffset                        
	mov		level[bx], al
	        
	pop		ax	        
	pop		bx	           	
	ret	            
setBlock endp
               
getBlock proc; получение типа блока 	
	push	ax
	push	bx
	
  	call	getBlockOffset
	mov		bl, level[bx]   

	pop		ax
	mov		bh, ah
	pop		ax			                       	
	ret
getBlock endp      

getBlockOffset	 proc; вычисление смещения блока 
	push	ax        
	push	dx

  	mov		ah, 0				 	     
	mov		al, bh
	mov		bx, width
	mul		bx   
	pop		dx 
	mov		bx, dx
	add		bx, ax  	
		    		
	pop		ax			                       	              
	ret	            
getBlockOffset endp;смещение блока в игровом поле, нужно для доступа к определенным блокам
	                                                       
                  
isBlockEmpty proc		 
	call	getBlock
	cmp		bl, 0
	je 		blockIsEmpty
	                     
	cmp		bl, 3
	je		blockIsEmpty

	cmp		bl, 4
	je		blockIsEmpty  
		
	cmp		bl, 5
	je		blockIsEmpty
	; если блок равен 0, 3, 4, 5 блок является пустым(блок не взаимодействует с персонажем)      
	ret		                
blockIsEmpty:						
	ret	
isBlockEmpty endp               
;получение значения для блоков и узнаем какие блокки явл пустыми или имеют особое значение    

;обработка нажатия клавиш 
processKeys 	 proc 
	mov		ah, 01h 	;	
	int		16h			;получение нажатой клавиши
	jnz		processKey;если клавиша была нажата 
	ret         				      
	 
processKey:	   
	mov		ah, 00h 
	int		16h
		           
	cmp		al, 'd'
	je		goRight
		
	cmp		al, 'a'
	je		goLeft		
		
	cmp		al, ' '
	je		jump           
		           
	cmp		al, 27 ; авершение игры 
	je		quit			            
	ret		            
           
goLeft:;проверка для клавиши влево          
	mov		ax, offsetX
	cmp		playerX, ax
	jle		pkRet		    
	                
	mov		bh, playerY
	mov		dx, playerX
	dec		dx
	call	isBlockEmpty
	jne		pkRet
		
	inc		bh
	call	isBlockEmpty
	jne		pkRet		                
		                  
	mov		ax, offsetX
	add		ax, 40		                  
	cmp		playerX, ax
	jg		movePlayerLeft
		
	cmp		offsetX, 0
	jle		movePlayerLeft
		
	dec		offsetX  
	dec		playerX
	ret		               
		               
movePlayerLeft:		                
	dec		playerX
	ret           
           
goRight:;проверка для клавиши вправо        
	mov		ax, offsetX
	add		ax, 79
	cmp		playerX, ax
	jge		pkRet
                        
	mov		bh, playerY
	mov		dx, playerX
	inc		dx
	call	isBlockEmpty
	jne		pkRet
		
	inc		bh
	call	isBlockEmpty
	jne		pkRet
                              
	mov		ax, offsetX
	add		ax, 40                              
	cmp		playerX, ax
	jl		movePlayerRight   
		
	mov		ax, offsetX
	add		ax, 80
	cmp		ax, width
	jge		movePlayerRight
		
	inc		offsetX       
	inc		playerX
	ret                     
                      
movePlayerRight:                        
	inc		playerX
	ret   
		
jump:;проверка для клавиши прыжок      
	mov		bh, playerY
	add		bh, 2
	mov		dx, playerX
	call	isBlockEmpty
	je		pkRet
  
  	mov		cx, 4
  	mov		bh, playerY
  		
jumpLoop:	
	dec		bh
	call	isBlockEmpty
	jne		pkRet   
	dec		playerY
	loop	jumpLoop
	
	ret		
		
quit:	
	mov	ah,08h 
	int 21h 
	mov	ax,0003h 
	int 	10h 	            
	mov		ah, 4Ch
	int		21h
		
pkRet:   
	ret	               	             
processKeys endp


collectCoin	proc;процедура для сбора монет в игре		
	push	bx
	
	call	getBlockOffset
	cmp		level[bx], 3
	jne		notCoin
		
	mov		level[bx], 0;обнуления значения
	inc		coinsCollected
				
notCoin:
	pop		bx		
	ret	
collectCoin  endp      ;была ли собрана монета и счетчик монет        
             

checkLevelCompleted		 proc; процедура для проверки на завершения уровня 
	push	bx

	call	getBlock ;текущее положение 
	cmp		bl, 4
	je		levelCompleted 
	cmp		bl, 5
	je		levelCompleted                         
	jmp		levelNotCompleted
                         
levelCompleted:                         
	lea		si, levelCompletedStr[0] ;успешное завершение уровня
	mov		dh, 5
	mov		dl, 30
	mov		bl, 00000000b
	call	drawString                   
		
	mov	ah,08h 
	int 21h 
	mov	ax,0003h 
	int 	10h               
	mov		ah, 4Ch
	int		21h			
			  
levelNotCompleted:			      
	pop		bx
	ret			      
checkLevelCompleted	endp ;роверка завершен ли уровень упешно и выводит сообщения         
             	
				
checkLevelFailed	proc ;тоже самое только для проверки на проигранный уровень 
	push	bx
	push	cx  
	push	si
	                            
	cmp		bh, 24
	jge		levelFailed	                            
	                            
	mov		ch, 0
	mov		cl, entityCount
	jcxz	levelNotFailed
	mov		si, 0 		                
	                
checkEntityCollision:
	push	bx
	mov		bx, si   
	cmp		dx, entityX[bx + si]        
	pop		bx
	jne		endCheckEntityCollision		       
				       				       
	cmp		bh, entityY[si]
	je		levelFailed					  
				         
endCheckEntityCollision:
	inc		si
	loop	checkEntityCollision  
	jmp		levelNotFailed

levelFailed:
	lea		si, levelFailedStr[0]
	mov		dh, 5
	mov		dl, 30
	mov		bl, 00000000b
	call	drawString                   
		
	mov	ah,08h 
	int 21h 
	mov	ax,0003h 
	int 	10h               
	mov		ah, 4Ch
	int		21h					     
		
	pop		si
	pop		cx
	pop		bx    
	ret
			                    	
levelNotFailed:
	pop		si
	pop		cx
	pop		bx 
	ret	                    	
checkLevelFailed         endp    
                        
moveEntity		proc	;процедура для обновления позиции игрока, позиции направления и движение обьектов 	
	push	bx
	push	dx
	
	mov		bx, si
	mov		dx, entityX[bx + si]
	mov		bh, entityY[si]				       
	inc		bh
    call	isBlockEmpty
    jne		endEntityFall
    inc		entityY[si]
   	
endEntityFall:
	cmp		entityDir[si], 0
	je		tryMoveEntityRight
		
tryMoveEntityLeft:
	dec		bh
	dec		dx
	cmp		dx, 0
	jle		swapDirection
	call	isBlockEmpty
	jne		swapDirection
	
	mov		bx, si
	dec		entityX[bx + si]
	jmp		endMoveEntity

tryMoveEntityRight:  
	dec		bh
	inc		dx 
	cmp		dx, width
	jge		swapDirection
	call	isBlockEmpty
	jne		swapDirection
	
	mov		bx, si
	inc		entityX[bx + si]		
	jmp		endMoveEntity
		
swapDirection:
	xor		entityDir[si], 1

endMoveEntity:						
	pop		dx
	pop		bx
	ret	              
moveEntity  endp ; проверки и попытки на передвижения, сравнение позиций и проверки позиций на пустой блок или нет           
                        
processWorld proc ;основная процедура для игрового поля 		         
	mov		ch, 0			                       
	mov		cl, entityCount
	mov		si, 0
moveEntityLoop:
	call	moveEntity
	inc		si				
	loop	moveEntityLoop

	mov		dx, playerX
	mov		bh, playerY
	call	collectCoin
	call	checkLevelCompleted 
	call	checkLevelFailed
	inc		bh
	call	collectCoin
	call	checkLevelCompleted
	call	checkLevelFailed

	mov		dx, playerX			                        
	mov		bh, playerY			                        
	add		bh, 2  
	call	isBlockEmpty		           
	jne		onGround
		
	cmp		fallState, 2
	jne		nextFallState                                              
	inc		playerY	               
	mov		fallState, 0
	ret	          
		
nextFallState:
	inc		fallState
	ret                      		
		          
onGround:	                
	                
	ret	                	                	
processWorld endp ;управление движения обьектов, сбора монет, завершение уровня и взаимодейсвие с игровым полем
          
end	start
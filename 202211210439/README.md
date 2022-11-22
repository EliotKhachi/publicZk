# Normalization

**Normalization** is the process of applying well-understood design rules to *schema*.  

1. Tables shouldn't track multiple "things"  

2. Tables shouldn't track more than one concept.  

3. Ensure each concept is pure. Look for signs that a table is confusing 
or contains data that doesn't belong there.

[GRE Key Terms Group 1: Day 1](https://github.com/EliotKhachi/privateZk/tree/main/202201190203)

## Example

| year 	| competition   |	host_city 	    |first_place_dance_move|first_place_dancer|second_place_dance_move| second_place_dancer| third_place_dance_move|third_place_dancer|
|-------|---------------|-----------------|----------------|----------------------|-----------------|-------------------------|---------------------|----------------------|
| 1994 	| Dance Olympics|  	Berlin 				| Butterfly Swing 		 	 | George Marshall 					| Cyclotron 			|	Monty Mccann 					|	Heel Spin 						  | 	Blanche Maldonado|
| 1994 	| Freestyle 		| 	Shanghai 	| Gemini Blast 		 	 | Dorian Tapia 				| Cyclotron 			|	Monty Mccann 					|	Swing Dancing 						| 	Darius Mcdonald|
| 1994 	| Dance Battle 		| 	Tokyo 			| Kickstand 			 	 | Delmer Berry 			| The Moonwalk 	|	Marc French 						|	Quick Shuffle 								| 	George Marshall|
| 1995 	| Dance Olympics|  	Mexico City 			| Heel Spin 			 	 | Blanche Maldonado 				| The Robot 				|	Ella Bell 				|	Body Roll 					| 	Vicki Bauer|
| 1995 	| Freestyle 		| 	NY City 				| 360 flip 			 	 | Georgina Calhoun 			| The Floss 					|	Massimo Surgenor 				|	Nales 							| 	Darius Mcdonald|
| 1995 	| Dance Battle 		| 	Istanbul 				| The Hustle 		 	 | Pete Allison 				| Butterfly Swing 				|	George Marshall 	Yule 				|	Fayre 							| 	Josue Frederick|
| 1996 	| Dance Olympics|  	Minsk 				| Cyclotron 	 	 | Monty Mccann 				| The Dougie 				|	Shon Tyler 					|	Voguing | 	Kelly Berg|
| 1996 	| Freestyle 		| 	NY City 				| Fly High 	 	 | Jamel Duncan 				| Two-Step 					|	Massimo Surgenor 				|	WingNutt 						| 	Norman Houston|
| 1996 	| Dance Battle 		| 	Tokyo 			| Quick Shuffle 					 | George Marshall 					| Swing Dancing 				| Darius Mcdonald 							|	Butterfly Swing 						|   George Marshall|

Can you point out the issues with the above table?  

A good "tell" for bad table schema is a column that contains a string more than once.  
Try to identify them and why they could lead to confusion or a badly managed database. How would you resolve it?

## Tags
#db

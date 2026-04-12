# Normalization

**Normalization** is the process of applying well-understood design rules to *schema*.  

1. Tables shouldn't track multiple "things"  

2. Tables shouldn't track more than one concept.  

3. Ensure each concept is pure. Look for signs that a table is confusing 
or contains data that doesn't belong there.

## Example
`competition`
| year 	| competition   |	host_city 	    |first_place_dance_move|first_place_dancer|second_place_dance_move| second_place_dancer| third_place_dance_move|third_place_dancer|
|-------|---------------|-----------------|----------------|----------------------|-----------------|-------------------------|---------------------|----------------------|
| 1994 	| Dance Olympics|  	Berlin 				| Butterfly Swing 		 	 | George Marshall 					| Popping and Locking 			|	Monty Mccann 					|	Heel Spin 						  | 	Blanche Maldonado|
| 1994 	| Freestyle 		| 	Shanghai 	| Gemini Blast 		 	 | Dorian Tapia 				| Popping and Locking 			|	Monty Mccann 					|	Swing Dancing 						| 	Darius Mcdonald|
| 1994 	| Dance Battle 		| 	Tokyo 			| Kickstand 			 	 | Delmer Berry 			| The Moonwalk 	|	Marc French 						|	Quick Shuffle 								| 	George Marshall|
| 1995 	| Dance Olympics|  	Mexico City 			| Heel Spin 			 	 | Blanche Maldonado 				| The Robot 				|	Ella Bell 				|	Body Roll 					| 	Vicki Bauer|
| 1995 	| Freestyle 		| 	NY City 				| 360 flip 			 	 | Georgina Calhoun 			| The Floss 					|	Massimo Surgenor 				|	The Monastery 							| 	Darius Mcdonald|
| 1995 	| Dance Battle 		| 	Istanbul 				| The Hustle 		 	 | Pete Allison 				| Butterfly Swing 				|	George Marshall			|	Whip/Nae Nae 							| 	Josue Frederick|
| 1996 	| Dance Olympics|  	Minsk 				| Popping and Locking 	 	 | Monty Mccann 				| The Dougie 				|	Shon Tyler 					|	Voguing | 	Kelly Berg|
| 1996 	| Freestyle 		| 	NY City 				| Fly High 	 	 | Jamel Duncan 				| Two-Step 					|	Massimo Surgenor 				|	WingNutt 						| 	Norman Houston|
| 1996 	| Dance Battle 		| 	Tokyo 			| Quick Shuffle 					 | George Marshall 					| Swing Dancing 				| Darius Mcdonald 							|	Butterfly Swing 						|   George Marshall|

There are some design issues with the `competition` table above:  
1. **Insert a primary key** - Without a primary key, we are forced to use the 
natural key (`year`,`competition`), which could lead to problems if a competition is 
hosted twice in a single year.   

2. **Extract one-to-many relationships** - Remove one-to-many relationships in
 the table and create a new table to represent them.  
* A `competition` has many ranks - create a `competition_rank` table.  
* A record in `competition_rank` has a dancer, dance move, rank, and competition id.  

3. **Extract repeating string values** - If there are values that repeat in a column 
that can be represented as their own concept, put them in its own table.  
* Create a `host_city` table with an `id` and `name`.   
* Create a `competition` table with an `id` and `name`.   
* Create a `dancer` and `dance_move` table to remove repeating string values in 
`competition_rank`

4. **Consolidate** - Add a new master table to tie in the new tables. 
Define relationships, create foreign keys where needed.  


## Tags
#db

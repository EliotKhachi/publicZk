# Normalization

**Normalization** is the process of applying well-understood design rules to *schema*.  

1. Tables shouldn't track multiple "things"  

2. Tables shouldn't track more than one concept.  

3. Ensure each concept is pure. Look for signs that a table is confusing 
or contains data that doesn't belong there.

[GRE Key Terms Group 1: Day 1](https://github.com/EliotKhachi/privateZk/tree/main/202201190203)

## Example

| year 	| competition   |	host_city 	    |first_place_bot |first_place_competitor|second_place_bot | second_place_competitor | third_place_bot 	  |third_place_competitor|
|-------|---------------|-----------------|----------------|----------------------|-----------------|-------------------------|---------------------|----------------------|
| 2018 	| Robot Olympics|  	Berlin 				| Nek-Nek 		 	 | Meggi Pien 					| Cyclotron 			|	Ettore Sirett 					|	Harley 						  | 	Chiquia Tetla|
| 2018 	| Robot Cup 		| 	Johannesburg 	| Mitchell 		 	 | Pen Cicculini 				| Cyclotron 			|	Ettore Sirett 					|	D3tr0yer 						| 	Isis Lafoy|
| 2018 	| Battle Jam 		| 	Chennai 			| Fester 			 	 | Hashim Littrik 			| The Undertaker 	|	Donny Jaques 						|	Rip 								| 	Meggi Pien|
| 2019 	| Robot Olympics|  	Brisbane 			| Harley 			 	 | Chiquia Tetla 				| Haymaker 				|	Carolann Abotson 				|	¯\_(ツ)_/¯ 					| 	Ernesta Salvatore|
| 2019 	| Robot Cup 		| 	Seoul 				| #BAUT 			 	 | Ailee Roderick 			| Dianne 					|	Massimo Surgenor 				|	Nales 							| 	Isis Lafoy|
| 2019 	| Battle Jam 		| 	La Paz 				| Chester 		 	 | Kermie Solan 				| Nek-Nek 				|	Meggi Pien 	Yule 				|	Fayre 							| 	Fidelus|
| 2020 	| Robot Olympics|  	Minsk 				| Cyclotron 	 	 | Ettore Sirett 				| 45-A-93 				|	Callie Linham 					|	Long Island Ice Tea | 	Koo Harland|
| 2020 	| Robot Cup 		| 	Seoul 				| DREAM_LORD 	 	 | Imogen Coyte 				| Gladys 					|	Massimo Surgenor 				|	WingNutt 						| 	Avivah Rickard|
| 2020 	| Battle Jam 		| 	Chennai 			| Rip 					 | Meggi Pien 					| D3tr0yer 				| Isis Lafoy 							|	Nek-Nek 						|   Meggi Pien|

Can you point out the issues with the above table?  

A good "tell" for bad table schema is a column that contains a string more than once.  
Try to identify them and why they could lead to confusion or a badly managed database. How would you resolve it?

## Tags
#db

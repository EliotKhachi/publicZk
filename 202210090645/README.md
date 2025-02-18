# Models in a Software Application 

All software application layers point to **Models**. Models are not layers themselves. They represent domain *data*, but not *behavior*, and they don't enforce any rules for any of the layers. Rather, models represent a sort of shared vocabulary between layers to promote information flow. The user interface layer can't do its job without knowing a bit about the domain. The same goes for the data access layer.

## Examples
* A `Student` class is a Model. It structures data pertaining to students such as `age`, `firstName`, `lastName`, `GPA`, `major`, etc. Any CRUD operation involving a student the use of this model at every application layer.  [202209180027](../202209180027) - CRUD  

* A `Tweet` class is a Model. A tweet consists of the following data: `id`, `owner`, `message`, and `tags`.  
## Tags

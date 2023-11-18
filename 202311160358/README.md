# Systems Modeling API and Services 1.0 Beta Specification

## Section 7 - Platform Independent Model (PIM)

7.1.1 **Record** - A Record represents any data that is consumed (input) or produced (output) by the Systems Modeling API and Services. A Record is an abstract concept from which other concrete concepts inherit. A Record has the following attributes:  
* *id* is the UUID assigned to the record
* *resourceIdentifier* is an IRI for the record
* *alias* is a collection of other identifiers for this record, especially if the record was created or represented in other software applications and systems
* *humanIdentifier* is a human-friendly unique identifier for this record
* *description* is a statement that provides details about the record.

There are 4 subclasses of records that each have their own REST :  
1. Project  
2. Project Data Versioning
3. ExternalData and ExternalRelationship - represents the relationship between a KerML Element in a an API provider tool to ExternalData in another tool or repository.
4. Query

## Section 8 - Platform Specific Models (PSMs)
Each record has their own REST/HTTP PSM endpoint for POST, GET, PUT, and DELETE operations.   
1. ProjectService  
2. ElementNavigationService  
3. ProjectdataVersioningService
4. QueryService
5. ExternalRelationshipService
6. ProjectUsageService

See next

## References
[Systems Modeling API and Services 1.0 Beta Specification](https://www.omg.org/spec/SystemsModelingAPI/1.0/Beta1/PDF)  

## Tags

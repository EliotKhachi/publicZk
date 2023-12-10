# 4 Pillars of SysML

The 4 pillars of SysML refers to the 4 essential diagrams of SysML: Requirement, Activity, Block, and Parametric Diagrams.  


1. Behavior


```mermaid
flowchart TB
  subgraph package "SysML Diagrams"
      classDiagram("Class Diagram") --> objectDiagram("Object Diagram")
          activityDiagram("Activity Diagram") --> useCaseDiagram("Use Case Diagram")
              stateDiagram("State Diagram") --> sequenceDiagram("Sequence Diagram")
                  flowchartDiagram("Flowchart Diagram") --> packageDiagram("Package Diagram")
                    end

                      subgraph package "Structural Diagrams"
                          classDiagram --> blockDiagram("Block Definition Diagram")
                              classDiagram --> internalBlockDiagram("Internal Block Diagram")
                                  classDiagram --> parametricDiagram("Parametric Diagram")
                                    end

                                      subgraph package "Behavioral Diagrams"
                                          activityDiagram --> useCaseDiagram
                                              activityDiagram --> stateDiagram
                                                  activityDiagram --> sequenceDiagram
                                                      activityDiagram --> flowchartDiagram
                                                        end

                                                          subgraph package "Other Diagrams"
                                                              activityDiagram --> requirementDiagram("Requirement Diagram")
                                                                  activityDiagram --> allocationDiagram("Allocation Diagram")
                                                                      activityDiagram --> profileDiagram("Profile Diagram")
                                                                        end

```

## References
[SysML Forum - SysML Overview](https://sysmlforum.com/sysml-overview/)  

## Tags
#systems

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
                      blockDiagram("Block Definition Diagram") --> internalBlockDiagram("Internal Block Diagram")
                          parametricDiagram("Parametric Diagram") --> requirementDiagram("Requirement Diagram")
                            end

                              subgraph package "Behavioral Diagrams"
                                  activityDiagram --> useCaseDiagram
                                      activityDiagram --> stateDiagram
                                          activityDiagram --> sequenceDiagram
                                              activityDiagram --> flowchartDiagram
                                                end

                                                  subgraph package "Structural Diagrams"
                                                      blockDiagram --> internalBlockDiagram
                                                          blockDiagram --> parametricDiagram
                                                            end

                                                              subgraph package "Other Diagrams"
                                                                  requirementDiagram --> allocationDiagram("Allocation Diagram")
                                                                      requirementDiagram --> profileDiagram("Profile Diagram")
                                                                        end

```

## References
[SysML Forum - SysML Overview](https://sysmlforum.com/sysml-overview/)  

## Tags
#systems

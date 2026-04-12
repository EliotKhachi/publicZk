# Side Effects and the UseEffect Hook in React

A *side effect* in React is any action that works outside the standard React rendering process. `useEffect` is a function used to isolate side effects from the rest of React's application code. 


**Refresher**: Recall that React renders components dynamically through the Virtual DOM. - [React Library for JavaScript](../202212310014)

**Examples of Side Effects:**
1. Fetching data via HTTP - React needs to wait to update the Virtual DOM until it gets the replacement data. We tell React to wait with `useEffect`.   
2. Manually manipulating the DOM - React only manipulates the DOM through the Virtual DOM. It is not aware of any direct manipulation of the DOM unless we acknowledge those actions with `useEffect`.  


## Tags
#react

# React Hook useState()

The *useState* hook in React is used to handle reactive data. You want any changes to the *state*, or application data, to be reflected in the UI.  

Examples of reactive data:
* the position of a draggable node in a flowchart application  
* text in a search bar  
* the # of times a button was pressed (see below)  

```jsx
    function Btn() {
        const [count, setCount] = useState(0);

        return (
            <button onClick={() => setCount(count+1)}>
                {count}
            </button
        );
    }
```

## Tags

# React Hook useEffect()

The `useEffect` hook in react is used to handle component side effects, i.e. component *mount*, component *update*, and component *unmount*. With useEffect, you can define a function to be ran each time the component undergoes any lifecycle side effects.  

```jsx
function Btn() {
    const [count, setCount] = useState(0);
    const [loaded ,setLoaded] = useState(false);

    useEffect(
        () => {
            fetch('foo').then(() => setLoaded(true) )
        },
        [count]
    )
    return (
        <button onClick={() => setCount(count+1)}>
            {count}
        </button
    );
}

```
In the example above, I've defined a `useEffect` hook to update the `loaded` state of the component whenever `count` changes.  

The useEffect hook takes into two arguments: 1) a function and 2) an array.  
The function defines the code to get executed, and the array is the list of dependencies that tell React when to call the function. In this case, when `count` changes, the function is called.  
You can also set an empty array for the dependencies, in which case, the function is only called when the component mounts.  
You can also forgo with passing in a second argument, in which case, the function is called for every component side effect. **Note in this case that would result in an infinite loop since my useEffect function updates the component state.**  

## Tags

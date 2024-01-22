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
In the example above, I've defined a useEffect hook to update the `loaded` state of the component. I've also passed `count` as a dependency (the second argument) to the useEffect function; meaning the function is only called if `count` updates. If I set the dependencies as an empty array, the function would only execute upon the component mounting. If I didn't declare even an empty array of dependencies, the function would get called for any component side effect. **This would result in an infinite loop since I am updating the state of the component with the useEffect function.**  

## Tags

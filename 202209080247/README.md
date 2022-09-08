# React - Function Components

A *function component* in React is a function that takes `props` as inputs and only has a `render` method. They're used when you just need to render something or have some sort of functionality rather than a component that maintains its own state.


```jsx
function Square(props) {
  return (
    <button className="square" onClick={props.onClick}>
      {props.value}
    </button>
  );
}
```

## References
[Reactjs.org - Tutorial](https://reactjs.org/tutorial/tutorial.html#overview)

## Tags
#react

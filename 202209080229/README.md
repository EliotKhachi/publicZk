# React - Props

Short for *property*. React *components* have the attribute `this.props`, which contains all the props of that component. [202209080227](../202209080227) - React - Components

In Board's `renderSquare` method, a Square component with the prop called `value` is returned (and eventually rendered on the webpage)
```jsx
class Board extends React.Component {
  renderSquare(i) {
    return <Square value={i} />;  }
}
```
In Square's `render` method, a button that displays the Square's prop `value` is returned.
```jsx
class Square extends React.Component {
  render() {
    return (
      <button className="square">
        {this.props.value}
      </button>
    );
  }
}
```

## References
[Reactjs.org - Tutorial](https://reactjs.org/tutorial/tutorial.html#overview)

## Tags
#react

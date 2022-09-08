# React - Component Class 

A React component *class* is essentially a JavaScript class that extends `React.Component`.  

```jsx
class ShoppingList extends React.Component {
  render() {
    return (
      <div className="shopping-list">
        <h1>Shopping List for {this.props.name}</h1>
        <ul>
          <li>Instagram</li>
          <li>WhatsApp</li>
          <li>Oculus</li>
        </ul>
      </div>
    );
  }
}
```

* Component classes take in parameters through an object attribute called `props` (short for properties). Its constructor should begin with a `super(props)` call. [202209080229](../202209080229) - React- Props  

* Component classes can also have an object attribute called `state` to "remember" things [202209080251](../202209080251) - React - State.  


## References
[Reactjs.org - Tutorial](https://reactjs.org/tutorial/tutorial.html#making-an-interactive-component)

## Tags
#react

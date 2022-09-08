# React - Components

*Components* are the building blocks of any React application; they are small, isolated pieces of code that ...

There are various types of *components* in React:

* Component subclass - Essentially a JavaScript class that extends `React.Component`. Components 

* Components take in parameters through an object attribute called `props` (short for properties). Its constructor should begin with a `super(props)` call. [202209080229](../202209080229) - React- Props  

* Components can also have an object attribute called `state` to "remember" things[202209080251](../202209080251) - React - State.

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

## References
[Reactjs.org - Tutorial](https://reactjs.org/tutorial/tutorial.html#overview)

## Tags
#react

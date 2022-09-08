# React - Components

A *component* in React is essentially a JavaScript class that extends `React.Component`. Components take in parameters, called `props` (short for properties) and returns a hierarchy of views to display via the `render` method. Its constructor should begin with a `super(props)` call.

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

## Tags
#react

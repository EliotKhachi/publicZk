# React - Introducing JSX

Consider the following React *component*:
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
The above code is neither a string nor HTML. IT is *JSX*, **a syntax extension to JavaScript.**

```js
React.createElement("div", {
  className: "shopping-list"
}, /*#__PURE__*/React.createElement("h1", null, "Shopping List for ", props.name), /*#__PURE__*/React.createElement("ul", null, /*#__PURE__*/React.createElement("li", null, "Instagram"), /*#__PURE__*/React.createElement("li", null, "WhatsApp"), /*#__PURE__*/React.createElement("li", null, "Oculus")));
```



Intead of separating *technologies* by putting markup and logic in separate files, React separates *concerns* with loosely coupled units called "components" that contain both. [Wikipedia - Separation of Concerns](https://en.wikipedia.org/wiki/Separation_of_concerns)

## Examples
[202208282039](../202208282039) - React - Introducing JSX - Examples

## References
[reactjs.org - Introducing JSX](https://reactjs.org/docs/introducing-jsx.html)

## Tags
#react

# React - State 

A *state* in a React component is an object attribute used to store data to be referenced later. It differs from a *prop* in that a state is a permanent attribute of a React component while a prop must get passed as a parameter. [202209080229](../202209080229) - React- Props  

* States can be changed with the `this.setState()` method

The Square's `constructor` method is storing `value` in the state attribute, and its `render` method changes the value of `value` with an `onClick` *React DOM Element*. [202209080309](../202209080309) - React - DOM Element  

```jsx
class Square extends React.Component {
  constructor(props) {    
    super(props);  
    this.state = {      
      value: null,  
    };
  }
  render() {
    return (
      <button className="square"
              onClick={() => this.setState({value: 'X'})}
      >
        {this.state.value}
      </button>
    );
  }
}
```

## Tags
#react

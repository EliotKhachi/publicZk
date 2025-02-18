# React Library for JavaScript 

## What is it
React is a JavaScript library for building UIs (user interfaces) in an intuitive and easier way. A React application is structured into pieces of code called *components*.

Intead of separating *technologies* by putting markup (HTML and CSS) and logic (JavaScript) in separate files, React separates *concerns* with loosely coupled units called *components* that contain both. Components could be thought of as "sections" of the UI. [Wikipedia - Separation of Concerns](https://en.wikipedia.org/wiki/Separation_of_concerns)

## Why React? 
**1. Intuitive Development:** 
Before the days of React, separate HTML, CSS, and JS files worked together by setting HTML element properties through the DOM (Document Object Model) by use of class names and ids.

The problem is that these files each concerned themselves with many different components of the UI, which made it difficult and confusing to change the properties of a UI *component*. React makes UI design more intuitive to developers.

**2. Dynamic Web Pages:**
Developers make web pages dynamic by *handling* events to load/unload web pages appropriately and change the displayed data when needed. Without React, the developer must carefully think about how any change by the user propogates throughout the application, and determine what parts of the UI need to reload.  

React does this automatically through the *Virtual DOM*. React manages the Virtual DOM dynamically and only changes elements or parts of elements when needed. This then translates into the actual DOM loaded by the browser.  

## Tags
#react

# React Router Review

1. What are the differences and advantages/disadvantages of server-side routing and client-side routing respectively?  
The disadvantage of server-side routing is that every time the client browses to a different web page, he/she requests any data, JS, CSS, and HTML pages from the server. The advantage of client-side routing is that no network requests are necessary. Instead, the bundle of JS, CSS, and HTML content is pre-loaded into the browser's cache, and the web application selectively renders UI components. The disadvantage of client-side routing is the load time of initially opening the website, since you need to load in all the web content. The best approach is a balanced one, made much easier by React frameworks such as NextJS or Gatsby.  
2. What is the benefit/purpose of installing React Router?  
The purpose of React Router is to make it easier for developers to set up routes to different webpages and to selectively render content.  
3. How do we install React Router?  
Do `npm install react-router-dom@X` at your node project's base directory (where `package.json` resides), where `X` is the version number.  
4. What components are provided by React Router for basic routing needs?  
The `<Router>` component is the outermost wrapper of your application. It manages your routes. Within that you have `<Switch>`, another wrapper where you define your routes.  Then you have `<Route>`, the component that contains the contents of your UI componenet, and sets the `path` property that sets the URL path of your UI component.  
5. How do we implement a '404' or 'Not Found' page?  
React Router by default directs the client to the 'Home' page if it can't find the Route. To direct the client to a '404' page, first set up a `<Route>` that contains your '404' page content, where the `path` property isn't set to anything. Without a path defined, this is the default page of your app. Next, you have to modify your 'Home' page's route declaration to `<Route exact path="/">` 

## Tags
#dev #react

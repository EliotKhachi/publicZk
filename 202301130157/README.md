# Installing React Native

Going to the React Native docs [reactnative.dev/docs/environment-setup](https://reactnative.dev/docs/environment-setup)... Expo Go Quickstart is the way to go

## Benefits of Expo Go
* Gets you started in minutes  
* Hides a lot of configuration  
* Friendly for first time mobile developers  

## Install Instructions
First install `npm` and `node`.  
`sudo apt install nodejs npm`

Then create your expo app project.  
```bash
npx create-expo-app AwesomeProject
cd AwesomeProject
npm start
```

## Issues and Debugging
**Problems:**
* Metro Bundler generates a null QR Code
* Pressing "w" to open web prompts me to install packages with the following command: `npx expo install react-native-web@~0.18.9 react-dom@18.1.0 @expo/webpack-config@^0.17.2`
* After doing so, running `npm start` gives me the following error:
```
  opensslErrorStack: [ 'error:03000086:digital envelope routines::initialization error' ],
  library: 'digital envelope routines',
  reason: 'unsupported',
  code: 'ERR_OSSL_EVP_UNSUPPORTED'
}
```
, indicating that my openssl version is not compatible with my version of node.  
**Solution:**
Use a version of node between 16 and 17 to `npm start` the app.  
Run the following:  
```
npm install -g nave
nave install 16.0.0
nave use 16.0.0
```

## Tags
#react


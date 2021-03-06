# Simple SwiftUI-ReSwift Counter

It is an simple counter example of SwiftUI and ReSwift.

## Preview
![Simple Counter Preview](./SimpleCounterPreview_L.gif)

## Difference between Xcode's "single view app"

```
ProjectRoot
|`- Redux                                                      
|    |`- Counter                    <---- Add model Redux setting
|    |    |`- CounterAction.swift   <--|                                      
|    |    |`- CounterReducer.swift  <--|                                       
|    |     `- CounterState.swift    <--'                       
|    |                                                      
|    |`- Redux.swift                <---- Add global Redux setting
|    |`- AppState.swift             <--|              
|    |`- Middleware.swift           <--|                
|     `- ReduxStore.swift           <--'
|
|`- AppDelegate.swift
|`- SceneDelegate.swift             <---- Add store setting
 `- ContentView.swift                          
```

## Requirements

Xcode 11.6  
Swift 5.2.4  
ReSwift 5.0.0  

## Reference

- SwiftUI-Redux: https://github.com/kitasuke/SwiftUI-Redux

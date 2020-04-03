# SHView
SHView is a view with gone property.

## Features

- Just setGone -- view will disapear.
- Automatically adjust constaraints height.
- Automatically adjust margens.

## SHView in Action 

- Stroyboard Implementation

  ![SHView in Storyboard](https://media.giphy.com/media/8FDi7REIjVFXg41H96/giphy.gif)


- Simulator
  
  ![SHView in Simulator](https://media.giphy.com/media/tJMAGgkbRBcIBz9Rf1/giphy.gif)

## Demo

[Demo on Appetize.io](https://appetize.io/app/qvxzbzh55uzxwawpc63mrq0abg?device=iphone6s&scale=75&orientation=portrait&osVersion=11.4)

![Preview](demo.gif)


## Example

```swift
let myView = SHView()
```
add your constraints

```swift
myView.gone = true
```
or
```swift
myView.gone = false
```

# Animations
We want to make our view go from one state to another, for example from transparent to opaque

Pretty simple:

``` Swift
view.alpha = 0
UIView.animate(withDuration: 1.0) {
    view.alpha = 1
}
```

## With Completion
We can also add a completion: 

``` Swift
view.alpha = 0
UIView.animate(withDuration: 1.0, animations: {
    view.alpha = 1
}) {
    view.backgoundColor = UIColor.white
}
```

cf. [uiview+fade.swift](https://github.com/CyrilFind/til/blob/master/Swift/uiview%2Bfade.swift) for a cool use of this

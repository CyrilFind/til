# Delegates

I always forget how they work...

Usually you have a view controller and you want it to launch some action that would be better handled by an other class, so you set the latter as delegate of the former.

## View Controller
Let's say we want to trigger the action on the press of a button:
```` Swift
class SomeViewController : MotherViewController {
  weak var delegate: SomeViewControllerDelegate?
  
  @IBOutlet func pressSomeButton() {
    delegate?.someViewControllerAction()
  }
  // ...
}
````
## Delegate Protocol
Then we need to define `SomeViewControllerDelegate`:

```` Swift
protocol SomeViewControllerDelegate : NSObjectProtocol {
    func someViewControllerAction()
}
````
## Delegate Class
Now we add it to the other class, so that it has to implement `someViewControllerAction()`:

```` Swift
class OtherClass : MotherClass, SomeViewControllerDelegate {
  
  func someViewControllerAction() {
    // Do stuff
  }
  // ...
}
````

It can also be written as an extension:

```` Swift
class OtherClass : MotherClass {
  // ...
}

extension OtherClass : SomeViewControllerDelegate {
  func someViewControllerAction() {
      // Do stuff
    }
}
````

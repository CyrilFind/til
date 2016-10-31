# Delegates

Usually you have a view controller and you want it to launch some action that would be better handled by an other class, so you set the latter as delegate of the former but it can be the other way around.

## View Controller
Here, let's say we want to trigger some action on the press of a button, our ViewController will look a bit like this:

```` Swift
class SomeViewController : UIViewController {
  weak var delegate: SomeViewControllerDelegate? // Define the delegate
  
  @IBOutlet func pressSomeButtonToTriggerSomeAction() {
    delegate?.someViewControllerAction() // Call the delegate method
  }
  // ...
}
````

## Set the delegate
Usually we set the delegate before presenting the ViewController

```` Swift
let someViewController = SomeViewController()
someViewController.delegate = someInstanceOfOtherClass
// present the view controller
````

And often we do this in an `OtherClass` instance so `someInstanceOfOtherClass` is then `self`

Other times we set it in the View Controller like this for example : 

```` Swift
  override func viewDidLoad() {
    super.viewDidLoad()
    delegate = someInstanceOfOtherClass // set the delegate
    // ...
  }
````

## Delegate Protocol
For this to work we need to define `SomeViewControllerDelegate`:

```` Swift
protocol SomeViewControllerDelegate : NSObjectProtocol {
    func someViewControllerAction()
}
````
## Delegate Class
And we need to add it to the other class, so that it has to implement `someViewControllerAction()`:

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

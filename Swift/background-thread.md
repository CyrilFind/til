# Dispatch execution to background

To execute some code in another thread, for example using `QOS_CLASS_BACKGROUND` : 

```` Swift
dispatch_async(dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0)) {
    // Do slow stuff in background
}
````

# Get back in main thread

```` Swift
dispatch_async(dispatch_get_main_queue()) {
    // Do time sensitive and displaying stuff
}
````

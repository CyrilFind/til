# CSS absolute and relative positionning
I always forget how this works !
I'll use inline CSS for compact examples:

## Relative Position
The element's position is determined by its `left, top, right, bottom` CSS attributes, relatively to its own default position

## Absolute Position
The element's position is determined by its `left, top, right, bottom` CSS attributes, relatively to the *nearest positionned ancestor*

## Position an element (B) inside an other (A)
Wrap both inside **C**, then **C** needs to be *positionned*, so just give it a `relative` position, no need to change `left, top, right, bottom`.

You probably want **A** to take all the space inside **C** so use `width: 100%`.

Then use absolute position for **B** with `left, top, right, bottom`.

For example, center a div inside an image:

``` HTML
  <div id="C" style="position: relative;">
    <img id="A" src="https://i.ytimg.com/vi/dQw4w9WgXcQ/maxresdefault.jpg" width="100%" />
    <div id="B" style="position: absolute; top: 50%; left: 50%;">
      <!-- stuff -->
    </div>
  </div>
```

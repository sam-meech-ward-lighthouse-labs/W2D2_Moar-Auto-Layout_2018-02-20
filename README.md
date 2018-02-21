
#

## NSLayoutAnchor

* anchors
  - not a real physical thing, not like a constraint that we can add to the view. They are just a way of interfaceing with an api that creates constraints.

  https://developer.apple.com/documentation/uikit/nslayoutanchor?language=objc

## UILayoutGuides

* only available in code
* they basically act like dummy views, they can't be seen, they don't respond to user interaction, but they can be manipulated using auto layout.
* Margins are layout guides.

* safe area layout guides need to be used so that your **important** content doesn't get hidden by weird iphone screens (iphone x)

## Rules of Auto layout

> When you use Auto Layout, never ever ever set the frame.
> when using auto layout, frame, bounds, center all become read only.

### intrinsic content size

* Defaultish size for happy UI.
* Some ui elements have an intrinsic content size, which means that they know what size they are. 
* We don't hve to set width and height.
* Buttons, labels, table view cells (sometimes), image view. UIPicker and UIDatepickers. UISwitch.


### Visual format language

You can use the visual format language to create multiple constraints at once, but it looks a little be daunting. 

[Auto Layout Visual Format Language Tutorial](https://www.raywenderlich.com/174078/auto-layout-visual-format-language-tutorial-2)
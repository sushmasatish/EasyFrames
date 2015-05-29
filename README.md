# EasyFrames
EasyFrames is an objective-c view helper category which eases modifying UIView frames.

#How to use
Import the UIView+EasyFrame category into your .pch file.

```Objective-C
#import <UIView+EasyFrame.h>
```

And then to change frames on a view, just do:

```Objective-C
label.width = 20.0f;
button.height = 60.0f;
topView.y = 10.0f;
bottomView.x = 50.0f;
```

#TQAutoLayout
TQAutoLayout is a UIView Category. use it help you create NSLayoutConstraint object simple and fast.


##Usually

do constraints to view

```objc
    [NSLayoutConstraint activateConstraints:@[[NSLayoutConstraint constraintWithItem:view
                                                                           attribute:NSLayoutAttributeLeft
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:self.view
                                                                           attribute:NSLayoutAttributeLeft
                                                                          multiplier:1.0
                                                                            constant:0],
                                              [NSLayoutConstraint constraintWithItem:view
                                                                           attribute:NSLayoutAttributeRight
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:self.view
                                                                           attribute:NSLayoutAttributeRight
                                                                          multiplier:1.0
                                                                            constant:0],
                                              [NSLayoutConstraint constraintWithItem:view
                                                                           attribute:NSLayoutAttributeTop
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:self.view
                                                                           attribute:NSLayoutAttributeTop
                                                                          multiplier:1.0
                                                                            constant:0],
                                              [NSLayoutConstraint constraintWithItem:view
                                                                           attribute:NSLayoutAttributeBottom
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:self.view
                                                                           attribute:NSLayoutAttributeBottom
                                                                          multiplier:1.0
                                                                            constant:0],]];
```

##Now
just . . . .

```objc
    [NSLayoutConstraint activateConstraints:@[[view.tq_left equal:self.view.tq_left],
                                              [view.tq_right equal:self.view.tq_right],
                                              [view.tq_top equal:self.view.tq_top],
                                              [view.tq_bottom equal:self.view.tq_bottom],]];
```

##How to use
* copy `UIView+TQAutoLayout.h&m` to your project.
* or
* use `pod 'TQAutoLayout` //TODO
 
##Fun



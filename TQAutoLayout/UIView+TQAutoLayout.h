//
//  UIView+TQAutoLayout.h
//  TQAutoLayout
//
//  Created by qfu on 4/7/16.
//  Copyright © 2016 qfu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TQRelate;

@interface UIView (TQAutoLayout)

@property (readwrite, nonatomic, strong, setter = tq_setLeft:) TQRelate *tq_left;
@property (readwrite, nonatomic, strong, setter = tq_setRight:) TQRelate *tq_right;
@property (readwrite, nonatomic, strong, setter = tq_setTop:) TQRelate *tq_top;
@property (readwrite, nonatomic, strong, setter = tq_setBottom:) TQRelate *tq_bottom;
@property (readwrite, nonatomic, strong, setter = tq_setLeading:) TQRelate *tq_leading;
@property (readwrite, nonatomic, strong, setter = tq_setTrailing:) TQRelate *tq_trailing;
@property (readwrite, nonatomic, strong, setter = tq_setWidth:) TQRelate *tq_width;
@property (readwrite, nonatomic, strong, setter = tq_setHeight:) TQRelate *tq_height;
@property (readwrite, nonatomic, strong, setter = tq_setCenterX:) TQRelate *tq_centerX;
@property (readwrite, nonatomic, strong, setter = tq_setCenterY:) TQRelate *tq_centerY;
@property (readwrite, nonatomic, strong, setter = tq_setBaseline:) TQRelate *tq_baseline;
@property (readwrite, nonatomic, strong, setter = tq_setLastBaseline:) TQRelate *tq_lastBaseline;
@property (readwrite, nonatomic, strong, setter = tq_setFirstBaseline:) TQRelate *tq_firstBaseline NS_ENUM_AVAILABLE_IOS(8_0);
@property (readwrite, nonatomic, strong, setter = tq_setLeftMargin:) TQRelate *tq_leftMargin NS_ENUM_AVAILABLE_IOS(8_0);
@property (readwrite, nonatomic, strong, setter = tq_setRightMargin:) TQRelate *tq_rightMargin NS_ENUM_AVAILABLE_IOS(8_0);
@property (readwrite, nonatomic, strong, setter = tq_setTopMargin:) TQRelate *tq_topMargin NS_ENUM_AVAILABLE_IOS(8_0);
@property (readwrite, nonatomic, strong, setter = tq_setBottomMargin:) TQRelate *tq_bottomMargin NS_ENUM_AVAILABLE_IOS(8_0);
@property (readwrite, nonatomic, strong, setter = tq_setLeadingMargin:) TQRelate *tq_leadingMargin NS_ENUM_AVAILABLE_IOS(8_0);
@property (readwrite, nonatomic, strong, setter = tq_setTrailingMargin:) TQRelate *tq_trailingMargin NS_ENUM_AVAILABLE_IOS(8_0);
@property (readwrite, nonatomic, strong, setter = tq_setCenterXWithinMargins:) TQRelate *tq_centerXWithinMargins NS_ENUM_AVAILABLE_IOS(8_0);
@property (readwrite, nonatomic, strong, setter = tq_setCenterYWithinMargins:) TQRelate *tq_centerYWithinMargins NS_ENUM_AVAILABLE_IOS(8_0);
@property (readwrite, nonatomic, strong, setter = tq_setNotAnAttribute:) TQRelate *tq_notAnAttribute;

@end

@interface TQRelate : NSObject

@property (nonatomic,weak) UIView *item;
@property (nonatomic,assign) NSLayoutAttribute attribute;

- (NSLayoutConstraint *)equal:(TQRelate*)relate;
- (NSLayoutConstraint *)equal:(TQRelate*)relate constant:(CGFloat)c;
- (NSLayoutConstraint *)equal:(TQRelate*)relate multiplier:(CGFloat)multiplier constant:(CGFloat)c;

- (NSLayoutConstraint *)lessThanOrEqual:(TQRelate*)relate;
- (NSLayoutConstraint *)lessThanOrEqual:(TQRelate*)relate constant:(CGFloat)c;
- (NSLayoutConstraint *)lessThanOrEqual:(TQRelate*)relate multiplier:(CGFloat)multiplier constant:(CGFloat)c;

- (NSLayoutConstraint *)greaterThanOrEqual:(TQRelate*)relate;
- (NSLayoutConstraint *)greaterThanOrEqual:(TQRelate*)relate constant:(CGFloat)c;
- (NSLayoutConstraint *)greaterThanOrEqual:(TQRelate*)relate multiplier:(CGFloat)multiplier constant:(CGFloat)c;

@end

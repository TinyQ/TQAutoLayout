//
//  UIView+TQAutoLayout.m
//  TQAutoLayout
//
//  Created by qfu on 4/7/16.
//  Copyright © 2016 qfu. All rights reserved.
//

#import "UIView+TQAutoLayout.h"
#import <objc/runtime.h>

static char kTQLeftKey;
static char kTQRightKey;
static char kTQTopKey;
static char kTQBottomKey;
static char kTQLeadingKey;
static char kTQTrailingKey;
static char kTQWidthKey;
static char kTQHeightKey;
static char kTQCenterXKey;
static char kTQCenterYKey;
static char kTQBaselineKey;
static char kTQLastBaselineKey;
static char kTQFirstBaselineKey;
static char kTQLeftMarginKey;
static char kTQRightMarginKey;
static char kTQTopMarginKey;
static char kTQBottomMarginKey;
static char kTQLeadingMarginKey;
static char kTQTrailingMarginKey;
static char kTQCenterXWithinMarginsKey;
static char kTQCenterYWithinMarginsKey;
static char kTQNotAnAttributeKey;

@implementation UIView (TQAutoLayout)

#pragma mark - Left

- (TQRelate *)tq_left {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQLeftKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setLeft:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeLeft;
    return relate;
}

- (void)tq_setLeft:(TQRelate *)left {
    objc_setAssociatedObject(self, &kTQLeftKey, left, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - Right

- (TQRelate *)tq_right {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQRightKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setRight:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeRight;
    return relate;
}

- (void)tq_setRight:(TQRelate *)right{
    objc_setAssociatedObject(self, &kTQRightKey, right, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - Top

- (TQRelate *)tq_top {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQTopKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setTop:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeTop;
    return relate;
}

- (void)tq_setTop:(TQRelate *)top{
    objc_setAssociatedObject(self, &kTQTopKey, top, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - Bottom

- (TQRelate *)tq_bottom {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQBottomKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setBottom:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeBottom;
    return relate;
}

- (void)tq_setBottom:(TQRelate *)bottom{
    objc_setAssociatedObject(self, &kTQBottomKey, bottom, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - Leading

- (TQRelate *)tq_leading {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQLeadingKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setLeading:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeLeading;
    return relate;
}

- (void)tq_setLeading:(TQRelate *)leading{
    objc_setAssociatedObject(self, &kTQLeadingKey, leading, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - Trailing

- (TQRelate *)tq_trailing {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQTrailingKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setTrailing:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeTrailing;
    return relate;
}

- (void)tq_setTrailing:(TQRelate *)trailing{
    objc_setAssociatedObject(self, &kTQTrailingKey, trailing, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - Width

- (TQRelate *)tq_width {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQWidthKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setWidth:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeWidth;
    return relate;
}

- (void)tq_setWidth:(TQRelate *)width{
    objc_setAssociatedObject(self, &kTQWidthKey, width, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - Height

- (TQRelate *)tq_height {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQHeightKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setHeight:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeHeight;
    return relate;
}

- (void)tq_setHeight:(TQRelate *)height{
    objc_setAssociatedObject(self, &kTQHeightKey, height, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - CenterX

- (TQRelate *)tq_centerX {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQCenterXKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setCenterX:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeCenterX;
    return relate;
}

- (void)tq_setCenterX:(TQRelate *)centerX{
    objc_setAssociatedObject(self, &kTQCenterXKey, centerX, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - CenterY

- (TQRelate *)tq_centerY {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQCenterYKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setCenterY:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeCenterY;
    return relate;
}

- (void)tq_setCenterY:(TQRelate *)centerY{
    objc_setAssociatedObject(self, &kTQCenterYKey, centerY, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - Baseline

- (TQRelate *)tq_baseline {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQBaselineKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setBaseline:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeBaseline;
    return relate;
}

- (void)tq_setBaseline:(TQRelate *)baseline{
    objc_setAssociatedObject(self, &kTQBaselineKey, baseline, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - LastBaseline

- (TQRelate *)tq_lastBaseline {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQLastBaselineKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setLastBaseline:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeLastBaseline;
    return relate;
}

- (void)tq_setLastBaseline:(TQRelate *)lastBaseline{
    objc_setAssociatedObject(self, &kTQLastBaselineKey, lastBaseline, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - FirstBaseline

- (TQRelate *)tq_firstBaseline {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQFirstBaselineKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setFirstBaseline:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeFirstBaseline;
    return relate;
}

- (void)tq_setFirstBaseline:(TQRelate *)firstBaseline{
    objc_setAssociatedObject(self, &kTQFirstBaselineKey, firstBaseline, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - LeftMargin

- (TQRelate *)tq_leftMargin {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQLeftMarginKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setLeftMargin:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeLeftMargin;
    return relate;
}

- (void)tq_setLeftMargin:(TQRelate *)leftMargin{
    objc_setAssociatedObject(self, &kTQLeftMarginKey, leftMargin, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - RightMargin

- (TQRelate *)tq_rightMargin {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQRightMarginKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setRightMargin:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeRightMargin;
    return relate;
}

- (void)tq_setRightMargin:(TQRelate *)rightMargin{
    objc_setAssociatedObject(self, &kTQRightMarginKey, rightMargin, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - TopMargin

- (TQRelate *)tq_topMargin {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQTopMarginKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setTopMargin:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeTopMargin;
    return relate;
}

- (void)tq_setTopMargin:(TQRelate *)topMargin{
    objc_setAssociatedObject(self, &kTQTopMarginKey, topMargin, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - BottomoMargin

- (TQRelate *)tq_bottomMargin {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQBottomMarginKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setBottomMargin:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeBottomMargin;
    return relate;
}

- (void)tq_setBottomMargin:(TQRelate *)bottomMargin{
    objc_setAssociatedObject(self, &kTQBottomMarginKey, bottomMargin, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - LeadingMargin

- (TQRelate *)tq_leadingMargin {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQLeadingMarginKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setLeadingMargin:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeLeadingMargin;
    return relate;
}

- (void)tq_setLeadingMargin:(TQRelate *)leadingMargin{
    objc_setAssociatedObject(self, &kTQLeadingMarginKey, leadingMargin, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - TrailingMargin

- (TQRelate *)tq_trailingMargin {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQTrailingMarginKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setTrailingMargin:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeTrailingMargin;
    return relate;
}

- (void)tq_setTrailingMargin:(TQRelate *)trailingMargin{
    objc_setAssociatedObject(self, &kTQTrailingMarginKey, trailingMargin, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - CenterXWithinMargins

- (TQRelate *)tq_centerXWithinMargins {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQCenterXWithinMarginsKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setCenterXWithinMargins:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeCenterXWithinMargins;
    return relate;
}

- (void)tq_setCenterXWithinMargins:(TQRelate *)centerXWithinMargins{
    objc_setAssociatedObject(self, &kTQCenterXWithinMarginsKey, centerXWithinMargins, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - CenterYWithinMargins

- (TQRelate *)tq_centerYWithinMargins {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQCenterYWithinMarginsKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setCenterYWithinMargins:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeCenterYWithinMargins;
    return relate;
}

- (void)tq_setCenterYWithinMargins:(TQRelate *)centerYWithinMargins{
    objc_setAssociatedObject(self, &kTQCenterYWithinMarginsKey, centerYWithinMargins, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - NotAnAttribute

- (TQRelate *)tq_notAnAttribute {
    TQRelate *relate = (TQRelate *)objc_getAssociatedObject(self, &kTQNotAnAttributeKey);
    if (relate == nil) {
        relate = [[TQRelate alloc] init];
        [self tq_setNotAnAttribute:relate];
    }
    relate.item = self;
    relate.attribute = NSLayoutAttributeNotAnAttribute;
    return relate;
}

- (void)tq_setNotAnAttribute:(TQRelate *)notAnAttribute{
    objc_setAssociatedObject(self, &kTQNotAnAttributeKey, notAnAttribute, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end

@implementation TQRelate

- (NSLayoutConstraint *)equal:(TQRelate*)relate{
    return [self equal:relate multiplier:1.0 constant:0.0];
}

- (NSLayoutConstraint *)equal:(TQRelate*)relate constant:(CGFloat)c{
    return [self equal:relate multiplier:1.0 constant:c];
}

- (NSLayoutConstraint *)equal:(TQRelate*)relate multiplier:(CGFloat)multiplier constant:(CGFloat)c{
    return [NSLayoutConstraint constraintWithItem:self.item
                                        attribute:self.attribute
                                        relatedBy:NSLayoutRelationEqual
                                           toItem:relate.item
                                        attribute:relate.attribute
                                       multiplier:multiplier
                                         constant:c];
}

- (NSLayoutConstraint *)lessThanOrEqual:(TQRelate*)relate{
    return [self lessThanOrEqual:relate multiplier:1.0 constant:0.0];
}

- (NSLayoutConstraint *)lessThanOrEqual:(TQRelate*)relate constant:(CGFloat)c{
    return [self lessThanOrEqual:relate multiplier:1.0 constant:c];
}

- (NSLayoutConstraint *)lessThanOrEqual:(TQRelate*)relate multiplier:(CGFloat)multiplier constant:(CGFloat)c{
    return [NSLayoutConstraint constraintWithItem:self.item
                                        attribute:self.attribute
                                        relatedBy:NSLayoutRelationLessThanOrEqual
                                           toItem:relate.item
                                        attribute:relate.attribute
                                       multiplier:multiplier
                                         constant:c];
}

- (NSLayoutConstraint *)greaterThanOrEqual:(TQRelate*)relate{
    return [self greaterThanOrEqual:relate multiplier:1.0 constant:0.0];
}

- (NSLayoutConstraint *)greaterThanOrEqual:(TQRelate*)relate constant:(CGFloat)c{
    return [self greaterThanOrEqual:relate multiplier:1.0 constant:c];
}

- (NSLayoutConstraint *)greaterThanOrEqual:(TQRelate*)relate multiplier:(CGFloat)multiplier constant:(CGFloat)c{
    return [NSLayoutConstraint constraintWithItem:self.item
                                        attribute:self.attribute
                                        relatedBy:NSLayoutRelationGreaterThanOrEqual
                                           toItem:relate.item
                                        attribute:relate.attribute
                                       multiplier:multiplier
                                         constant:c];
}

@end



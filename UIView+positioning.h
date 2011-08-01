//
//  UIView+positioning.h
//

#import <Foundation/Foundation.h>

typedef enum {
  UIViewHAlignmentLeft,
  UIViewHAlignmentCenter,
  UIViewHAlignmentRight
} UIViewHAlignment;

typedef enum {
  UIViewVAlignmentTop,
  UIViewVAlignmentMiddle,
  UIViewVAlignmentBottom
} UIViewVAlignment;

@interface UIView (positioning)

- (void)positionIn:(CGRect)container;

- (void)positionIn:(CGRect)container
            origin:(CGPoint)origin;

- (void)positionIn:(CGRect)container
        hAlignment:(UIViewHAlignment)hAlignment;

- (void)positionIn:(CGRect)container
        vAlignment:(UIViewVAlignment)vAlignment;

- (void)positionIn:(CGRect)container
            origin:(CGPoint)origin
        hAlignment:(UIViewHAlignment)hAlignment;

- (void)positionIn:(CGRect)container
            origin:(CGPoint)origin
        vAlignment:(UIViewVAlignment)vAlignment;

- (void)positionIn:(CGRect)container
            origin:(CGPoint)origin
        hAlignment:(UIViewHAlignment)hAlignment
        vAlignment:(UIViewVAlignment)vAlignment;

- (void)addSubview:(UIView *)view
            origin:(CGPoint)origin;

- (void)addSubview:(UIView *)view
        hAlignment:(UIViewHAlignment)hAlignment;

- (void)addSubview:(UIView *)view
        vAlignment:(UIViewVAlignment)vAlignment;

- (void)addSubview:(UIView *)view
            origin:(CGPoint)origin
        hAlignment:(UIViewHAlignment)hAlignment;

- (void)addSubview:(UIView *)view
            origin:(CGPoint)origin
        vAlignment:(UIViewVAlignment)vAlignment;

- (void)addSubview:(UIView *)view
            origin:(CGPoint)origin
        hAlignment:(UIViewHAlignment)hAlignment
        vAlignment:(UIViewVAlignment)vAlignment;

@end

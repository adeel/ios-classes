//
//  UIView+positioning.h
//

#import <Foundation/Foundation.h>

typedef enum {
  UIViewAlignmentLeft,
  UIViewAlignmentCenter,
  UIViewAlignmentRight
} UIViewAlignment;

@interface UIView (positioning)

- (void)positionIn:(CGRect)container;

- (void)positionIn:(CGRect)container
            origin:(CGPoint)origin;

- (void)positionIn:(CGRect)container
         alignment:(UIViewAlignment)alignment;

- (void)positionIn:(CGRect)container
            origin:(CGPoint)origin
         alignment:(UIViewAlignment)alignment;

- (void)addSubview:(UIView *)view
            origin:(CGPoint)origin;

- (void)addSubview:(UIView *)view
         alignment:(UIViewAlignment)alignment;

- (void)addSubview:(UIView *)view
            origin:(CGPoint)origin
         alignment:(UIViewAlignment)alignment;
@end

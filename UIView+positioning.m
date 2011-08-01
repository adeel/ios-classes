//
//  UIView+positioning.m
//

#define kUIViewDefaultOrigin CGPointMake(8, 8)

@implementation UIView (positioning)

- (void)positionIn:(CGRect)container {
  [self positionIn:container origin:kUIViewDefaultOrigin alignment:UIViewAlignmentLeft];
}

- (void)positionIn:(CGRect)container
            origin:(CGPoint)origin {
  [self positionIn:container origin:origin alignment:UIViewAlignmentLeft];
}

- (void)positionIn:(CGRect)container
         alignment:(UIViewAlignment)alignment {
  [self positionIn:container origin:kUIViewDefaultOrigin alignment:alignment];
}

- (void)positionIn:(CGRect)container
            origin:(CGPoint)origin
         alignment:(UIViewAlignment)alignment {
  if (alignment == UIViewAlignmentLeft) {
    self.frame = CGRectMake(
      container.origin.x + origin.x, container.origin.y + origin.y,
      self.frame.size.width, self.frame.size.height);
  } else if (alignment == UIViewAlignmentCenter) {
    self.frame = CGRectMake(
      container.origin.x + (container.size.width - self.frame.size.width) / 2.0, container.origin.y + origin.y,
      self.frame.size.width, self.frame.size.height);
  } else if (alignment == UIViewAlignmentRight) {
    self.frame = CGRectMake(
      container.origin.x + container.size.width - origin.x, container.origin.y + origin.y,
      self.frame.size.width, self.frame.size.height);
  }
}

- (void)addSubview:(UIView *)view
            origin:(CGPoint)origin {
  [self addSubview:view origin:origin alignment:UIViewAlignmentLeft];
}

- (void)addSubview:(UIView *)view
         alignment:(UIViewAlignment)alignment {
  [self addSubview:view origin:kUIViewDefaultOrigin alignment:alignment];
}

- (void)addSubview:(UIView *)view
            origin:(CGPoint)origin
         alignment:(UIViewAlignment)alignment {
  [view positionIn:self.frame origin:origin alignment:alignment];
  [self addSubview:view];
}

@end

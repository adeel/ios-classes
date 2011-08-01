//
//  UIView+positioning.m
//

#define kUIViewDefaultOrigin CGPointMake(8, 8)
#define kUIViewDefaultHAlignment UIViewHAlignmentLeft
#define kUIViewDefaultVAlignment UIViewVAlignmentMiddle

@implementation UIView (positioning)

- (void)positionIn:(CGRect)container {
  [self positionIn:container origin:kUIViewDefaultOrigin
    hAlignment:kUIViewDefaultHAlignment vAlignment:kUIViewDefaultVAlignment];
}

- (void)positionIn:(CGRect)container
            origin:(CGPoint)origin {
  [self positionIn:container origin:origin
    hAlignment:kUIViewDefaultHAlignment vAlignment:kUIViewDefaultVAlignment];
}

- (void)positionIn:(CGRect)container
        hAlignment:(UIViewHAlignment)hAlignment {
  [self positionIn:container origin:kUIViewDefaultOrigin
    hAlignment:hAlignment vAlignment:kUIViewDefaultVAlignment];
}

- (void)positionIn:(CGRect)container
        vAlignment:(UIViewVAlignment)vAlignment {
  [self positionIn:container origin:kUIViewDefaultOrigin
    hAlignment:kUIViewDefaultHAlignment vAlignment:vAlignment];
}

- (void)positionIn:(CGRect)container
            origin:(CGPoint)origin
        hAlignment:(UIViewHAlignment)hAlignment {
  [self positionIn:container origin:origin
    hAlignment:hAlignment vAlignment:kUIViewDefaultVAlignment];
}

- (void)positionIn:(CGRect)container
            origin:(CGPoint)origin
        vAlignment:(UIViewVAlignment)vAlignment {
  [self positionIn:container origin:origin
    hAlignment:kUIViewDefaultHAlignment vAlignment:vAlignment];
}

- (void)positionIn:(CGRect)container
            origin:(CGPoint)origin
        hAlignment:(UIViewHAlignment)hAlignment
        vAlignment:(UIViewVAlignment)vAlignment {
  CGFloat xOffset;
  if (hAlignment == UIViewHAlignmentLeft) {
    xOffset = origin.x;
  } else if (hAlignment == UIViewHAlignmentCenter) {
    xOffset = (container.size.width - self.frame.size.width) / 2.0;
  } else if (hAlignment == UIViewHAlignmentRight) {
    xOffset = container.size.width - origin.x - self.frame.size.width;
  }

  CGFloat yOffset;
  if (vAlignment == UIViewVAlignmentTop) {
    yOffset = origin.y;
  } else if (vAlignment == UIViewVAlignmentMiddle) {
    yOffset = (container.size.height - self.frame.size.height) / 2.0;
  } else if (vAlignment == UIViewVAlignmentBottom) {
    yOffset = container.size.height - origin.y - self.frame.size.height;
  }

  self.frame = CGRectMake(
    container.origin.x + xOffset, container.origin.y + yOffset,
    self.frame.size.width, self.frame.size.height);
}

- (void)addSubview:(UIView *)view
            origin:(CGPoint)origin {
  [self addSubview:view origin:origin hAlignment:kUIViewDefaultHAlignment vAlignment:kUIViewDefaultVAlignment];
}

- (void)addSubview:(UIView *)view
        hAlignment:(UIViewHAlignment)hAlignment {
  [view positionIn:self.frame origin:kUIViewDefaultOrigin hAlignment:hAlignment vAlignment:kUIViewDefaultVAlignment];
  [self addSubview:view];
}

- (void)addSubview:(UIView *)view
        vAlignment:(UIViewVAlignment)vAlignment {
  [view positionIn:self.frame origin:kUIViewDefaultOrigin hAlignment:kUIViewDefaultHAlignment vAlignment:vAlignment];
  [self addSubview:view];
}

- (void)addSubview:(UIView *)view
            origin:(CGPoint)origin
        hAlignment:(UIViewHAlignment)hAlignment {
  [view positionIn:self.frame origin:origin hAlignment:hAlignment vAlignment:kUIViewDefaultVAlignment];
  [self addSubview:view];
}

- (void)addSubview:(UIView *)view
            origin:(CGPoint)origin
        vAlignment:(UIViewVAlignment)vAlignment {
  [view positionIn:self.frame origin:origin hAlignment:kUIViewDefaultHAlignment vAlignment:vAlignment];
  [self addSubview:view];
}

- (void)addSubview:(UIView *)view
            origin:(CGPoint)origin
        hAlignment:(UIViewHAlignment)hAlignment
        vAlignment:(UIViewVAlignment)vAlignment {
  [view positionIn:self.frame origin:origin hAlignment:hAlignment vAlignment:vAlignment];
  [self addSubview:view];
}

@end

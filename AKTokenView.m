//
//  AKTokenView.m
//  https://github.com/adeel/ios-classes
//

#import "AKTokenView.h"

@implementation AKTokenView

@synthesize text;
@synthesize font;

- (void)dealloc {
  self.text = nil;
  self.font = nil;

  [super dealloc];
}

- (id)initWithText:(NSString *)_text font:(UIFont *)_font {
  self = [super initWithFrame:CGRectZero];
  if (self) {
    self.text = [_text copy];
    self.font = [_font retain];
    CGSize size = [self.text sizeWithFont:self.font];
    self.frame = CGRectMake(0, 0, size.width + 17, size.height + 8);
    self.backgroundColor = [UIColor clearColor];
  }
  return self;
}

- (void)drawRect:(CGRect)rect {
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  CGSize size = [self.text sizeWithFont:self.font];
  
  CGRect bounds = CGRectMake(0, 0, size.width + 17, size.height + 5);
  CGRect textBounds = bounds;
  textBounds.origin.x = (bounds.size.width - size.width) / 2;
  textBounds.origin.y += 4;
  
  CGFloat arcValue = (bounds.size.height / 2) + 1;
  
  CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
  CGPoint endPoint = CGPointMake(1, self.frame.size.height + 10);
  
  CGContextSaveGState(context);
  CGContextBeginPath(context);
  CGContextAddArc(context, arcValue, arcValue, arcValue, (M_PI / 2), (3 * M_PI / 2), NO);
  CGContextAddArc(context, bounds.size.width - arcValue, arcValue, arcValue, 3 * M_PI / 2, M_PI / 2, NO);
  CGContextClosePath(context);

  CGContextClip(context);
  CGFloat locations[2] = {0, 0.95};
  CGFloat components[8] = {0.631, 0.733, 1, 1, 0.463, 0.510, 0.839, 1};
  CGGradientRef gradient = CGGradientCreateWithColorComponents(colorspace, components, locations, 2);
  CGContextDrawLinearGradient(context, gradient, CGPointZero, endPoint, 0);
  CGGradientRelease(gradient);
  CGContextRestoreGState(context);
  
  CGContextSaveGState(context);
  CGContextBeginPath(context);
  CGContextAddArc(context, arcValue, arcValue, (bounds.size.height / 2), (M_PI / 2) , (3 * M_PI / 2), NO);
  CGContextAddArc(context, bounds.size.width - arcValue, arcValue, arcValue - 1, (3 * M_PI / 2), (M_PI / 2), NO);
  CGContextClosePath(context);
  
  CGContextClip(context);
  
  CGFloat locations2[2] = {0, 0.4};
  CGFloat components2[8] = {0.867, 0.906, 0.973, 1, 0.737, 0.808, 0.945, 1};
  CGGradientRef gradient2 = CGGradientCreateWithColorComponents (colorspace, components2, locations2, 2);
  CGContextDrawLinearGradient (context, gradient2, CGPointZero, endPoint, 0);
  CGGradientRelease(gradient2);
  
  [[UIColor blackColor] set];
  [self.text drawInRect:textBounds withFont:self.font];
  
  CGColorSpaceRelease(colorspace);
  CGContextRestoreGState(context);
}

@end

//
//  AKTokenView.h
//  https://github.com/adeel/ios-classes
//

#import <UIKit/UIKit.h>

@interface AKTokenView : UIView {
  NSString *text;
  UIFont *font;
}

@property(nonatomic,copy) NSString *text;
@property(nonatomic,retain) UIFont *font;

- (id)initWithText:(NSString *)_text font:(UIFont *)_font;

@end

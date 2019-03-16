#import "Headers.h"

@implementation FeedbackCall
+(void)vibrateDevice {
    AudioServicesPlaySystemSound(1519);
}
@end

%hook CalculatorKeypadView
  -(void)layoutSubviews {
    %orig;
    CalculatorKeypadView *swiftclass = self;
    if(swiftclass.isHighlighted == YES) {
      [FeedbackCall vibrateDevice];
    }
  }
%end

%ctor {
  %init(_ungrouped, CalculatorKeypadView = NSClassFromString(@"Calculator.CalculatorKeypadButton"));
}

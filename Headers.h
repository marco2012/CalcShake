#import <AudioToolbox/AudioToolbox.h>   

@interface FeedbackCall : NSObject
+(void)vibrateDevice;
@end

@interface CalculatorKeypadView
@property (nonatomic, assign, readwrite) BOOL isHighlighted;
@end
#import "libactivator.h"
#import <notify.h>
@interface SBLockScreenView : NSObject
-(void)setCustomSlideToUnlockText:(id)arg1;
@end
@interface ShuffleLock : NSObject<LAListener> 
{} 
@end
NSArray* phraseArray = [[NSArray alloc] initWithArray:@[@"This is a test!", @"Testing.", @"Roger that.", @"Is this thing on?", @"Reading you loud and clear.", @"Big booty bitches"]];
int counter = 0;
id sbLSView;
@implementation ShuffleLock

-(void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	notify_post("com.cortex.shuffle.change");
	counter += 1;
}

+(void)load {
	NSAutoreleasePool *p = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.cortex.shuffle"];
	[p release];
}
@end

%hook SBLockScreenView

-(void)setCustomSlideToUnlockText:(id)arg1 {
	sbLSView = self;
	NSString* replacementString = [phraseArray objectAtIndex:counter];
	%orig(replacementString);
}

%end

void shiftSTU() {
	[sbLSView setCustomSlideToUnlockText:@"It shouldnt actually matter what I put here"];
}

%ctor {
	CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(),
                                    NULL,
                                    (CFNotificationCallback)shiftSTU,
                                    CFSTR("com.cortex.shuffle.change"),
                                    NULL,
                                    CFNotificationSuspensionBehaviorDeliverImmediately);
    
    shiftSTU();
}

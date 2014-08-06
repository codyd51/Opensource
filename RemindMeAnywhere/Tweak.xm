#import "Activator.h"

@interface ALGHActivatorListener : NSObject <LAListener>
@end

@implementation ALGHActivatorListener

- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event{
	@autoreleasepool{
		
		NSDictionary *prefs = [NSDictionary dictionaryWithContentsOfFile:[NSHomeDirectory() stringByAppendingPathComponent:@"Library/Preferences/com.aehmlo.openro0t.RemindMeAnywhere.plist"]];
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"RemindMeAnywhere" message:prefs[@"GreetingText"] delegate:nil cancelButtonTitle:@"Noted" otherButtonTitles:nil];
		[alertView show];
		[alertView release];
		event.handled = YES;
	}
}

- (NSString *)activator:(LAActivator *)activator requiresLocalizedTitleForListenerName:(NSString *)listenerName{
	return @"RemindMeAnywhere";
}

+ (void)load{
	@autoreleasepool{
		[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.aehmlo.openro0t.remindmeanywhere"];
	}
}

@end
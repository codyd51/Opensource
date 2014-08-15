#line 1 "Tweak.xm"
#import <Springboard/SpringBoard.h>

@interface SBApplicationIcon
- (void)launchFromLocation:(int)arg;
- (id)displayName;
@end
 
#include <logos/logos.h>
#include <substrate.h>
@class SBApplicationIcon; 
static void (*_logos_orig$_ungrouped$SBApplicationIcon$launchFromLocation$)(SBApplicationIcon*, SEL, int); static void _logos_method$_ungrouped$SBApplicationIcon$launchFromLocation$(SBApplicationIcon*, SEL, int); 

#line 8 "Tweak.xm"

 

static void _logos_method$_ungrouped$SBApplicationIcon$launchFromLocation$(SBApplicationIcon* self, SEL _cmd, int location) {
    NSLog(@"Hello! I'm LaunchNotifier! Nice to meet you!");
    NSString *appName = [self displayName];
    NSString *message = [NSString stringWithFormat:@"The app %@ has been launched!", appName];
    UIAlertView *myAlert = [[UIAlertView alloc]initWithTitle:appName message:message delegate:nil cancelButtonTitle:@"Sounds good" otherButtonTitles:nil];
    [myAlert show];
    [myAlert release];
    _logos_orig$_ungrouped$SBApplicationIcon$launchFromLocation$(self, _cmd, location);
}
 

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBApplicationIcon = objc_getClass("SBApplicationIcon"); MSHookMessageEx(_logos_class$_ungrouped$SBApplicationIcon, @selector(launchFromLocation:), (IMP)&_logos_method$_ungrouped$SBApplicationIcon$launchFromLocation$, (IMP*)&_logos_orig$_ungrouped$SBApplicationIcon$launchFromLocation$);} }
#line 22 "Tweak.xm"

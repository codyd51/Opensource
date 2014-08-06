#import <Preferences/Preferences.h>

@interface RespringNotifListController: PSListController {
}
@end

@implementation RespringNotifListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"RespringNotif" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc

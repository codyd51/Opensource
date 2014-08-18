#import <Preferences/Preferences.h>

@interface ShuffleLockListController: PSListController {
}
@end

@implementation ShuffleLockListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"ShuffleLock" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc

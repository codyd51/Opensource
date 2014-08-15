@interface SBApplicationIcon
- (void)launchFromLocation:(int)arg;
- (id)displayName;
@end
 
%hook SBApplicationIcon
 
-(void)launchFromLocation:(int)location
{
    NSLog(@"Hello! I'm LaunchNotifier! Nice to meet you!");
    NSString *appName = [self displayName];
    NSString *message = [NSString stringWithFormat:@"The app %@ has been launched!", appName];
    UIAlertView *myAlert = [[UIAlertView alloc]initWithTitle:appName message:message delegate:nil cancelButtonTitle:@"Sounds good" otherButtonTitles:nil];
    [myAlert show];
    [myAlert release];
    %orig(location);
}
 
%end
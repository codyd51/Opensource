%hook SBLockScreenView

- (void)setCustomSlideToUnlockText:(id)unlockText {
    
    NSString *settingsPath = @"/var/mobile/Library/Preferences/com.cortexdevs.shufflelock";
    
    
    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingsPath];
 
    
    NSString *text = [prefs objectForKey:@"text"];
            
    if ([text isEqualToString:@""] || text == nil || ![[prefs objectForKey:@"enabled"] boolValue]) {
        
        
        %orig(unlockText);
        
    }
    
    
    else {        
        
        unlockText = text;

        %orig(text);
        
    }

}

%end

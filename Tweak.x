#import "NSTask.h"

%hook SpringBoard
-(void)applicationDidFinishLaunching:(bool)arg1{
	%orig;
	NSDictionary *prefs = [NSDictionary dictionaryWithContentsOfFile:@"/var/jb/var/mobile/Library/Preferences/com.level3tjg.daemondisabler.plist"];
	
	for(NSString *daemon in [prefs allKeys]){
		if([[prefs objectForKey:daemon] boolValue] == FALSE){
			NSTask *task = [NSTask new];
			[task setLaunchPath:@"/var/jb/usr/libexec/launchctl_wrapper"];
			[task setArguments:@[@"launchctl", @"unload", daemon]];
			[task launch];
		}
	}
}
%end
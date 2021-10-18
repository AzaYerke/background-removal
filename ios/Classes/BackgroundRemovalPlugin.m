#import "BackgroundRemovalPlugin.h"
#if __has_include(<background_removal/background_removal-Swift.h>)
#import <background_removal/background_removal-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "background_removal-Swift.h"
#endif

@implementation BackgroundRemovalPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBackgroundRemovalPlugin registerWithRegistrar:registrar];
}
@end

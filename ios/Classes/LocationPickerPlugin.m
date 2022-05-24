#import "LocationPickerPlugin.h"
#if __has_include(<location_picker/location_picker-Swift.h>)
#import <location_picker/location_picker-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "location_picker-Swift.h"
#endif

@implementation LocationPickerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLocationPickerPlugin registerWithRegistrar:registrar];
}
@end

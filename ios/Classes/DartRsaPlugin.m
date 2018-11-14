#import "DartRsaPlugin.h"
#import <dart_rsa/dart_rsa-Swift.h>

@implementation DartRsaPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDartRsaPlugin registerWithRegistrar:registrar];
}
@end

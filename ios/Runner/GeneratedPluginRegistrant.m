//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<geolocation/GeolocationPlugin.h>)
#import <geolocation/GeolocationPlugin.h>
#else
@import geolocation;
#endif

#if __has_include(<path_provider/FLTPathProviderPlugin.h>)
#import <path_provider/FLTPathProviderPlugin.h>
#else
@import path_provider;
#endif

#if __has_include(<streams_channel/StreamsChannelPlugin.h>)
#import <streams_channel/StreamsChannelPlugin.h>
#else
@import streams_channel;
#endif

#if __has_include(<url_launcher/FLTURLLauncherPlugin.h>)
#import <url_launcher/FLTURLLauncherPlugin.h>
#else
@import url_launcher;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [GeolocationPlugin registerWithRegistrar:[registry registrarForPlugin:@"GeolocationPlugin"]];
  [FLTPathProviderPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTPathProviderPlugin"]];
  [StreamsChannelPlugin registerWithRegistrar:[registry registrarForPlugin:@"StreamsChannelPlugin"]];
  [FLTURLLauncherPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTURLLauncherPlugin"]];
}

@end

package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import app.loup.geolocation.GeolocationPlugin;
import io.flutter.plugins.pathprovider.PathProviderPlugin;
import app.loup.streams_channel.StreamsChannelPlugin;
import io.flutter.plugins.urllauncher.UrlLauncherPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    GeolocationPlugin.registerWith(registry.registrarFor("app.loup.geolocation.GeolocationPlugin"));
    PathProviderPlugin.registerWith(registry.registrarFor("io.flutter.plugins.pathprovider.PathProviderPlugin"));
    StreamsChannelPlugin.registerWith(registry.registrarFor("app.loup.streams_channel.StreamsChannelPlugin"));
    UrlLauncherPlugin.registerWith(registry.registrarFor("io.flutter.plugins.urllauncher.UrlLauncherPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}

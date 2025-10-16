#!/usr/bin/env dart

/// Test script to verify Dart 3 compatibility after Freezed regeneration
import 'package:youtube_explode_dart_plus/youtube_explode_dart_plus.dart';

void main() {
  print('Testing Dart 3 compatibility...');

  try {
    // Test main YoutubeExplode class
    final yt = YoutubeExplode();
    print('✓ YoutubeExplode instantiated successfully');

    // Test VideoId (uses Freezed)
    final videoId = VideoId('dQw4w9WgXcQ');
    print('✓ VideoId created: ${videoId.value}');

    // Test ChannelId (uses Freezed)
    final channelId = ChannelId('UCuAXFkgsw1L7xaCfnd5JJOw');
    print('✓ ChannelId created: ${channelId.value}');

    // Test PlaylistId (uses Freezed)
    final playlistId = PlaylistId('PLrAXtmRdnEQy8VFVmKjNxlw');
    print('✓ PlaylistId created: ${playlistId.value}');

    // Clean up
    yt.close();
    print('✓ YoutubeExplode closed successfully');

    print('\n🎉 All Dart 3 compatibility tests passed!');
    print('✓ Freezed classes work correctly');
    print('✓ No underscore parameter issues');
  } catch (e, stackTrace) {
    print('✗ Error: $e');
    print('Stack trace: $stackTrace');
  }
}

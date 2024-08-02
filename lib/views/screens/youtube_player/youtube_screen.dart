


import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePlayerScreen extends StatefulWidget {
  const YoutubePlayerScreen({super.key});

  @override
  State<YoutubePlayerScreen> createState() => _YoutubePlayerScreenState();
}

class _YoutubePlayerScreenState extends State<YoutubePlayerScreen> {

  getPlayer(){
    // final _controller = YoutubePlayerController(
    //   params: YoutubePlayerParams(
    //     mute: false,
    //     showControls: true,
    //     showFullscreenButton: true,
    //   ),
    // );
    //
    // _controller.loadVideoById(...); // Auto Play
    // _controller.cueVideoById(...); // Manual Play
    // _controller.loadPlaylist(...); // Auto Play with playlist
    // _controller.cuePlaylist(...); // Manual Play with playlist

// If the requirement is just to play a single video.
    final controller = YoutubePlayerController.fromVideoId(
      videoId: 'v2igme0WgZk',
      autoPlay: false,
      params: const YoutubePlayerParams(showFullscreenButton: true),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Player"),),
      body: YoutubePlayer(
        controller: getPlayer(),
        aspectRatio: 16 / 9,
      ),
    );
  }
}

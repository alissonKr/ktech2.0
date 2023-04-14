import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class block1 extends StatelessWidget {
  final String videoPath;

  const block1(this.videoPath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: VideoContainer1(videoPath: videoPath),
    );
  }
}

class VideoContainer1 extends StatefulWidget {
  final String videoPath;

  const VideoContainer1({Key? key, required this.videoPath}) : super(key: key);

  @override
  _VideoContainer1State createState() => _VideoContainer1State();
}

class _VideoContainer1State extends State<VideoContainer1> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..addListener(() {
        final bool isPlaying = _controller.value.isPlaying;
        if (isPlaying != _isPlaying) {
          setState(() {
            _isPlaying = isPlaying;
          });
        }
      })
      ..initialize().then((_) {
        setState(() {});
        _controller.setLooping(true); // Define loop infinito
        _controller.play(); // Inicia o vídeo
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: _controller.value.isInitialized
          ? Stack(
              children: [
                AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
                Positioned.fill(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isPlaying ? _controller.pause() : _controller.play();
                        _isPlaying = !_isPlaying;
                      });
                    },
                    child: Center(
                      child: _isPlaying
                          ? SizedBox.shrink()
                          : Icon(
                              Icons.play_arrow,
                              size: 64.0,
                              color: Colors.white,
                            ),
                    ),
                  ),
                ),
              ],
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

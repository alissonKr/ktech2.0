import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class blocks extends StatelessWidget {
  final String text;
  final String videoPath;

  const blocks(this.text, this.videoPath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: VideoContainer(videoPath: videoPath),
    );
  }
}

class VideoContainer extends StatefulWidget {
  final String videoPath;

  const VideoContainer({Key? key, required this.videoPath}) : super(key: key);

  @override
  _VideoContainerState createState() => _VideoContainerState();
}

class _VideoContainerState extends State<VideoContainer> {
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

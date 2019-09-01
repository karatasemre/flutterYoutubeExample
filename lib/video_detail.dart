import 'package:flutter/material.dart';
import 'package:flutter_youtube_example/counterdown.dart';
import 'package:youtube_player/youtube_player.dart';

class VideoDetail extends StatefulWidget {
  @override
  _VideoDetailState createState() => _VideoDetailState();
}

class _VideoDetailState extends State<VideoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Detail"),
      ),
      body: Column(
        children: <Widget>[
          YoutubePlayer(
            context: context,
            source: "EI0NG28dXko",
            quality: YoutubeQuality.HD,
            aspectRatio: 16 / 9,
          ),

          Container(
            width: 60.0,
            padding: EdgeInsets.only(top: 3.0, right: 4.0),
            child: CountDownTimer(
              secondsRemaining: 30,
              whenTimeExpires: () {
                setState(() {
                  //hasTimerStopped = true;
                });
              },
              countDownTimerStyle: TextStyle(
                  color: Color(0XFFf5a623),
                  fontSize: 17.0,
                  height: 1.2),
            ),
          )
        ],
      ),
    );
  }
}

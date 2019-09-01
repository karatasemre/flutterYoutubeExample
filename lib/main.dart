import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_youtube_example/video_detail.dart';
import 'package:youtube_player/youtube_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Youtube Player Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const platform = const MethodChannel("np.com.sarbagyastha.example");
  TextEditingController _idController = TextEditingController();
  TextEditingController _seekToController = TextEditingController();
  double _volume = 1.0;
  String position = "Get Current Position";
  String status = "Get Player Status";
  String videoDuration = "Get Video Duration";
  String _source = "7QUtEmBT_-w";
  bool isMute = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, position) {
          return InkWell(
            onTap: (){
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => VideoDetail()),
               );
            },
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Image.network(
                  'https://img.youtube.com/vi/EI0NG28dXko/sddefault.jpg',
                ),
                Icon(Icons.play_circle_outline, color: Colors.red, size: 80,),
              ],
            ),
          );
        },
      ),
//      body: SingleChildScrollView(
//        child: RaisedButton(
//          child: Text("Next Page"),
//          onPressed: () {
//            Navigator.of(context).push(
//              MaterialPageRoute(builder: (context) => VideoDetail()),
//            );
//          },
//        ),
//      ),
    );
  }
}


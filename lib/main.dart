import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:cool_alert/cool_alert.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded sound(Color a, int b, Color b1, Color c, String note) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [a, b1, c]),
        ),
//        color: a,
        child: FlatButton(
            onPressed: () {
              playSound(b);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  note,
                  style: TextStyle(
                    fontSize: 21.0,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: SafeArea(
          child: Drawer(
            child: Container(
              color: Colors.blueGrey.shade800,
              child: Column(
                children: <Widget>[
                  Container(
                    child: DrawerHeader(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/03.png'),
                              radius: 45.0,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 18.0, 0.0, 10.0),
                                child: Container(
                                  child: Text(
                                    'Xyloo',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 0.0),
                                child: Container(
                                  child: Text(
                                    'Xylophone',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        
                      });
                    },
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 0.0),
                        child: Text(
                          'About',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        'Version: 1.0',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      leading: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 8.0),
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Xyloo',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                sound(Color(0xffFF416C), 1, Color(0xffFF416C),
                    Color(0xffFF4B2B), "C - DO"),
                sound(Color(0xfff7b733), 2, Color(0xfff7b733),
                    Color(0xfffc4a1a), "D - RE"),
                sound(Color(0xffF3F9A7), 3, Color(0xffFFCD02),
                    Color(0xffFFA800), "E - MI"),
                sound(Color(0xff78ffd6), 4, Color(0xff78ffd6),
                    Color(0xffa8e063), "F - FA"),
                sound(Color(0xff11FFBD), 5, Color(0xff38ef7d),
                    Color(0xff11998e), "G - SO"),
                sound(Color(0xff56CCF2), 6, Color(0xff56CCF2),
                    Color(0xff2F80ED), "A - LA"),
                sound(Color(0xffDA22FF), 7, Color(0xffDA22FF),
                    Color(0xff9733EE), "B - TI"),
                sound(Color(0xff8E2DE2), 8, Color(0xff8E2DE2),
                    Color(0xff4A00E0), "C - DO"),
              ]),
        ),
      ),
    );
  }
}

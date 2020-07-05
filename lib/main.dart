import 'package:flutter/material.dart';
import 'package:youtubecopy/videopage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            leading: Icon(Icons.access_alarm),
            title: const Text("youtubeアプり"),
            actions:<Widget>[
                  SizedBox(
                    width:50,
                  child:FlatButton(
                    child: Icon(Icons.all_out),
                    onPressed: (){
                      //todo
                    },
                  ),
                  ),
                  SizedBox(
                    width:50,
                  child:FlatButton(
                    child: Icon(Icons.account_box),
                    onPressed: (){
                      //todo
                    },
                  ),
                  ),
                ],
          ),
          body: Container(
            child:  Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(
                          Icons.access_alarms),
                    ),
                    Column(
                      children: <Widget>[
                        Text("アカウント名"),
                        FlatButton(
                          child: RaisedButton(
                            color: Colors.blue,
                            child: Text(
                                "登録ボタン",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                            ),
                            onPressed: (){
                              //todo
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () async{
                      //todo
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VideoPage()),
                      );
                    },
                    contentPadding: EdgeInsets.all(6),//左につめる？
                    leading: Icon(Icons.all_out),
                    title: Column(
                      children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Text(
                        'YOUTUBE動画',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )],

                    ),
                        Row(
                          children: <Widget>[
                            Text(
                                "３１回再生",
                            style: TextStyle(fontSize: 11),),
                            Text("２１秒前",
                              style: TextStyle(fontSize: 11),),
                          ],
                        ),
                      ],
                    ),

                    trailing: Icon(Icons.more_vert),
                  );
                },
              ),
          ),
              ],
            ),
          ),
        ),
    );
  }
}




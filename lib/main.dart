import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SLOTH HEALTH',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'SLOTH HEALTH 体調管理代行サービス'),
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

  void _judge() {
    if (_health > 3) {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: Text("危険"),
            actions: <Widget>[
              // ボタン領域
              FlatButton(
                child: Text("OK"),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        },
      );
    } else if (_health > 0) {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: Text("注意"),
            actions: <Widget>[
              // ボタン領域
              FlatButton(
                child: Text("OK"),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        },
      );
    }else if (_health == 0){
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: Text("大丈夫"),
            actions: <Widget>[
              // ボタン領域
              FlatButton(
                child: Text("OK"),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        },
      );
    }
  }
  int _value1 = 1;
  int _value2 = 1;
  int _value3 = 1;
  int _value4 = 1;
  int _value5 = 1;
  int _value6 = 1;
  int _value7 = 1;
  int _health = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '寝つきはよかったですか？',
            ),
            DropdownButton(
                value: _value1,
                items: [
                  DropdownMenuItem(
                    child: Text("未選択"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("○"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                      child: Text("✖"),
                      value: 3
                  ),
                  DropdownMenuItem(
                      child: Text("？"),
                      value: 4
                  )
                ],
                onTap: () {
                  if (_value1==3){
                    _health++;
                  }else if (_value1 == 4) {
                    _health = _health + 2;
                  }else {
                    _health = _health;
                  }
                },
                onChanged: (value) {
                  setState(() {
                    _value1 = value;
                  });
                }),
            Text(
              '寝起きはよかったですか？',
            ),
            DropdownButton(
                value: _value2,
                items: [
                  DropdownMenuItem(
                    child: Text("未選択"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("○"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                      child: Text("✖"),
                      value: 3
                  ),
                  DropdownMenuItem(
                      child: Text("？"),
                      value: 4
                  )
                ],
                onTap: () {
                  if (_value2==3){
                    _health++;
                  }else if (_value2 == 4) {
                    _health = _health + 2;
                  }else {
                    _health = _health;
                  }
                },
                onChanged: (value) {
                  setState(() {
                    _value2 = value;
                  });
                }),
            Text(
              '睡眠の質はよかったですか？',
            ),
            DropdownButton(
                value: _value3,
                items: [
                  DropdownMenuItem(
                    child: Text("未選択"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("○"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                      child: Text("✖"),
                      value: 3
                  ),
                  DropdownMenuItem(
                      child: Text("？"),
                      value: 4
                  )
                ],
                onTap: () {
                  if (_value3==3){
                    _health++;
                  }else if (_value3 == 4) {
                    _health = _health + 2;
                  }else {
                    _health = _health;
                  }
                },
                onChanged: (value) {
                  setState(() {
                    _value3 = value;
                  });
                }),
            Text(
              '心は安定してますか？',
            ),
            DropdownButton(
                value: _value4,
                items: [
                  DropdownMenuItem(
                    child: Text("未選択"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("○"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                      child: Text("✖"),
                      value: 3
                  ),
                  DropdownMenuItem(
                      child: Text("？"),
                      value: 4
                  )
                ],
                onTap: () {
                  if (_value4==3){
                    _health++;
                  }else if (_value4 == 4) {
                    _health = _health + 2;
                  }else {
                    _health = _health;
                  }
                },
                onChanged: (value) {
                  setState(() {
                    _value4 = value;
                  });
                }),
            Text(
              '食欲はありますか？',
            ),
            DropdownButton(
                value: _value5,
                items: [
                  DropdownMenuItem(
                    child: Text("未選択"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("○"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                      child: Text("✖"),
                      value: 3
                  ),
                  DropdownMenuItem(
                      child: Text("？"),
                      value: 4
                  )
                ],
                onTap: () {
                  if (_value5==3){
                    _health++;
                  }else if (_value5 == 4) {
                    _health = _health + 2;
                  }else {
                    _health = _health;
                  }
                },
                onChanged: (value) {
                  setState(() {
                    _value5 = value;
                  });
                }),
            Text(
              '気力はありますか？',
            ),
            DropdownButton(
                value: _value6,
                items: [
                  DropdownMenuItem(
                    child: Text("未選択"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("○"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                      child: Text("✖"),
                      value: 3
                  ),
                  DropdownMenuItem(
                      child: Text("？"),
                      value: 4
                  )
                ],
                onTap: () {
                  if (_value6==3){
                    _health++;
                  }else if (_value6 == 4) {
                    _health = _health + 2;
                  }else {
                    _health = _health;
                  }
                },
                onChanged: (value) {
                  setState(() {
                    _value6 = value;
                  });
                }),
            Text(
              '体調は良いと感じますか？',
            ),
            DropdownButton(
                value: _value7,
                items: [
                  DropdownMenuItem(
                    child: Text("未選択"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("○"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                      child: Text("✖"),
                      value: 3
                  ),
                  DropdownMenuItem(
                      child: Text("？"),
                      value: 4
                  )
                ],
                onTap: () {
                  if (_value7==3){
                    _health++;
                  }else if (_value7 == 4) {
                    _health = _health + 2;
                  }else {
                    _health = _health;
                  }
                },
                onChanged: (value) {
                  setState(() {
                    _value7 = value;
                  });
                }),
            RaisedButton(
              child: Text("決定"),
              onPressed: () {
                _judge();
              },
            )
          ],
        ),
      ),
    );
  }
}

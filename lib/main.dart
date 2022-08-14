import 'package:flutter/material.dart';

void main() {
  runApp(uygulamam());
}

class uygulamam extends StatelessWidget {
  const uygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
          'Onlinebutton ve RotatedBox Kullanımı',
           ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: iskelet(),
    ));
  }
}

class iskelet extends StatefulWidget {
  const iskelet({Key? key}) : super(key: key);

  @override
  State<iskelet> createState() => _iskeletState();
}

class _iskeletState extends State<iskelet> {
  int boy = 150;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top:100.0),
          decoration: BoxDecoration(
              color: Colors.pink, borderRadius: BorderRadius.circular(10.0)),
          child: Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 20.0,
                ),
                RotatedBox(
                  quarterTurns: -1,
                  child: Text(
                    'BOY',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                RotatedBox(
                  quarterTurns: -1,
                  child: Text(
                    boy.toString(),
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                buildColumnum(),
              ],
            ),
          ),
        )
      ],
    );
  }

  Column buildColumnum() {
    return Column(
                  mainAxisSize:MainAxisSize.min,
                  children: [
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      boy++;
                    });
                  },
                  child: Icon(
                    Icons.add,
                    size: 30.0,color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      boy--;
                    });
                  },
                  child: Icon(
                    Icons.remove,
                    size: 30.0,color:Colors.white
                  ),
                ),
              ]);
  }
}

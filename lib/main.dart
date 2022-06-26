import 'package:flutter/material.dart';
import 'data/data.dart';
import 'screens/infoScreen.dart';
import 'screens/screenArguments.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => _HomePage(),
        '/info': (context) => InfoScreen(),
      },
      initialRoute: '/',
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => ListItem(index, context))),
    );
  }

  Padding ListItem(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ListTile(
        leading: Image.network(data[index]["img"]),
        title: Text(data[index]["firstName"] + " " + data[index]["lastName"]),
        trailing: Icon(Icons.arrow_right_outlined),
        shape: Border.all(width: 1, color: Colors.black12),
        onTap: () {
          Navigator.pushNamed(
            context,
            "/info",
            arguments: ScreenArguments(
              data[index]["img"],
              data[index]["firstName"] + " " + data[index]["lastName"],
              data[index]["mass"],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'screenArguments.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(child: Container()),
            Image.network(args.avatar.toString()),
            SizedBox(
              height: 20,
            ),
            Text(args.name.toString()),
            Divider(
              color: Colors.blue,
              indent: 50,
              endIndent: 50,
              thickness: 3,
            ),
            Text(
              args.massage.toString(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

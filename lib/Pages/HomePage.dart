// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:MainAPP/Widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar!"),
      ),
      body: Center(
        child: Container(
          child: Text("hiiiii!"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

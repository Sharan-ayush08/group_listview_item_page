import 'package:flutter/material.dart';
import 'package:group_listview_item_page/screens/group_list.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewGroupItem();
  }
}

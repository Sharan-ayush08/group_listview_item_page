import 'package:flutter/material.dart';

class MenuDialog extends StatefulWidget {
  const MenuDialog({Key? key}) : super(key: key);

  @override
  _MenuDialogState createState() => _MenuDialogState();
}

class _MenuDialogState extends State<MenuDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Divider(
              height: 2,
              thickness: 2,
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Text("Edit Group"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Text("Create New Group"),
            trailing: Icon(Icons.add),
          ),
          TextButton(onPressed: () {}, child: Text("Delete Group"))
        ],
      ),
    );
  }
}

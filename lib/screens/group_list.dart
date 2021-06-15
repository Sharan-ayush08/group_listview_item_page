import 'package:flutter/material.dart';
import 'package:group_listview_item_page/screens/popup_dialogs/menu_dialog.dart';

class ViewGroupItem extends StatelessWidget {
  const ViewGroupItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Details"),
      ),
      body: Card(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Group Details"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Member Count"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              onTap: () {
                _openGroupMenu(context);
              },
              title: Text(
                "Group Menu",
              ),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("View On Tap"),
              trailing: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }

  _openGroupMenu(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 16,
            child: Container(
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        "Group Menu",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blueGrey[800],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  MenuDialog(),
                ],
              ),
            ),
          );
        });
  }
}

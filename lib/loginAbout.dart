import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddAboutDialog extends StatefulWidget {
  // BuildContext context;
  // AddAboutDialog(this.context);

  @override
  _AddAboutDialogState createState() => _AddAboutDialogState();
}

class _AddAboutDialogState extends State<AddAboutDialog> {
  TextEditingController aboutctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFB0F3F1), Color(0xFFFFCFDF)]),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: aboutctrl,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'About',
                  labelStyle: TextStyle(color: Colors.black),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(color: Colors.black, width: 5.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel'),
                  textColor: Colors.white,
                ),
                SizedBox(
                  width: 8,
                ),
                RaisedButton(
                  onPressed: () {
                    // _uploadtodb();
                  },
                  child: Text('Save'),
                  color: Colors.white,
                  textColor: Colors.redAccent,
                )
              ],
            )
          ],
        ),
      );
}

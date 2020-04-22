import 'package:flutter/material.dart';
import 'package:serb/components/Button.dart';

class AddMultipleBooksFromXLSX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Make sure that your xlsx matches this schema"
        ),
        Column(
          children: <Widget>[
            Text(
              "Title"
            ),
            Text(
                "Author"
            ),
            Text(
                "ISBN"
            ),
            Text(
                "Comma separated categories"
            ),
            Text(
                "link to the cover photo"
            ),
          ],
        ),
        SERBButton(
          onTap: (){
            //TODO upload file
          },
          text: "Upload",
        )
      ],
    );
  }
}

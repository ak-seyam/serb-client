import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serb/model/page_index_model.dart';
import 'package:serb/screens/add_book.dart';
class AddBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PageIndexModel>(
        create: (context) => PageIndexModel(), child: AddBookWithoutProvider());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:serb/components/Dialog.dart';
import 'package:serb/components/composets/add_book_form.dart';
import 'package:serb/components/composets/add_multiple_books.dart';
import 'package:serb/components/composets/best_matches.dart';
import 'package:serb/components/title_bar.dart';
import 'package:serb/model/page_index_model.dart';
import '../model/Book.dart';

class AddBook extends StatefulWidget {
  @override
  _AddBookState createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  Widget addSingleBook, addMultipleBooks;

  @override
  void initState() {
    addSingleBook = SERBDialog(
      child: AddBookForm(),
    );
    addMultipleBooks = SERBDialog(
      child: AddMultipleBooksFromXLSX(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Book>(
          create: (context) => Book(),
        ),
      ],
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TitleBar(title: "Add book",tabs: ["Add book","XLSX"],),
            Expanded(
              child: PageView(
                controller: Provider.of<PageIndexModel>(context,listen: false).pageViewController,
                children: <Widget>[
                  addSingleBook,
                  addMultipleBooks
                ],
                onPageChanged: (index){
                  print("new index= $index" );
                  Provider.of<PageIndexModel>(context,listen: false).index = index;
                },
              ),
            ),
            BestMatches()
          ],
        ),
      ),
    );
  }
}

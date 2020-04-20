import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:serb/components/SERBInputDecorationUnderlineDark.dart';
import 'package:serb/components/composets/login_from.dart';
import 'package:serb/misc/constants.dart';
import 'package:serb/screens/login_screen.dart';
import '../misc/LogoDark.dart';

class SERBScaffold extends StatefulWidget {
  final Map<String, Widget> tabs;

  SERBScaffold({@required this.tabs});

  @override
  _SERBScaffoldState createState() => _SERBScaffoldState();
}

class _SERBScaffoldState extends State<SERBScaffold> {
  final pageViewController = PageController(
    initialPage: 0,
  );
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    var pageView = PageView(
      controller: pageViewController,
      children: widget.tabs.values.toList(),
      onPageChanged: (index) {
        _index = index;
        setState(() {});
      },
    );
    return Material(
      child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [LIGHT_BLUE, GREEN])),
                child: SafeArea(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  child: Align(
                                alignment: Alignment.topLeft,
                                child: LogoDark(),
                              )),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => LoginScreen()));
                                },
                                  child:
                                      Icon(Icons.account_circle, color: WHITE))
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          TextField(
                            style: TextStyle(color: WHITE),
                            decoration: SERBInputDecorationUnderline(),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                GestureDetector(
                                    onTap: () {
                                      _index = 0;
                                      pageViewController.jumpToPage(0);
                                      setState(() {});
                                    },
                                    child: _SERBTab(
                                        title: "Newest",
                                        selected: _index == 0)),
                                GestureDetector(
                                  onTap: () {
                                    _index = 1;
                                    pageViewController.jumpToPage(1);
                                    setState(() {});
                                  },
                                  child: _SERBTab(
                                    title: "Pobular",
                                    selected: _index == 1,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: pageView,
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(color: LIGHT_BLUE),
              )
            ],
          )),
    );
  }
}

class _SERBTab extends StatelessWidget {
  final String title;
  final selected;
  final numberOfTabs;

  _SERBTab(
      {@required this.title,
      @required this.selected,
      @required this.numberOfTabs});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: selected ? WHITE : Colors.transparent),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: selected ? GREEN : WHITE),
          ),
        ),
      ),
    );
  }
}

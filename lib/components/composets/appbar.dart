import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:serb/components/SERBInputDecorationUnderlineDark.dart';
import 'package:serb/misc/constants.dart';
import '../../misc/LogoDark.dart';

SERBAppBar(List<String>tabNames, int selectedTabIndex) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          LIGHT_BLUE,
          GREEN
        ]
      )
    ),
    child: SafeArea(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,16.0),
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
                  Icon(Icons.account_circle, color: WHITE)
                ],
              ),
              SizedBox(height: 8.0,),
              TextField(
                style: TextStyle(color: WHITE),
                decoration: SERBInputDecorationUnderline(),
              ),
           Tabs(names: tabNames,selectedTabIndex: selectedTabIndex,) ],
          )),
    ),
  );
}

class Tabs extends StatefulWidget {
  final List<String> names;
  final selectedTabIndex;
  Tabs({this.names, this.selectedTabIndex});

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  final _globalKey = GlobalKey();
  double width;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(_getSizes);
    super.initState();
  }
  _getSizes(_){
    RenderBox renderBox = _globalKey.currentContext.findRenderObject();
    final size = renderBox.size;
    width = size.width;
    print("size does matter and it's $size and width $width");
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      key: _globalKey,
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: widget.names.length,
          itemBuilder: (context, index) {
            if (index == widget.selectedTabIndex) {
              return _SERBTab(title: widget.names[index], selected: true,numberOfTabs : widget.names.length, width: width,);
            }
            return _SERBTab(title: widget.names[index], selected: false, numberOfTabs: widget.names.length, width: width,);
          }),
    );
  }
}

class _SERBTab extends StatelessWidget {
  final String title;
  final selected;
  final numberOfTabs;
  final double width;
  _SERBTab({@required this.width,@required this.title, @required this.selected, @required this.numberOfTabs});

  @override
  Widget build(BuildContext context) {
    return Container(
//      width: MediaQuery.of(context).size.width * 1/numberOfTabs,
      width: width * 1/numberOfTabs,
      decoration: BoxDecoration(color: selected ? WHITE : Colors.transparent),
      child: Text(
        title,
        style: TextStyle(color: selected ? GREEN: WHITE),
      ),
    );
  }
}

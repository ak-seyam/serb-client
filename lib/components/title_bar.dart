import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:serb/components/SERBTab.dart';
import 'package:serb/misc/constants.dart';
import 'package:serb/model/page_index_model.dart';

class TitleBar<T> extends StatelessWidget {
  final String title;
  final List<String> tabs;

  TitleBar({@required this.title, this.tabs = const []});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0)),
        gradient: LinearGradient(
            colors: [DARK_BLUE, PINK],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft),
      ),
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(tabs.isNotEmpty ?16 : 28, 20, 12, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontSize: 28, color: WHITE),
              ),
              (tabs.isNotEmpty)?Container(
                height: 45,
                child: Align(
                  alignment: Alignment.center,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Provider.of<PageIndexModel>(context).jumpToPage(index);
                        },
                        child: SERBTab(
                            textColor: PINK,
                            title: tabs[index],
                            selected:
                                Provider.of<PageIndexModel>(context).index ==
                                    index),
                      );
                    },
                  ),
                ),
              ):Container()
            ],
          ),
        ),
      ),
    );
  }
}

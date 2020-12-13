import 'package:flutter/material.dart';
import 'package:furaha_application/tools/content_info.dart';
import 'package:furaha_application/tools/tab_indicator.dart';
import 'package:furaha_application/variables.dart';

class SelectedReadingScreen extends StatelessWidget {
  final PopularBookModel popularBookModel;

  SelectedReadingScreen({Key key, @required this.popularBookModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.popularBookModel.title)),
      body: SafeArea(
        child: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: kBlueColor,
                expandedHeight: MediaQuery.of(context).size.height * 0.5,
                flexibleSpace: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  // color: Color(popularBookModel.color),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 17,
                        top: 20,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 35,
                            height: 34,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: kWhiteColor),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 60),
                          width: 230,
                          height: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(popularBookModel.image),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 24, left: 26),
                  child: Text(
                    this.popularBookModel.title,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 26),
                  child: Text(
                    this.popularBookModel.author,
                    style: TextStyle(fontSize: 18.0, color: kGreyColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 26),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Ksh ',
                        style: TextStyle(color: kOrangeColor, fontSize: 15.0),
                      ),
                      Text(
                        this.popularBookModel.price,
                        style: TextStyle(color: kOrangeColor, fontSize: 15.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 27,
                  margin: EdgeInsets.only(top: 27, bottom: 35),
                  padding: EdgeInsets.only(left: 26),
                  child: DefaultTabController(
                    length: 3,
                    child: TabBar(
                        labelPadding: EdgeInsets.all(0),
                        indicatorPadding: EdgeInsets.all(0),
                        isScrollable: true,
                        labelColor: kTitleTextColor,
                        unselectedLabelColor: kSearchTextColor,
                        indicator: RoundedRectangleTabIndicator(
                          width: 30,
                          weight: 2,
                          color: kBlueColor,
                        ),
                        tabs: [
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 39.0),
                              child: Text('Description'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 39.0),
                              child: Text('Reviews'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 39.0),
                              child: Text('Similar Content'),
                            ),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                  child: Text(
                    this.popularBookModel.description,
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ]))
            ],
          ),
        ),
      ),
    );
  }
}

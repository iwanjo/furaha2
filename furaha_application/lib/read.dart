import 'package:flutter/material.dart';
import 'package:furaha_application/reading_screen.dart';
import 'package:furaha_application/tools/content_info.dart';
import 'package:furaha_application/tools/reading_content.dart';
import 'package:furaha_application/tools/tab_indicator.dart';
import 'package:furaha_application/variables.dart';

class ReadScreen extends StatefulWidget {
  @override
  _ReadScreenState createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen> {
  @override
  Widget build(BuildContext context) {
    final searchBackground = Image.asset(
      'assets/square.png',
      fit: BoxFit.fill,
      height: 38.0,
      width: 38.0,
    );

    return Scaffold(
      appBar: AppBar(title: Text("Read Our Content")),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.book_online),
            label: 'Book a Session',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.book),
            label: 'Read our content',
          ),
        ],
      ),
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: 30.0, top: 30.0, right: 20.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Welcome to our Readings Section',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: kTitleTextColor),
                  ),
                ],
              ),
            ),
            Container(
              height: 40.0,
              margin: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: kSearchBackgroundColor,
              ),
              child: Stack(
                children: <Widget>[
                  TextField(
                    maxLengthEnforced: true,
                    style: TextStyle(fontSize: 14.0),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15, bottom: 10),
                      border: InputBorder.none,
                      hintText: 'Search our collection of self-help material',
                      hintStyle: TextStyle(
                          color: kSearchTextColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    right: 2,
                    top: 0,
                    child: searchBackground,
                  ),
                  Positioned(
                    right: 8,
                    top: 7,
                    child: Icon(Icons.search),
                  ),
                ],
              ),
            ),
            Container(
              height: 28.0,
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.only(left: 38.0),
              child: DefaultTabController(
                length: 4,
                child: TabBar(
                    labelPadding: EdgeInsets.all(0),
                    indicatorPadding: EdgeInsets.all(0),
                    isScrollable: true,
                    labelColor: kTitleTextColor,
                    unselectedLabelColor: kSearchTextColor,
                    indicator: RoundedRectangleTabIndicator(
                      width: 28,
                      weight: 2,
                      color: kBlueColor,
                    ),
                    tabs: [
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 20.0),
                          child: Text('The Pandemic'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 20.0),
                          child: Text('Stress'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 20.0),
                          child: Text('Depression'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 20.0),
                          child: Text('Anxiety'),
                        ),
                      ),
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0),
              height: 230,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 25.0, right: 6),
                  itemCount: newbooks.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectedReadingScreen(
                                    popularBookModel: populars[index],
                                  )),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 23.0),
                        height: 210,
                        width: 155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kTitleTextColor,
                          image: DecorationImage(
                            image: AssetImage(newbooks[index].image),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 30.0, top: 40.0, right: 20.0, bottom: 20.0),
              child: Text(
                'Most Viewed Content',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: kTitleTextColor),
              ),
            ),
            ListView.builder(
                padding: EdgeInsets.only(top: 28, left: 25, right: 25),
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: populars.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectedReadingScreen(
                                  popularBookModel: populars[index],
                                )),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 21.0),
                      height: 86,
                      width: MediaQuery.of(context).size.width - 50,
                      color: kBackgroundColor,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 131,
                            width: 71,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                image: DecorationImage(
                                    image: AssetImage(populars[index].image)),
                                color: kBackgroundColor),
                          ),
                          SizedBox(
                            width: 23,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(populars[index].title),
                              SizedBox(
                                height: 5,
                              ),
                              Text(populars[index].author),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/constants/dimens.dart';
import 'package:ui/constants/strings.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              buildYourStory(),
              buildBuildDiscoverCreators(),
              buildStories(Colors.lightBlue, 'jonasnaah'),
              buildStories(Colors.deepPurpleAccent, 'tweetasm'),
              buildStories(Colors.deepPurpleAccent, 'jonasnaah'),
              buildStories(Colors.deepPurpleAccent, 'tweetasm'),
              buildStories(Colors.deepPurpleAccent, 'jonasnaah'),
              buildStories(Colors.deepPurpleAccent, 'tweetasm'),
            ],
          ),
        ),
        SizedBox(
          height: sixteenDp,
        ),
        buildContent()
      ],
    );
  }

  Widget buildYourStory() {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: sixteenDp, left: sixteenDp, right: tenDp),
              height: hundredDp,
              width: hundredDp,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(thirtySixDp),
              ),
            ),
            Positioned(
              top: eightyDp,
              left: ninetyDp,
              child: Container(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                height: thirtySixDp,
                width: thirtySixDp,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(twentyDp)),
              ),
            ),
          ],
        ),
        Text(yourStory),
      ],
    );
  }

  Widget buildBuildDiscoverCreators() {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 30,
                right: sixteenDp,
                left: tenDp,
              ),
              height: eightyDp,
              width: eightyDp,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(thirtyDp),
              ),
            ),
            Positioned(
              top: twentyDp,
              child: Container(
                height: thirtyDp,
                width: thirtyDp,
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(twentyDp)),
              ),
            ),
            Positioned(
              top: eightyDp,
              left: seventyDp,
              child: Container(
                height: thirtyDp,
                width: thirtyDp,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(twentyDp)),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(discoverCreators),
        ),
      ],
    );
  }

  Widget buildStories(Color color, name) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: sixteenDp, right: tenDp),
          height: hundredDp,
          width: hundredDp,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(thirtySixDp),
          ),
        ),
        Text(name),
      ],
    );
  }

  //contains user name , images and menus
  Widget buildContent() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: eightyDp,
                  width: hundredDp,
                  child: Stack(
                    children: [
                      buildUserImage('assets/images/a.jpg'),
                      Positioned(
                        child: buildUserImage('assets/images/b.jpg'),
                        top: sixteenDp,
                        left: thirtyDp,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '@redbullracing',
                      style: TextStyle(
                          fontSize: twentyDp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: eightDp,
                    ),
                    Text.rich(
                      TextSpan(
                        style: TextStyle(fontSize: eighteenDp),
                        text: ownedBy,
                        children: [
                          TextSpan(
                              text: ' @abcd',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              margin:
              EdgeInsets.symmetric(vertical: twentyDp, horizontal: tenDp),
              child: Row(
                children: [
                  Container(
                    height: thirtyDp,
                    width: thirtyDp,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/pin.png',
                          ),
                        )),
                  ),
                  Container(
                    height: thirtyDp,
                    width: thirtyDp,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(
                        'assets/images/menu.png',
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
        //image of content todo --
        Container(
          height: 270,
          child: Stack(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/b.jpg',
                  height: twoFiftyDp,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              PositionedDirectional(
                start: hundredDp,
                end: hundredDp,
                top: 230,
                child: Container(
                  //margin: EdgeInsets.symmetric(horizontal: 100),
                  height: fortyDp, width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white.withOpacity(0.5),
                            Colors.white
                          ]),
                      borderRadius: BorderRadius.circular(thirtyTwoDp)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //todo -- not dynamic
                      buildImage(),
                      buildImage(),
                      buildImage(),
                      buildImage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildImage() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: eightDp),
      child: CircleAvatar(
        radius: 14,
        backgroundImage: AssetImage('assets/images/a.jpg'),
      ),
    );
  }

  Widget buildUserImage(image) {
    return Container(
      margin: EdgeInsets.only(left: eightDp),
      width: sixtyDp,
      height: sixtyDp,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white, width: 3),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('$image'),
          )),
    );
  }
}

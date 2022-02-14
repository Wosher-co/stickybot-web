import 'package:flutter/material.dart';
import 'package:stickybotweb/consts.dart';
import 'package:stickybotweb/widget/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widget/animated_gradient.dart';

class ScreenPage extends StatefulWidget {
  String description;
  ScreenPage({Key? key, required this.description}) : super(key: key);

  @override
  State<ScreenPage> createState() => _ScreenPageState(description);
}

class _ScreenPageState extends State<ScreenPage> with TickerProviderStateMixin {
  _ScreenPageState(this.description);

  String description;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(children: [
        AnimatedGradient(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: PreferredSize(
            preferredSize: Size(screenSize.width, 1000),
            child: Column(
              children: [
                SizedBox(
                  height: screenSize.height / 11,
                ),
                Text(
                  'StickyBot',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                ),
                SizedBox(
                  height: screenSize.height * 0.06,
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                ),
                SizedBox(
                  height: screenSize.height * 0.1,
                ),
                button(),
              ],
            ),
          ),
          bottomNavigationBar: downBar(),
        ),
      ]),
    );
  }

  Widget button() {
    var screenSize = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: Responsive.isDesktop(context)
            ? screenSize.width * 0.135
            : Responsive.isMobile(context)
                ? screenSize.width * 0.5
                : screenSize.width * 0.3,
        height: screenSize.height * 0.07,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            elevation: 45,
            primary: Constants.buttonColor,
          ),
          child: const Text(
            'ADD',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget itemSocialNetwork(
      {String image = '', String name = '', String link = ''}) {
    return InkWell(
      onTap: () => launch(link),
      child: Row(
        children: [
          SvgPicture.asset(
            image,
            color: Colors.white,
            width: 37,
            height: 40,
          )
        ],
      ),
    );
  }

  Widget separator() {
    var screenSize = MediaQuery.of(context).size;

    return Row(
      children: [
        SizedBox(
          width: screenSize.width * 0.01,
        ),
        Text(
          '·',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: screenSize.width * 0.006,
        ),
      ],
    );
  }

  Widget downBar() {
    var screenSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: screenSize.width * 0.01,
              ),
              itemSocialNetwork(
                  image: 'assets/instagram.svg',
                  name: '@woshergroup',
                  link: 'https://www.instagram.com/woshergroup/'),
              separator(),
              itemSocialNetwork(
                  image: 'assets/twitter.svg',
                  name: '@TeamWosher',
                  link: 'https://twitter.com/TeamWosher'),
              separator(),
              itemSocialNetwork(
                  image: 'assets/youtube.svg',
                  name: 'Wosher Group',
                  link:
                      'https://www.youtube.com/channel/UCX0YeP722Jv1qfYhzeYs_4A'),
              separator(),
              itemSocialNetwork(
                  image: 'assets/tiktok.svg',
                  name: '@woshergroup',
                  link: 'https://www.tiktok.com/@woshergroup'),
              SizedBox(
                width: screenSize.width * 0.01,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

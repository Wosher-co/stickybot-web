import 'package:flutter/material.dart';
import 'package:stickybotweb/consts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widget/animated_gradient.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(children: [
      AnimatedGradient(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: PreferredSize(
          preferredSize: Size(screenSize.width, 1000),
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height / 7,
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
                'Description. El mejor bot de todo el mundo chavalesssssssss',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: screenSize.height * 0.2,
              ),
              button(),
            ],
          ),
        ),
        bottomNavigationBar: downBar(),
      ),
    ]);
  }

  Widget button() {
    var screenSize = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: screenSize.width * 0.135,
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
              fontSize: 14,
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
          Image.asset(
            image,
            // width: screenSize.width * 0.02,
            // height: screenSize.height * 0.04,
            width: 37,
            height: 40,
          ),
        ],
      ),
    );
  }

  Widget separator() {
    var screenSize = MediaQuery.of(context).size;

    return Row(
      children: [
        SizedBox(
          width: screenSize.width * 0.004,
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
          width: screenSize.width * 0.004,
        ),
      ],
    );
  }

  Widget downBar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(12), topLeft: Radius.circular(12)),
        color: Colors.black45,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          itemSocialNetwork(
              image: 'assets/instagram.png',
              name: '@woshergroup',
              link: 'https://www.instagram.com/woshergroup/'),
          separator(),
          itemSocialNetwork(
              image: 'assets/twitter.png',
              name: '@TeamWosher',
              link: 'https://twitter.com/TeamWosher'),
          separator(),
          itemSocialNetwork(
              image: 'assets/facebook.png',
              name: '@TeamWosher',
              link: 'https://twitter.com/TeamWosher'),
          separator(),
          itemSocialNetwork(
              image: 'assets/linkedin.png',
              name: 'Wosher Group',
              link: 'https://www.linkedin.com/in/wosher-group-4a760622b/'),
          separator(),
          itemSocialNetwork(
              image: 'assets/youtube.png',
              name: 'Wosher Group',
              link: 'https://www.youtube.com/channel/UCX0YeP722Jv1qfYhzeYs_4A'),
          separator(),
          itemSocialNetwork(
              image: 'assets/tiktok.png',
              name: '@woshergroup',
              link: 'https://www.tiktok.com/@woshergroup'),
        ],
      ),
    );
  }
}

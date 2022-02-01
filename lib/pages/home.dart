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
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          const AnimatedGradient(),
          Column(
            children: [
              SizedBox(
                height: height * 0.09,
              ),
              Text(
                'StickyBot',
                style: TextStyle(
                    fontSize: 40,
                    color: Constants.whatsappColor,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Text(
                'Description. El mejor bot de todo el mundo chavalesssssssss',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Constants.whatsappColor,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: height * 0.2,
              ),
              button(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                itemSocialNetwork(
                    image: 'assets/instagram.png',
                    name: '@woshergroup',
                    link: 'https://www.instagram.com/woshergroup/'),
                itemSocialNetwork(
                    image: 'assets/twitter.png',
                    name: '@TeamWosher',
                    link: 'https://twitter.com/TeamWosher'),
                itemSocialNetwork(
                    image: 'assets/facebook.png',
                    name: '@TeamWosher',
                    link: 'https://twitter.com/TeamWosher'),
                itemSocialNetwork(
                    image: 'assets/linkedin.png',
                    name: 'Wosher Group',
                    link:
                        'https://www.linkedin.com/in/wosher-group-4a760622b/'),
                itemSocialNetwork(
                    image: 'assets/youtube.png',
                    name: 'Wosher Group',
                    link:
                        'https://www.youtube.com/channel/UCX0YeP722Jv1qfYhzeYs_4A'),
                itemSocialNetwork(
                    image: 'assets/tiktok.png',
                    name: '@woshergroup',
                    link: 'https://www.tiktok.com/@woshergroup'),
              ],
            ),
          )),
    );
  }

  Widget button() {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        width: widht * 0.156,
        height: height * 0.099,
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
              fontSize: 22,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget itemSocialNetwork(
      {String image = '', String name = '', String link = ''}) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Image.asset(
          image,
          width: 40,
        ),
        SizedBox(
          width: width * 0.005,
        ),
        InkWell(
            child: Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onTap: () => launch(link)),
        SizedBox(
          width: width * 0.015,
        )
      ],
    );
  }
}

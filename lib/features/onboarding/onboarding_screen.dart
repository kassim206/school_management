import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../auth/screen/login_page.dart';


class IndroScreen extends StatefulWidget {
  const IndroScreen({super.key});

  @override
  State<IndroScreen> createState() => _IndroScreenState();
}

class _IndroScreenState extends State<IndroScreen> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Image.asset(
            'assets/img/education-search.png',
            fit: BoxFit.cover,
            width: 300,
          ),
        ),
        title: 'Wallet',
        body:
        'Add money to your SpotEV wallet and Manage Ev Charging Expenses Easily',
      ),
      PageViewModel(
        image: Image.asset(
          'assets/img/education-search.png',
          fit: BoxFit.cover,
          height: 200,
        ),
        title: 'Community',
        body: 'Connect With Fellow EV Enthusiasts',
      ),
      PageViewModel(
        image: Image.network('https://th.bing.com/th/id/R.0000098849e0fc21177525d5c12ac830?rik=HTJJzjJxKVFvZQ&riu=http%3a%2f%2fcliparting.com%2fwp-content%2fuploads%2f2018%2f03%2flove-animated-gif-2018-1.gif&ehk=VHYHzQ7q%2f1wZqFVWwohSwrRRiB3FULzVAjHXGGx2zLc%3d&risl=&pid=ImgRaw&r=0',),
        title: 'Trip Plan',
        body:
        'Plan electric journeys with charging station access',
      ),
      PageViewModel(
        image: Image.asset(  'assets/img/education-search.png',),
        title: 'Choose Payment method',
        body: 'Seamless,Secure Charging Payments',
      ),
      PageViewModel(
        image: Image.asset('assets/img/education-search.png',),
        title: 'Discover',
        body: 'Explore Nearby Charging Stations',
      ),
      PageViewModel(
        image: Image.asset(  'assets/img/education-search.png',),
        title: 'Filter Stations',
        body: 'Personalize Charging Station Search',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
          done: Text(
            "Done",
            style: TextStyle(color: Colors.black),
          ),
          next: Icon(
            Icons.arrow_circle_right,
            color: Colors.indigo,
            size: 30,
          ),
          showSkipButton: true,
          skip: Text(
            "Skip",
            style: TextStyle(color: Colors.indigo),
          ),
          onDone: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => LoginPage(),
            ));
          },
          dotsFlex: 3,
          globalBackgroundColor: Colors.white,
          pages: getPages(),
        ));
  }
}
import 'package:bccf/intropages/page1.dart';
import 'package:bccf/intropages/page2.dart';
import 'package:bccf/intropages/page3.dart';
import 'package:bccf/signup/login.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class pagescreen extends StatefulWidget {
  const pagescreen({super.key});
  @override
  State<pagescreen> createState() => _pagescreenState();
}

class _pagescreenState extends State<pagescreen> {
  PageController _controller = PageController();
  bool onLastpage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastpage = (index == 2);
              });
            },
            children: [
              page1(),
              page2(),
              page3(),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.95),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        _controller.jumpToPage(2);
                      },
                      child: Text("skip".toUpperCase())),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  onLastpage
                      ? TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Login();
                            }));
                          },
                          child: Text("done".toUpperCase()))
                      : TextButton(
                          onPressed: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 120),
                                curve: Curves.bounceIn);
                          },
                          child: Text("next".toUpperCase()))
                ],
              ))
        ],
      ),
    );
  }
}

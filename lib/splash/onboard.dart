import 'package:ethiotour/home/home_page.dart';
import 'package:ethiotour/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) =>SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
              title: 'Welcome to our Tour App',
              body: 'The best time to travel to Ethiopia is...',
              image: buildImage('assets/welcome.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'How much should I budget',
              body: 'A typical trip cost is 3000-3500 per person',
              image: buildImage('assets/Welcome2.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Important holiday in Ethiopia?',
              body: 'Secular holiday, Enkutatash, or Ethiopian New Year',
              image: buildImage('assets/Welcome3.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'What is Ethiopian epiphany?',
              body: 'Ethiopian epiphany is a colourful festival.',
              footer: ButtonWidget(
                text: 'Start Tour',
                onClicked: () => goToHome(context),
              ),
              image: buildImage('assets/learn.png'),
              decoration: getPageDecoration(),
            ),
      ],
      
          done: const Text('Finish', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
         showSkipButton: true,
        skip: const Text(
          "Skip",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        next: const Icon(Icons.arrow_forward),
        dotsDecorator: getDotDecoration(),
        animationDuration: 300,
    )
  );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomePage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: const Color.fromARGB(255, 230, 227, 227),
        //activeColor: Colors.orange,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20), 
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:toast/toast.dart';

class IntroScreen extends StatelessWidget {
  // Lista de páginas da introdução
  final List<PageViewModel> listPageViewModel = [
    PageViewModel(
      title: "Título primeira página de teste",
      body: "Descrição 01 teste",
      image: Image.asset(
        "assets/images/first_screen.png",
        fit: BoxFit.contain,
      ),
    ),
    PageViewModel(
      decoration: PageDecoration(
        bodyFlex: 1,
        boxDecoration: BoxDecoration(
          gradient: LinearGradient(
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(0, 236, 219, 1.0),
                Color.fromRGBO(0, 151, 239, 1.0)
              ]),
        ),
      ),
      title: "Título segunda página de teste",
      body: "Descrição 02 teste",
      image: Center(
        child: Image.asset("assets/images/second_image.png", height: 175.0),
      ),
    )
  ];

  @override
  build(BuildContext context) {
    return IntroductionScreen(
      pages: listPageViewModel,
      onDone: () {
        Toast.show("Introdução finalizada", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
      },
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Colors.white,
          color: Colors.grey.shade300,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    );
  }
}

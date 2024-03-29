import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tsr_maquette/screen/campagne.dart';
import 'package:tsr_maquette/widget/detail_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.white,
          size: screenSize.width / 12,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backscreen.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: const DetailCard(),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: screenSize.height / 15,
                  horizontal: screenSize.width / 10,
                ),
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: screenSize.width / 20,
                    horizontal: screenSize.height / 50,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Campagne()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      primary: Colors.transparent,
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                      size: screenSize.width / 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

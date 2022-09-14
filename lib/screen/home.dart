import 'package:flutter/material.dart';
import 'package:tsr_maquette/widget/detail_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.white,
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
        child: Flex(
          direction: Axis.vertical,
          mainAxisSize: MainAxisSize.max,
          children: [
            const DetailCard(),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
              label: const Text(""),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tsr_maquette/screen/briefing.dart';
import 'package:tsr_maquette/screen/critere.dart';
import 'package:tsr_maquette/screen/post.dart';
import 'package:tsr_maquette/widget/campagne_footer.dart';
import 'package:tsr_maquette/widget/price.dart';
import 'package:tsr_maquette/widget/title_card.dart';
import 'package:badges/badges.dart';

class Campagne extends StatefulWidget {
  const Campagne({Key? key}) : super(key: key);

  @override
  State<Campagne> createState() => _CampagneState();
}

class _CampagneState extends State<Campagne> with TickerProviderStateMixin {
  late TabController _tabController;
  late int _selectedTab;
  late bool _favorite;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _selectedTab = 0;
    _favorite = false;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: screenSize.height / 2,
                      width: double.infinity,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/backscreen.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.arrow_back_ios_rounded,
                                        size: screenSize.width / 12,
                                      ),
                                      color: Colors.white,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _favorite = !_favorite;
                                        });
                                      },
                                      icon: Icon(
                                        _favorite
                                            ? Icons.favorite_rounded
                                            : Icons.favorite_border_rounded,
                                        color: Colors.white,
                                        size: screenSize.width / 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: screenSize.height / 30,
                              ),
                              const Price(price: '23 000'),
                              SizedBox(
                                height: screenSize.height / 30,
                              ),
                              const TitleCard(
                                title: 'knorr',
                                subtitle: 'bouillon cube halal',
                              ),
                              SizedBox(
                                height: screenSize.height / 30,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const SizedBox(),
                                    Wrap(
                                      spacing: 10.0,
                                      children: [
                                        Icon(
                                          Icons.circle_rounded,
                                          color: Colors.white,
                                          size: screenSize.width / 30,
                                        ),
                                        Icon(
                                          Icons.circle_rounded,
                                          color: Colors.white12,
                                          size: screenSize.width / 30,
                                        ),
                                        Icon(
                                          Icons.circle_rounded,
                                          color: Colors.white12,
                                          size: screenSize.width / 30,
                                        ),
                                        Icon(
                                          Icons.circle_rounded,
                                          color: Colors.white12,
                                          size: screenSize.width / 30,
                                        ),
                                      ],
                                    ),
                                    Badge(
                                      badgeContent: const Text(
                                        '4',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                      badgeColor: Colors.white12,
                                      child: Icon(
                                        Icons.file_download_outlined,
                                        color: Colors.white,
                                        size: screenSize.width / 12,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          constraints:
                              BoxConstraints(minHeight: screenSize.height / 2),
                          width: screenSize.width,
                          // height: MediaQuery.of(context).size.height,
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(60),
                                topRight: Radius.circular(60),
                              ),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                TabBar(
                                  indicatorColor: Colors.transparent,
                                  controller: _tabController,
                                  labelColor: Colors.black,
                                  unselectedLabelColor:
                                      const Color.fromRGBO(205, 205, 205, 1),
                                  labelPadding:
                                      const EdgeInsets.fromLTRB(15, 10, 15, 0),
                                  labelStyle: const TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  onTap: (index) {
                                    setState(() {
                                      _selectedTab = index;
                                    });
                                  },
                                  isScrollable: true,
                                  tabs: const <Widget>[
                                    Tab(
                                      text: "Briefing",
                                    ),
                                    Tab(
                                      text: "Critères",
                                    ),
                                    Tab(
                                      text: "Exemple de post",
                                    ),
                                  ],
                                ),
                                Builder(
                                  builder: (_) {
                                    if (_selectedTab == 0) {
                                      return const Briefing();
                                    } else if (_selectedTab == 1) {
                                      return const Critere();
                                    } else {
                                      return const Post();
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: screenSize.height / 8),
              ],
            ),
          ),
          SizedBox(
            child: (_selectedTab == 0 || _selectedTab == 1)
                ? const CampagneFooter()
                : null,
          ),
        ],
      ),
    );
  }
}

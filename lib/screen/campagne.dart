import 'package:flutter/material.dart';
import 'package:tsr_maquette/app_theme.dart';
import 'package:tsr_maquette/screen/briefing.dart';
import 'package:tsr_maquette/widget/price.dart';
import 'package:tsr_maquette/widget/title_card.dart';

class Campagne extends StatefulWidget {
  const Campagne({Key? key}) : super(key: key);

  @override
  State<Campagne> createState() => _CampagneState();
}

class _CampagneState extends State<Campagne> with TickerProviderStateMixin {
  late TabController _tabController;
  late int _selectedTab;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _selectedTab = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          SizedBox(
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
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Price(price: '23 000'),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const TitleCard(
                    title: 'knorr',
                    subtitle: 'bouillon cube halal',
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.circle_rounded,
                              color: Colors.white,
                              size: 12.0,
                            ),
                            Icon(
                              Icons.circle_rounded,
                              color: Colors.white12,
                              size: 12.0,
                            ),
                            Icon(
                              Icons.circle_rounded,
                              color: Colors.white12,
                              size: 12.0,
                            ),
                            Icon(
                              Icons.circle_rounded,
                              color: Colors.white12,
                              size: 12.0,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.file_download_outlined,
                          color: Colors.white,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height),
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
                          labelColor: Colors.black87,
                          unselectedLabelColor: Colors.black54,
                          labelPadding:
                              const EdgeInsets.fromLTRB(25, 10, 25, 0),
                          labelStyle: const TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
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
                              return const Text("2");
                            } else {
                              return const Text("3");
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );

    Scaffold(
      body: ListView(
        // mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backscreen.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                AppBar(
                  leading: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                  ),
                  actions: const [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Price(price: '23 000'),
                    SizedBox(
                      height: 20.0,
                    ),
                    TitleCard(
                      title: 'knorr',
                      subtitle: 'bouillon cube halal',
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                  ],
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.end,
                  spacing: 20,
                  children: const [
                    Icon(
                      Icons.circle_rounded,
                      color: Colors.white,
                      size: 12.0,
                    ),
                    Icon(
                      Icons.circle_rounded,
                      color: Colors.white12,
                      size: 12.0,
                    ),
                    Icon(
                      Icons.circle_rounded,
                      color: Colors.white12,
                      size: 12.0,
                    ),
                    Icon(
                      Icons.circle_rounded,
                      color: Colors.white12,
                      size: 12.0,
                    ),
                    Icon(
                      Icons.download_for_offline_outlined,
                      color: Colors.white,
                      size: 40,
                    )
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                    color: Colors.white,
                  ),
                  child: TabBar(
                    indicatorColor: Colors.transparent,
                    controller: _tabController,
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.black54,
                    labelPadding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                    labelStyle: const TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
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
                ),
              ],
            ),
          ),
          Builder(
            builder: (BuildContext context) {
              return TabBarView(
                controller: _tabController,
                children: const [
                  Briefing(),
                  Text("2"),
                  Text("3"),
                ],
              );
            },
          )
          // Container(
          //   color: Colors.white,
          //   padding: const EdgeInsets.only(left: 20),
          //   height: 800,
          //   width: double.maxFinite,
          //   child:
          // ),
        ],
      ),
    );
  }
}

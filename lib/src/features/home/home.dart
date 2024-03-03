import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:fit_combat/src/utils/colors.dart';
import 'package:fit_combat/src/utils/images.dart';
import 'package:fit_combat/src/widgets/appbar_no_back.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int selectedIndex = 0;
  int carouselIndex = 0;
  CarouselController carouselController = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  void onItemTapped(int index) {
    setState(() => selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarNoBack(),
      bottomNavigationBar: CurvedNavigationBar(
        index: selectedIndex,
        backgroundColor: primary,
        buttonBackgroundColor: primary,
        color: tabBgColor,
        items: [
          selectedIndex == 0 ? homeSolid : homeBorder,
          selectedIndex == 1 ? favSolid : favBorder,
          selectedIndex == 2 ? chatFilled : chatOutlined,
          selectedIndex == 3 ? profileFilled : profileOutlined,
        ],
        onTap: onItemTapped,
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(25, 30, 25, 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '500 punten | Recruits',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Fresh Warrior',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      searchIcon,
                    ],
                  ),
                ],
              ),
            ),
            const TabBar(
              tabs: [
                Text('Nieuwe events'),
                Text('Populaire games'),
                Text('Aanbevolen'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CarouselSlider.builder(
                        itemCount: 5,
                        carouselController: carouselController,
                        itemBuilder: (context, index, realIndex) {
                          carouselIndex = index;
                          return Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(65),
                            ),
                            color: Colors.white,
                            child: Container(
                              width: 290,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://s3-alpha-sig.figma.com/img/5b64/9709/2ef90668f89fc42268d64f40512dd56d?Expires=1710115200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UCJaSjJq3dGN45aJgVDHyqvlSYtBNXMKZCdevT6HCUzpWeMNKQuV7RREvwKWzr24Rkh8mP86tLCmNwuW6wRd1vCJtjBH-qa~XFmDH6G4k02Nhax62J5Bp9~zXmo~R-PWtg6OdTNlzF24PswGcVLTr3R3ZcnBmbh21lEpctf5RzBgw4B~~U7bYQbBP91pUdLG~1zupCHgaVo8UhC3~sImrLUfyiCbZqg1kZRmGUIsRyYg1126g~3YAai4C0gBvAflox14OvjxPA77767FNRqsFT7sp6wH1Vc4bWNQVO-zNAuDcwewSD6W1pj4H8C~O6KJXGQwmk~gpq-Snt8ALqYddw__',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                        options: CarouselOptions(
                          aspectRatio: 16 / 9,
                          height: 395,
                          pageSnapping: true,
                          onPageChanged: (index, _) {
                            setState(() => carouselIndex = index);
                          },
                        ),
                      ),
                      DotsIndicator(
                        dotsCount: 5,
                        position: carouselIndex,
                        decorator: DotsDecorator(
                          size: const Size.square(3.0),
                          activeSize: const Size(12.0, 3.0),
                          activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          activeColor: secondary,
                          spacing: const EdgeInsets.all(3),
                        ),
                      ),
                    ],
                  ),
                  CarouselSlider.builder(
                    itemCount: 5,
                    itemBuilder: (context, index, realIndex) => Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(65),
                      ),
                      color: Colors.white,
                      child: const SizedBox(
                        width: 290,
                      ),
                    ),
                    options: CarouselOptions(
                      aspectRatio: 16 / 9,
                      height: 395,
                    ),
                  ),
                  CarouselSlider.builder(
                    itemCount: 5,
                    itemBuilder: (context, index, realIndex) => Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(65),
                      ),
                      color: Colors.white,
                      child: const SizedBox(
                        width: 290,
                      ),
                    ),
                    options: CarouselOptions(
                      aspectRatio: 16 / 9,
                      height: 395,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:hashtek/constants/global_variables.dart';
import 'package:hashtek/features/profile/screen/profile_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;
  Color selectedColor = Colors.white;

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 5, vsync: this);
    tabController.animation?.addListener(
      () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  List<Widget> screens = const [
    ProfileScreen(),
    ProfileScreen(),
    ProfileScreen(),
    ProfileScreen(),
    ProfileScreen(),
  ];
  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const Color unselectedColor = Colors.grey;
    const Color selectedColor = Colors.white;
    return SafeArea(
      child: Scaffold(
        body: BottomBar(
          clip: Clip.none,
          fit: StackFit.expand,
          icon: (width, height) => Center(
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: null,
              icon: Icon(
                Icons.arrow_upward_rounded,
                color: unselectedColor,
                size: width,
              ),
            ),
          ),
          borderRadius: BorderRadius.circular(500),
          duration: const Duration(milliseconds: 500),
          curve: Curves.decelerate,
          showIcon: true,
          width: MediaQuery.of(context).size.width * 0.8,
          barColor: tertiary,
          start: 2,
          end: 0,
          offset: 10,
          barAlignment: Alignment.bottomCenter,
          iconHeight: 30,
          iconWidth: 30,
          hideOnScroll: true,
          body: (context, controller) => TabBarView(
            controller: tabController,
            dragStartBehavior: DragStartBehavior.down,
            physics: const BouncingScrollPhysics(),
            children: screens,
          ),
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              TabBar(
                indicatorPadding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                controller: tabController,
                tabs: [
                  SizedBox(
                    height: 55,
                    width: 40,
                    child: Center(
                        child: Icon(
                      Icons.home_outlined,
                      color: currentPage == 0 ? selectedColor : unselectedColor,
                    )),
                  ),
                  SizedBox(
                    height: 55,
                    width: 40,
                    child: Center(
                      child: Icon(
                        Icons.calendar_month_outlined,
                        color:
                            currentPage == 1 ? selectedColor : unselectedColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 55,
                    width: 40,
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: currentPage == 2 ? selectedColor : selectedColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 55,
                    width: 40,
                    child: Center(
                      child: Icon(
                        Icons.bookmark_border_rounded,
                        color:
                            currentPage == 3 ? selectedColor : unselectedColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 55,
                    width: 40,
                    child: Center(
                      child: Icon(
                        Icons.person,
                        color:
                            currentPage == 4 ? selectedColor : unselectedColor,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: -15,
                child: FloatingActionButton(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: primary),
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: () {},
                  child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://w7.pngwing.com/pngs/684/741/png-transparent-facial-recognition-system-iris-recognition-computer-icons-face-face-face-text-people.png')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

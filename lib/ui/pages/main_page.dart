part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView(
          controller: pageController,
          onPageChanged: (page) {
            setState(() {
              currentPage = page;
            });
          },
          children: [
            FoodPage(),
            OrderHistoryPage(),
            ProfilePage(),
          ],
        ),
      ),
      bottomNavigationBar: FmBottomNavigation(
        currentIndex: currentPage,
        onTap: (page) {
          pageController.jumpToPage(page);
          setState(() {
            currentPage = page;
          });
        },
      ),
    );
  }
}

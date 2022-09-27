import 'package:ecommerceui/widgets/account.dart';
import 'package:ecommerceui/widgets/history.dart';
import 'package:ecommerceui/widgets/home.dart';
import 'package:ecommerceui/widgets/wishlist.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  onTap(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> screens = [
    HomeWidget(),
    WishListWidget(),
    HistroyWidget(),
    AccountWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: screens[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex, // gelen index => currentIndex
        backgroundColor: Colors.white,
        unselectedLabelStyle: TextStyle(fontSize: 13),
        selectedLabelStyle: TextStyle(fontSize: 13),
        selectedItemColor: Color(0xff67C4A7),
        unselectedItemColor: Color(0xff939393),
        items: <BottomNavigationBarItem>[
          // Bottom navigation barların itemları
          BottomNavigationBarItem(
            // BottomNavigationBarItemları giriyoruz

            icon: Image.asset(
              'assets/bottomHome.png', // ilk item image icon olarak veriyoruz
              color: selectedIndex == 0 ? Color(0xff67C4A7) : Color(0xff939393),
              width: 30,
              height: 30,
            ),
            // burada da bottomNavigationBar kısmında hangi eleman seçili ise onun rengini değiştiriyoruz.
            label: 'Home',
          ),
          BottomNavigationBarItem(
            // BottomNavigationBarItemları giriyoruz
            icon: Image.asset(
              'assets/bottomWishList.png', // ilk item image icon olarak veriyoruz
              color: selectedIndex == 1 ? Color(0xff67C4A7) : Color(0xff939393),
              width: 30,
              height: 30,
            ), // burada da bottomNavigationBar kısmında hangi eleman seçili ise onun rengini değiştiriyoruz.
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            // BottomNavigationBarItemları giriyoruz
            icon: Image.asset(
              'assets/bottomHistory.png', // ilk item image icon olarak veriyoruz
              color: selectedIndex == 2 ? Color(0xff67C4A7) : Color(0xff939393),
              width: 30,
              height: 30,
            ), // burada da bottomNavigationBar kısmında hangi eleman seçili ise onun rengini değiştiriyoruz.
            label: 'History',
          ),
          BottomNavigationBarItem(
            // BottomNavigationBarItemları giriyoruz
            icon: Image.asset(
              'assets/bottomAccount.png', // ilk item image icon olarak veriyoruz
              color: selectedIndex == 3 ? Color(0xff67C4A7) : Color(0xff939393),
              width: 30,
              height: 30,
            ), // burada da bottomNavigationBar kısmında hangi eleman seçili ise onun rengini değiştiriyoruz.
            label: 'Account',
          ),
        ],
        //selectedItemColor: Colors.amber[800],
      ),
      // BottomNavigationBar
    );
  }
}

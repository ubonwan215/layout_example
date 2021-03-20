import 'package:flutter/material.dart';
import 'package:layout_example/page.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  void onIndexChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            // UserAccountsDrawerHeader(
            //   currentAccountPicture: CircleAvatar(
            //     backgroundImage: NetworkImage(
            //         "https://assets.brandinside.asia/uploads/2018/04/cat-cat-cat.jpg"),
            //   ),
            //   accountName: Text("Kaem Ubonwan"),
            //   accountEmail: Text("61143215@g.cmru.ac.th"),
            // ),
            DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cms-assets.tutsplus.com/uploads/users/41/posts/25951/image/material-design-background-2.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/media/EcesYuNU0AAxiSy.jpg",
                      ),
                    ),
                    Text("Home"),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/history');
              },
              leading: Icon(Icons.people),
              title: Text("ประวัติ"),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/credit');
              },
              leading: Icon(Icons.people),
              title: Text("Credit"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(pages[currentIndex].title),
      ),
      body: pages[currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onIndexChanged,
        items: pages
            .map(
              (items) => BottomNavigationBarItem(
                icon: items.icon,
                label: items.label,
              ),
            )
            .toList(),
      ),
    );
  }
}

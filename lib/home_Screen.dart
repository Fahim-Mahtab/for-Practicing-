import 'package:flutter/material.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  int _currentIndex = 0;
  String showmsg = "";
  // void _showmessage(BuildContext context) { // Old signature
  void _showmessage(BuildContext context, String message) {
    // New signature
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message))); // Use the passed message
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: Text("Home Screen"),
        backgroundColor: Colors.red,
        elevation: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              _showmessage(context, "Search button was clicked!");
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Fahim"),
              accountEmail: Text("fahim5@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/image/github.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          child: Column(
            children: [
              Text("heelo"),
              SizedBox(
                height: 100,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    _showmessage(context, "Button was clicked!");
                  },
                  child: Text("clickme"),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          //_showmessage(context, "Bottom navigation button was clicked!");
          switch (index) {
            case 0:
              // Task for Home
              print("Home button was clicked!");
              _showmessage(context, "Welcome to the Home section!");
              break;
            case 1:
              // Task for Search
              print("Search button was clicked!");
              _showmessage(context, "Let's find something...");
              break;
            case 2:
              // Task for Settings
              print("Settings button was clicked!");
              _showmessage(context, "Here are your settings.");
              break;
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

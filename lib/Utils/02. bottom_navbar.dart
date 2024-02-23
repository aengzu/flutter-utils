import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {

  List<Widget> tabs = [
    const Center(child: Text("home", style: TextStyle(color: Colors.black))),
    const Center(child: Text("Search", style: TextStyle(color: Colors.black))),
    const Center(child: Text("Profile", style: TextStyle(color: Colors.black))),
    const Center(child: Text("Notification", style: TextStyle(color: Colors.black))),
    const Center(child: Text("Add item", style: TextStyle(color: Colors.black))),

  ];

  int currentPage = 0;
  setPage(index){
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade800,
        title: Text('NavBar'),
      ),
      body: tabs[currentPage],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade900,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 80,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                  icon: Icon(Icons.home, color: currentPage == 0? Colors.white:
                  Colors.grey, size: 30,),
                  onPressed: () => setPage(0),
        ),
                  IconButton(
                  icon: Icon(Icons.search, color: currentPage == 1? Colors.white:
                  Colors.grey, size: 30,),
                  onPressed: () => setPage(1),
    ),
                  IconButton(
                    icon: Icon(Icons.person, color: currentPage == 2? Colors.white:
                    Colors.grey, size: 30,),
                    onPressed: () => setPage(2),
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications, color: currentPage == 3? Colors.white:
                    Colors.grey, size: 30,),
                    onPressed: () => setPage(3),
                  ),
                ],
            ),
        ),
        )
      );
  }
}

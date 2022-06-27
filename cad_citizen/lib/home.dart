import "package:flutter/material.dart";

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListTileWidget();
  }
}

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(46, 55, 79, 1),
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.circle),
              onPressed: () {},
            ),
            Text('CAD'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.sos),
        onPressed: () {
          print("Clicked");
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))),
        elevation: 5,
        highlightElevation: 10,
        backgroundColor: Color.fromRGBO(146, 8, 8, 1),
      ),
      body: BodyWidget(),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showUnselectedLabels: true,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.warning), label: 'Incidents'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notification'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'Message'),
          ],
        ),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            padding: EdgeInsets.fromLTRB(35, 40, 20, 10),
            child: Image.asset('assets/image/profile.png'),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 40, 20, 20),
            child: Image.asset('assets/image/report.png'),
          ),
        ),
      ],
    );
  }
}

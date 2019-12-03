import 'package:flutter/material.dart';

void main() => runApp(Whatsapp());

class Whatsapp extends StatefulWidget {
  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  Widget _appBar(BuildContext context) {
    return AppBar(
      title: Text("Whatsapp"),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Icon(Icons.search),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Icon(Icons.more_vert),
        )
      ],
      bottom: TabBar(
        controller: _tabController,
        indicatorColor: Colors.white,
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.camera_alt),
          ),
          Tab(
            text: "CHATS",
          ),
          Tab(
            text: "STATUS",
          ),
          Tab(
            text: "CALLS",
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(0, 77, 64, 0.9),
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp Ui Clone",
      home: Scaffold(
        appBar: _appBar(context),
        body: TabBarView(
          controller: _tabController,
          children: [
            Container(
              child: Center(
                child: Text("Camera"),
              ),
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(radius: 25.0, child: FlutterLogo()),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Foyez Ahmed",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "3/12/2019",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Stack(
                        overflow: Overflow.clip,
                        children: <Widget>[
                          Icon(
                            Icons.check,
                            color: Colors.blue,
                            size: 15,
                          ),
                          Positioned(
                            left: 3.0,
                            child: Icon(
                              Icons.check,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                      Text("Hello World!")
                    ],
                  ),
                );
              },
            ),
            Container(
              child: Center(
                child: Text("Status"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Calls"),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.message),
          onPressed: () {},
        ),
      ),
    );
  }
}

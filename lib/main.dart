import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}



class MyHomePage extends StatefulWidget{
  const MyHomePage({Key ? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),

      drawer: const NavigationDrawer(),
    );
  }
}


class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
    );
  }

  Widget buildMenuItems(BuildContext context){
    return Column(

      children: [
        Padding(
          padding: EdgeInsets.all(15),
          child: Directionality(textDirection: TextDirection.ltr,
            child: TextButton.icon(onPressed: (){},
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.pink,
                  size: 30.0,
                ),
                label: Text("Home",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.pink
                ),
                )
            )
        ),
        ),

        Padding(padding: EdgeInsets.all(10),
          child: Directionality(textDirection: TextDirection.ltr,
            child: TextButton.icon(onPressed: (){},
                icon: Icon(
                  Icons.category_outlined,
                  color: Colors.pink,
                  size: 30.0,
                ),
                label: Text("Category",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20.0,
                  ),)
            ),

          ),
        ),


        Directionality(textDirection: TextDirection.ltr,
            child: TextButton.icon(onPressed: (){},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.pink,
                  size: 30.0,
                ),
                label: Text("Cart",
                  style: TextStyle(
                      color: Colors.pink,
                    fontSize: 20.0,
                  ),)
            )
        ),

        Directionality(textDirection: TextDirection.ltr,
            child: TextButton.icon(onPressed: (){},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.pink,
                  size: 30.0,
                ),
                label: Text("Notification",
                  style: TextStyle(
                      color: Colors.pink,
                    fontSize: 20.0,
                  ),)
            )
        ),


        Directionality(textDirection: TextDirection.ltr,
            child: TextButton.icon(onPressed: (){},
                icon: Icon(
                  Icons.account_circle_sharp,
                  color: Colors.pink,
                  size: 30.0,
                ),
                label: Text("Account",
                  style: TextStyle(
                      color: Colors.pink,
                    fontSize: 20.0,
                  ),)
            )
        ),

      ],
    );
  }
}



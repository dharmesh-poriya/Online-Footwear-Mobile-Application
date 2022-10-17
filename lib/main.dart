import 'package:flutter/material.dart';
import 'package:catchyshoe/pages/Navigationbar/navigation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:catchyshoe/pages/Welcome/welcome_screen.dart';
import 'package:catchyshoe/constants.dart';
import 'package:catchyshoe/pages/Login//login.dart';
import 'package:catchyshoe/pages/Registration/register.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
      debugShowCheckedModeBanner: false,
      // home: MyLogin(),
      routes: {
        'register': (context) => MyRegister(),
        'login': (context) => MyLogin(),
      },
      home: const WelcomeScreen(),
      // home: const MyHomePage(title: '', isLogin:false),
    );
  }
}



class MyHomePage extends StatefulWidget{
  const MyHomePage({Key ? key, required this.title, required this.isLogin}) : super(key: key);
  final String title;
  final bool isLogin;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  Icon customIcon = const Icon(Icons.search);
  Widget titleText = const Text("Catchy Shoe");
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: titleText,
        actions: [
          IconButton(
            onPressed: (){
              setState(() {
                if(customIcon.icon == Icons.search)
                {
                  customIcon = const Icon(Icons.cancel);
                  titleText = const ListTile(
                    leading: Icon(Icons.search),
                    title: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize:18.0,
                              fontWeight: FontWeight.bold
                          ),
                          border: InputBorder.none
                      ),
                    ),

                  );
                }
                else{
                  titleText = const Text("Catchy Shoe");
                  customIcon = const Icon(Icons.search);
                }
              });
            },
            icon: customIcon,
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),

      // drawer: const NavigationDrawer(),

      body:Column(
        children: [
        ],
      ) ,
      bottomNavigationBar: Navigation(),

    );
  }
}

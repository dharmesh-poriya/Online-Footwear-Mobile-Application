import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.pink,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {},
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: const Icon(Icons.home),

          ),

          BottomNavigationBarItem(
              label: 'Categories',
              icon: const Icon(Icons.category)
          ),

          BottomNavigationBarItem(
              label: 'Cart',
              icon: const Icon(Icons.shopping_cart)
          ),

          BottomNavigationBarItem(
              label: 'Notification',
              icon: const Icon(Icons.notifications)
          ),

          BottomNavigationBarItem(
            label: 'Account',
            icon: const Icon(Icons.account_circle),
          ),
        ]
    );
    
    
    /*
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding:const EdgeInsets.only(top: 25, bottom: 5),
              child: Row(
                children: [
                  TextButton.icon(onPressed: (){},
                    icon:const Icon(
                      Icons.home_outlined,
                      color: Colors.pink,
                      size: 20.0,
                    ),
                    label:const Text("Home",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.pink
                      ),
                    )
                ),
    ],
            ),
          ),
          ),

          Expanded(child:

          Padding(padding:const EdgeInsets.all(5),
            child: Directionality(textDirection: TextDirection.ltr,
              child: TextButton.icon(onPressed: (){},
                  icon:const Icon(
                    Icons.category_outlined,
                    color: Colors.pink,
                    size: 20.0,
                  ),
                  label:const Text("Category",
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 20.0,
                    ),)
              ),

            ),
          ),
          ),


          Expanded(child:

          Padding(
            padding:const EdgeInsets.all(5),
            child: Directionality(textDirection: TextDirection.ltr,
              child: TextButton.icon(onPressed: (){},
                icon:const Icon(
                  Icons.shopping_cart,
                  color: Colors.pink,
                  size: 20.0,
                ),
                label: const Text("Cart",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
          ),

          Expanded(child:
          Padding(padding: const EdgeInsets.all(5),
            child: Directionality(textDirection: TextDirection.ltr,
              child: TextButton.icon(onPressed: (){},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.pink,
                  size: 20.0,
                ),
                label: const Text("Notification",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20.0,
                  ),),
              ),
            ),
          ),
          ),

          Expanded(child:

          Padding(
            padding: const EdgeInsets.all(5),
            child: Directionality(textDirection: TextDirection.ltr,
                child: TextButton.icon(onPressed: (){},
                    icon: const Icon(
                      Icons.account_circle_sharp,
                      color: Colors.pink,
                      size: 20.0,
                    ),
                    label: const Text("Account",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 20.0,
                      ),)
                )
            ),
          ),
          ),
        ],
      ),
    );
    
     */
  }
}

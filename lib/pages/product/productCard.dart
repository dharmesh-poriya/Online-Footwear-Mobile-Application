import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  @override
  _ProductCard createState() => _ProductCard();
}

class _ProductCard extends State<ProductCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(milliseconds: 375), vsync: this);
    _animation = Tween(begin: 150.0, end: 260).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
        reverseCurve: Curves.easeOut));

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      /** Card Widget **/
      child: Card(
        elevation: 50,
        shadowColor: Colors.black,
        color: Colors.greenAccent[100],
        child: SizedBox(
          width: 170,
          height: 240,

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.asset('assets/product/shoes1.jpg',width:270,height: 190,fit:BoxFit.fill ),
                const Text(
                  '200',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  ), //Textstyle
                ), //Text
                const SizedBox(
                  height: 5,
                ), //SizedBox

                // RaisedButton is deprecated and should not be used
                // Use ElevatedButton instead

                // child: RaisedButton(
                //   onPressed: () => null,
                //   color: Colors.green,
                //   child: Padding(
                //     padding: const EdgeInsets.all(4.0),
                //     child: Row(
                //       children: const [
                //         Icon(Icons.touch_app),
                //         Text('Visit'),
                //       ],
                //     ), //Row
                //   ), //Padding
                // )SizedBox
              ],
            ), //Column
          ), //Padding
        ), //SizedBox
      ),
    );
  }
}
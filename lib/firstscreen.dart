import 'package:flutter/material.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({Key? key}) : super(key: key);

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('12 Zodiac Signs'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loginpage');
                // Navigator.pushNamed(context, '/home');
              },
              icon: const Icon(Icons.arrow_forward)),
        ],
      ),
      // body: Column(
      //  children: [
      //   ElevatedButton(onPressed: () {
      //     Navigator.pushNamed(context, '/home');
      //   }, 
      //   child: const Text('Welcom'))
      //  ],
      // ),

      body:  Stack(
        children: <Widget>[
          // mainAxisAlignment: MainAxisAlignment.center,
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/1212.jpg'),
                fit: BoxFit.cover,
                // colorFilter: ColorFilter.mode(
                //   Color.fromARGB(255, 148, 13, 193),
                // BlendMode.darken,
                ),
              ),
            ),
            

        ],
      ),
      // backgroundColor: const Color.fromARGB(255, 174, 222, 186),
    );
  }
}

import 'package:flutter/material.dart';

class principalPage extends StatefulWidget {
  const principalPage({Key? key}) : super(key: key);

  @override
  State<principalPage> createState() => _principalPageState();
}

class _principalPageState extends State<principalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: const Color.fromARGB(255, 73, 73, 73),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, top: 5, right: 20),
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.topLeft,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 73, 73, 73), Colors.black],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Text(
                'Tocadas Recentementes',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(height: 30),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(color: Colors.white),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(color: Colors.white),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(color: Colors.white),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(color: Colors.white),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(color: Colors.white),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(color: Colors.white),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

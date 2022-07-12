import 'package:flutter/material.dart';
import 'package:spotify/pages/LoginPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromARGB(255, 73, 73, 73), Colors.black])),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/logospotify.png',
                width: 300,
                height: 200,
              ),
              const Text(
                'Milhões de músicas à sua escolha.\nGrátis no Spotify ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 200,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: TextButton(
                  child: const Text(
                    'INSCREVA-SE GRÁTIS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Login()));
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                  border: Border.all(color: Colors.grey),
                ),
                child: TextButton(
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      'CONTINUAR COM O FACEBOOK',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Login()));
                  },
                ),
              ),
              Container(
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Login()));
                  },
                  child: const Text(
                    'ENTRAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

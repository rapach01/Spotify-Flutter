import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:spotify/pages/principal.page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: const Color.fromARGB(255, 73, 73, 73),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 30, top: 150, right: 30),
        alignment: Alignment.topLeft,
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 73, 73, 73), Colors.black]),
        ),
        child: Column(
          children: <Widget>[
            const Text(
              'E-mail ou nome de usuário',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(1),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 139, 137, 137)),
              child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    // color: Color.fromARGB(255, 73, 73, 73),
                  )),
            ),
            const SizedBox(height: 50),
            const Text(
              'Senha',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(1),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 139, 137, 137)),
              child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    // color: Color.fromARGB(255, 73, 73, 73),
                  )),
            ),
            const SizedBox(height: 30),
            Container(
              width: 150,
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: TextButton(
                child: const Text(
                  'Entrar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const principalPage()));
                },
              ),
            ),
            const SizedBox(
              height: 10,
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
                    'Esqueci Minha Senha',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

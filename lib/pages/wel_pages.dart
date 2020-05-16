import 'package:aula1/pages/create_account_pages.dart';
import 'package:aula1/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset("assets/tela_app.png"),
            Text(
              'Bem vindo ao meu primeiro App.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Text(
                'As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente..',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
              ),
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  width: 220,
                  child: RaisedButton(
                      child: Text('Login'),
                      color: Colors.pink,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Login();
                            },
                          ),
                        );
                      },
                  ),
                ),
                SizedBox(
                  width: 220,
                  child: RaisedButton(
                      child: Text('Criar conta'),
                      color: Colors.red,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Create_Acount_pages();
                        }));
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:aula1/componets/custom_texfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Create_Acount_pages extends StatefulWidget {
  @override
  _Create_Acount_pagesState createState() => _Create_Acount_pagesState();
}

class _Create_Acount_pagesState extends State<Create_Acount_pages> {
  bool _ischeck;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _ischeck = false;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.pink[50],
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(child: Icon(Icons.arrow_back),onTap: (){Navigator.of(context).pop();},),
              ],
            ),
            Text("Crie sua Conta Gratis"),
            Text('nome de usuario'),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: CustomTextfield(
                text: "nome de usuario",
                hint: "nome de usuario",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: CustomTextfield(
                text: "Email",
                hint: "Email",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: CustomTextfield(
                text: "Senha",
                hint: "Senha",
                obscure: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: CustomTextfield(
                  text: "Celular",
                  hint: "Celular",
                  icon: SvgPicture.asset(
                    "assets/nacao.svg",
                    height: 10,
                  )),
            ),
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Checkbox(
                  value: _ischeck,
                  onChanged: (c) {
                    setState(() {
                      if (_ischeck == false) {
                        _ischeck = true;
                      }
                      else{
                        _ischeck = false;
                      }
                    },);
                  },
                ),
                Flexible(
                  child: Text(
                    "eu concordo com a politica de privacidade e os termos de uso",
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            RaisedButton(
              child: Text("Cadastrar Conta"),
              color: Colors.red,
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}

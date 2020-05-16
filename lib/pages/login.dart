import 'package:aula1/componets/custom_texfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop),
            image: AssetImage("assets/bcg.jpg"),
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(child: Icon(Icons.arrow_back),onTap: (){Navigator.of(context).pop();},),
              ],
            ),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Login",style: TextStyle(fontSize: 40),),
                  Divider( color: Colors.transparent,),
                  CustomTextfield(
                    text: "Username",
                    hint: "usuario ab@ab",
                  ),
                  Divider( color: Colors.transparent,),
                  CustomTextfield(
                    text: "senha",
                    hint: "senha",
                  ),
                  Divider( color: Colors.transparent,),
                  RaisedButton(
                    child: Text("Logar",style: TextStyle(color: Colors.white),),
                  ),
                  Divider( color: Colors.transparent,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        child: ClipRRect(
                          child: SvgPicture.asset("assets/face.svg",height: 50,),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                      VerticalDivider(color: Colors.transparent,),
                      ClipRRect(
                        child: SvgPicture.asset("assets/gog.svg",height: 50,),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

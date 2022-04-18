import 'package:africell_app/util/colors.dart';
import 'package:africell_app/util/constants.dart';
import 'package:africell_app/views/login/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          alignment: const Alignment(
            -3.2,
            -3.5,
          ),
          image: AssetImage(
            ConstatAssets().africa_image,
          ),
          fit: BoxFit.fitHeight,
        )),
        child: Column(
          children: [
            const SizedBox(
              height: 170,
            ),

            Center(
              child: Image.asset(
                ConstatAssets().logo_principal,
                width: 150,
              ),
            ),

            const SizedBox(
              height: 50,
            ),

            CustomField(
                info: "Número de Telemovel",
                hint: "9xx xxx xxx",
                obscaureText: false,
                board: TextInputType.number,
                icone: IconButton(
                    icon: Icon(
                      Icons.numbers,
                      color: ConstantColors().PrimaryColor,
                    ),
                    onPressed: () {})),
            const SizedBox(
              height: 30,
            ),
            CustomField(
              info: "Palavra-Passe",
              hint: "xxxx",
              obscaureText: true,
              board: TextInputType.text,
              icone: IconButton(
                icon: Icon(
                  Icons.visibility,
                  color: ConstantColors().PrimaryColor,
                ),
                onPressed: () {
                  setState(() {});
                },
              ),
            ),

            //aqui vai os textfieldsss
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 50.0,
                width: 300.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: ConstantColors().PrimaryColor),
                child: GestureDetector(
                    child: Center(
                      child: Text(
                        "Entrar",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: ConstantColors().WhiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("/home");
                    }),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

import 'package:africell_app/util/colors.dart';
import 'package:africell_app/util/constants.dart';
import 'package:africell_app/views/home/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
            height: 75,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 223, 215, 215).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Image.asset(
                          ConstatAssets().logo_principal,
                          width: 100,
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.brightness_high,
                          size: 30,
                          color: ConstantColors().PrimaryColor,
                        ))
                  ],
                ),
              ),

              //sss
            ])),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10),
            CarouselImages(
              scaleFactor: 0.7,
              listImages: banners,
              height: 200.0,
              borderRadius: 20.0,
              cachedNetworkImage: true,
              verticalAlignment: Alignment.bottomCenter,
              onTap: (index) {
                // ignore: avoid_print
                print('Tapped on page $index');
              },
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            "Olá, Martin, Tudo afri?",
            style: TextStyle(
                color: ConstantColors().PrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 167, 245, 240),
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.only(left: 30, right: 30, top: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Saldo disponível:",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text("15GB",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))
                  ],
                ),
                const Divider(
                  height: 15.0,
                  color: Color.fromARGB(255, 179, 179, 179),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Seu Número: ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text("952234239",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))
                  ],
                ),
                const Divider(
                  height: 15.0,
                )
              ],
            ),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Row(
                children: [
                  CustomButton(
                    icone: Icons.network_cell_rounded,
                    texto: "Internet",
                    onPress: () {
                      Navigator.of(context).pushNamed('/internet');
                    },
                  ),
                  CustomButton(
                    icone: Icons.supervised_user_circle,
                    texto: "Pacotes",
                    onPress: () {
                      Navigator.of(context).pushNamed('/plans');
                    },
                  ),
                  CustomButton(
                    icone: Icons.money,
                    texto: "Carregar",
                    onPress: () {
                      Navigator.of(context).pushNamed('/recharge');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Row(
                children: [
                  CustomButton(
                    icone: Icons.shopify_rounded,
                    texto: "Lojas",
                    onPress: () {
                      Navigator.of(context).pushNamed('/shop');
                    },
                  ),
                  CustomButton(
                    icone: Icons.precision_manufacturing,
                    texto: "Carreira",
                    onPress: () {
                      Navigator.of(context).pushNamed('/caerer');
                    },
                  ),
                  CustomButton(
                    icone: Icons.support_outlined,
                    texto: "Suporte",
                    onPress: () {
                      Navigator.of(context).pushNamed('/suport');
                    },
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}

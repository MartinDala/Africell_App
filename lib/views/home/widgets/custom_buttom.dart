import 'package:africell_app/util/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final GestureTapCallback? onPress;
  final String? texto;
  final IconData? icone;
  const CustomButton({Key? key, this.texto, this.icone, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Expanded(
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: ConstantColors().PrimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          icone,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          texto.toString(),
                          style: const TextStyle(
                              fontSize: 15, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      onTap: onPress,
    );
  }
}

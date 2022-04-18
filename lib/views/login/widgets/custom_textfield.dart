import 'package:africell_app/util/colors.dart';
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String? hint;
  final String? info;
  final IconButton? icone;
  final TextInputType? board;
  final Function(String)? onChanged;
  final bool? obscaureText;
  const CustomField(
      {Key? key,
      this.hint,
      this.info,
      this.board,
      this.onChanged,
      this.obscaureText,
      this.icone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            info!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          //forms de entrada

          width: 350,
          height: 60,
          decoration: BoxDecoration(
            color: ConstantColors().WhiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Material(
            elevation: 4,
            shadowColor: const Color.fromARGB(255, 255, 255, 255),
            child: TextFormField(
              keyboardType: board,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0XFFE8F9FF), width: 1.0),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0XFFE8F9FF), width: 1.0),
                  ),
                  hintText: hint,
                  suffixIcon: icone),
              onChanged: onChanged,
              obscureText: obscaureText!,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String? hint;
  final String? info;
  final TextInputType? board;
  const CustomTextFormField({Key? key, this.hint, this.info, this.board})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              info!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 196, 25, 13),
                borderRadius: BorderRadius.circular(50)),
            child: Material(
              elevation: 6.0,
              shadowColor: const Color.fromARGB(255, 247, 250, 252),
              child: TextFormField(
                textAlign: TextAlign.justify,
                obscureText: false,
                keyboardType: board,
                decoration:
                    InputDecoration(hintText: hint, border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

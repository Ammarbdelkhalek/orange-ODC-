import 'package:flutter/material.dart';
import 'package:myapp/shared/component/constance.dart';

Widget rowDivider() => const SizedBox(
      width: 10.0,
    );
Widget coulmDivider() => const SizedBox(
      height: 10.0,
    );
void navigateTo(context, Widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Widget),
    );

void navigateAndFinish(context, Widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => Widget),
      (Route<dynamic> route) => false,
    );

Widget defaultCustomizedButton({
  double width = 400,
  double height = 35,
  final Border? buttonStyle,
  Color background = Colors.brown,
  required VoidCallback function,
  required String text,
  bool? isUpperCase,
}) =>
    Container(
      width: width,
      height: height,
      color: background,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: const BorderSide(color: Colors.white)))),
        onPressed: function,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultButton({
  double width = 120,
  final Border? buttonStyle,
  required VoidCallback function,
  required String text,
  bool? isUpperCase,
}) =>
    Container(
      width: width,
      color: Colors.brown,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: const BorderSide(color: Colors.white)))),
        onPressed: function,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultTextButton({
  required VoidCallback function,
  required String text,
  ButtonStyle? buttonStyle,
}) =>
    TextButton(
      onPressed: function,
      child: Text(
        text.toUpperCase(),
        style: const TextStyle(color: Colors.white),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  String? Function(String?)? onSubmit,
  String? Function(String?)? onChange,
//    String? Function(String?)? ontap,
//   Function? ontap,
  required String? Function(String?)? validate,
  required String label,
  IconData? prefix,
  IconData? suffix,
  bool isPassword = false,
  bool isClickable = true,
  VoidCallback? suffixpressed,
  VoidCallback? ontap,
  final TextStyle? labelStyle,
  Color? color,
  final TextStyle? style,
}) =>
    TextFormField(
      validator: validate,
      obscureText: isPassword,
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: ontap,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: labelStyle,
        prefixIcon: Icon(
          prefix,
          color: color,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixpressed,
                icon: Icon(
                  suffix,
                  color: color,
                ))
            : null,
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 3,
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      style: style,
    );

Widget facebookbutton({
  double width = 150,
  final Border? buttonStyle,
  Color background = Colors.blue,
  required VoidCallback function,
  // required String text,
  Widget? child,
  bool? isUpperCase,
}) =>
    Container(
      width: width,
      color: background,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: const BorderSide(color: Colors.white)))),
        onPressed: function,
        child: child,
      ),
    );

Widget googlebutton({
  double width = 150,
  final Border? buttonStyle,
  Color background = Colors.white,
  required VoidCallback function,
  Widget? child,
  bool? isUpperCase,
}) =>
    Container(
      width: width,
      color: background,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: const BorderSide(color: Colors.white)))),
        onPressed: function,
        child: child,
      ),
    );

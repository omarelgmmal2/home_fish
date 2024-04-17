import 'package:flutter/material.dart';
import 'package:home_fish/core/design/app_image.dart';

class AppInput extends StatefulWidget {
  final String labelText,icon;
  final double paddingBottom,paddingTop;
  final bool isPassword;
  final FormFieldValidator<String?>? validator;
  final TextEditingController? controller;
  final Function(String)? onChange;

  const AppInput(
      {super.key,
        required this.labelText,
        this.paddingBottom = 16,
        this.isPassword = false,
        this.validator,
        this.controller, this.onChange,this.paddingTop = 0,
        required this.icon,
      });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: widget.paddingBottom,top: widget.paddingTop,right: 25,left: 25),
      child: TextFormField(
        obscureText: isPasswordHidden && widget.isPassword,
        validator: widget.validator,
        controller: widget.controller,
        onChanged: widget.onChange,
        keyboardType: widget.isPassword ? TextInputType.visiblePassword : TextInputType.name,
        decoration: InputDecoration(
          hintText: widget.labelText,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10),
            child: AppImage(
              widget.icon,
              fit: BoxFit.scaleDown,
              height: 20,
              width: 18,
              //color: Colors.deepOrange,
            ),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
            onPressed: () {
              isPasswordHidden = !isPasswordHidden;
              setState(() {});
            },
            icon: isPasswordHidden
                ? const Icon(
              Icons.visibility_off,
              color: Color(0xff959595),
            )
                : const Icon(
              Icons.visibility,
              color: Color(0xff959595),
            ),
          )
              : null,
          border: const OutlineInputBorder(
            borderSide: BorderSide(width: .5),
          ),
        ),
      ),
    );
  }
}
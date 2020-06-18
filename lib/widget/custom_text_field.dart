import 'package:flutter/material.dart';

class CustomTextField extends FormField<String> {
  CustomTextField({
    String label,
    String hint,
    TextEditingController controller,
}) : super(builder: (FormFieldState<String> state){
  return Padding(padding: EdgeInsets.only(bottom: 30),child:SizedBox(child: TextFormField(
    controller: controller,
    decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide())),
  ),height: 40,));
  }) ;
}
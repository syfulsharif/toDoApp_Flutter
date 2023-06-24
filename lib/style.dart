import 'package:flutter/material.dart';

InputDecoration appInputDecoration(label) {
  return InputDecoration(
    contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
    border: const OutlineInputBorder(),
    labelText: label,
  );
}

ButtonStyle appButtonStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(4),
      ),
    ),
  );
}


SizedBox sizedBox50 (child) {
  return SizedBox(
    height: 50.0,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      child: child,
    ),
  );
}

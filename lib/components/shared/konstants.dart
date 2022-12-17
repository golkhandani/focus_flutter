import 'package:flutter/material.dart';

const height = 0;
const kHeadingTextStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

const kInputDecoration = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  ),
  labelStyle: TextStyle(color: Colors.orange),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
    borderSide: BorderSide(
      color: Color.fromRGBO(250, 225, 175, 1),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
    borderSide: BorderSide(color: Colors.orange),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
    borderSide: BorderSide(color: Colors.red),
  ),
);

const kLoadingBox = SizedBox(
  height: 24,
  width: 24,
  child: CircularProgressIndicator(
    color: Colors.black,
    strokeWidth: 2,
  ),
);

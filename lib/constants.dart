import 'package:flutter/material.dart';

const Color kBlack = Colors.black;

const Color kIconColor = Color(0xFF666565);

const TextStyle kHeadStyle = TextStyle(
  color: Colors.black,
  fontSize: 25,
  fontFamily: "GloriaHallelujah",
  fontWeight: FontWeight.bold,
  // fontWeight: FontWeight.bold,
);

const TextStyle kButtonStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: "GloriaHallelujah",
  fontSize: 20,
);

const DecorationImage DarkBackgroundImage = DecorationImage(
  image: AssetImage("images/back.jpeg"),
  fit: BoxFit.cover,
);

const DecorationImage LightBackgroundImage = DecorationImage(
  image: AssetImage("images/2back.jpeg"),
  fit: BoxFit.cover,
);

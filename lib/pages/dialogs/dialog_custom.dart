import 'package:flutter/material.dart';

class DialogCustom extends Dialog{
  DialogCustom(): super(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Container(
      width: 300,
      height: 300,
    ),
  );
}
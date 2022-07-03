import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

void ShowSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}

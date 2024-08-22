// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class BuscarURL extends StatefulWidget {
  const BuscarURL({
    Key? key,
    this.width,
    this.height,
    this.text,
    this.fontSize,
    required this.color,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? text;
  final double? fontSize;
  final Color color;

  @override
  _BuscarURLState createState() => _BuscarURLState();
}

class _BuscarURLState extends State<BuscarURL> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: SelectableLinkify(
        onOpen: (link) async {
          if (await canLaunch(link.url)) {
            await launch(link.url);
          } else {
            throw 'Could not launch $link';
          }
        },
        text: widget.text!,
        style: TextStyle(
          color: widget.color,
          fontSize: widget.fontSize,
        ),
        linkStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: widget.color,
          fontSize: widget.fontSize,
        ),
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

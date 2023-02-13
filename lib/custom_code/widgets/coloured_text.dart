// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class ColouredText extends StatefulWidget {
  const ColouredText({
    Key? key,
    this.width,
    this.height,
    required this.textString,
    required this.textColour,
    required this.textSize,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String textString;
  final String textColour;
  final double textSize;

  @override
  _ColouredTextState createState() => _ColouredTextState();
}

class _ColouredTextState extends State<ColouredText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.textString,
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Gotham HTF',
                color: widget.textColour == 'red'
                    ? FlutterFlowTheme.of(context).darkRed
                    : widget.textColour == 'orange'
                        ? FlutterFlowTheme.of(context).orange
                        : widget.textColour == 'yellow'
                            ? FlutterFlowTheme.of(context).yellow
                            : FlutterFlowTheme.of(context).primaryColor,
                fontSize: widget.textSize,
                fontWeight: FontWeight.bold,
                useGoogleFonts: false,
                lineHeight: 1.5,
              ),
        ),
      ],
    );
  }
}

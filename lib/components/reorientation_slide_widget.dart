import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reorientation_slide_model.dart';
export 'reorientation_slide_model.dart';

class ReorientationSlideWidget extends StatefulWidget {
  const ReorientationSlideWidget({Key? key}) : super(key: key);

  @override
  _ReorientationSlideWidgetState createState() =>
      _ReorientationSlideWidgetState();
}

class _ReorientationSlideWidgetState extends State<ReorientationSlideWidget> {
  late ReorientationSlideModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReorientationSlideModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
            child: Text(
              'FOR LESS URGENT PROBLEMS,',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Gotham HTF',
                    fontSize: 24.0,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                    lineHeight: 1.5,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
            child: Text(
              'WE CAN OFTEN HELP YOU BOOK AN APPOINTMENT',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Gotham HTF',
                    fontSize: 24.0,
                    useGoogleFonts: false,
                    lineHeight: 1.5,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WITHIN 24-72 HOURS ',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily: 'Gotham HTF',
                        useGoogleFonts: false,
                        lineHeight: 1.5,
                      ),
                ),
                Text(
                  'WITH ONE OF OUR AFFILIATED',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Gotham HTF',
                        fontSize: 24.0,
                        useGoogleFonts: false,
                        lineHeight: 1.5,
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
            child: Text(
              'URGENT CARE CLINICS.',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Gotham HTF',
                    fontSize: 24.0,
                    useGoogleFonts: false,
                    lineHeight: 1.5,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
            child: Text(
              'IF YOU ARE INTERESTED, PLEASE:',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText2.override(
                    fontFamily: 'Gotham HTF',
                    useGoogleFonts: false,
                    lineHeight: 1.5,
                  ),
            ),
          ),
          Text(
            '1. RETURN TO TRIAGE\n2. TAKE A NUMBERED TICKET\n3. WHEN YOUR NUMBER IS CALLED,\n     ASK THE NURSE ABOUT \"REORIENTATION\"',
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Gotham HTF',
                  color: FlutterFlowTheme.of(context).darkRed,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  useGoogleFonts: false,
                  lineHeight: 1.5,
                ),
          ),
        ],
      ),
    );
  }
}

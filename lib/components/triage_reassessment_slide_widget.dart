import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'triage_reassessment_slide_model.dart';
export 'triage_reassessment_slide_model.dart';

class TriageReassessmentSlideWidget extends StatefulWidget {
  const TriageReassessmentSlideWidget({Key? key}) : super(key: key);

  @override
  _TriageReassessmentSlideWidgetState createState() =>
      _TriageReassessmentSlideWidgetState();
}

class _TriageReassessmentSlideWidgetState
    extends State<TriageReassessmentSlideWidget> {
  late TriageReassessmentSlideModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TriageReassessmentSlideModel());

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
              'IF YOU FEEL THAT YOUR SYMPTOMS HAVE WORSENED',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
            child: Text(
              'WHILE WAITING TO SEE A DOCTOR, PLEASE:',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
            child: Text(
              '1. RETURN TO TRIAGE\n2. TAKE A NUMBERED TICKET\n3. WHEN YOUR NUMBER IS CALLED,\n     ASK THE NURSE TO BE REASSESSED',
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Gotham HTF',
                    color: FlutterFlowTheme.of(context).darkRed,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: false,
                    lineHeight: 1.3,
                  ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'YOU WILL ',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Gotham HTF',
                      color: FlutterFlowTheme.of(context).primaryColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: false,
                    ),
              ),
              Text(
                'NOT ',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText2,
              ),
              Text(
                'LOSE YOUR PLACE IN LINE',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Gotham HTF',
                      color: FlutterFlowTheme.of(context).primaryColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: false,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

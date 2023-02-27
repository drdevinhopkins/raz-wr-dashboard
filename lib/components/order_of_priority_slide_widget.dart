import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'order_of_priority_slide_model.dart';
export 'order_of_priority_slide_model.dart';

class OrderOfPrioritySlideWidget extends StatefulWidget {
  const OrderOfPrioritySlideWidget({Key? key}) : super(key: key);

  @override
  _OrderOfPrioritySlideWidgetState createState() =>
      _OrderOfPrioritySlideWidgetState();
}

class _OrderOfPrioritySlideWidgetState
    extends State<OrderOfPrioritySlideWidget> {
  late OrderOfPrioritySlideModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderOfPrioritySlideModel());

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
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
            child: Text(
              '- WELCOME TO THE EMERGENCY DEPARTMENT -',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'Gotham HTF',
                    color: FlutterFlowTheme.of(context).textDarkBlue,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
            child: Text(
              'OUR TEAM IS WORKING HARD TO SEE NEW PATIENTS AS SOON AS POSSIBLE.',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Gotham HTF',
                    color: FlutterFlowTheme.of(context).textDarkBlue,
                    fontSize: 24.0,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          Wrap(
            spacing: 0.0,
            runSpacing: 0.0,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.end,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            verticalDirection: VerticalDirection.down,
            clipBehavior: Clip.none,
            children: [
              Text(
                'NEW PATIENTS WILL BE SEEN IN ',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Text(
                'ORDER OF PRIORITY,',
                style: FlutterFlowTheme.of(context).bodyText2,
              ),
            ],
          ),
          Wrap(
            spacing: 0.0,
            runSpacing: 0.0,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            verticalDirection: VerticalDirection.down,
            clipBehavior: Clip.none,
            children: [
              Text(
                'FIRST-COME, FIRST-SERVED ',
                style: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Gotham HTF',
                      fontStyle: FontStyle.italic,
                      useGoogleFonts: false,
                    ),
              ),
              Text(
                'BASIS.',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Gotham HTF',
                      color: FlutterFlowTheme.of(context).textDarkBlue,
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

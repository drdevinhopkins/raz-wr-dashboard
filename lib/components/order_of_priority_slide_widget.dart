import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderOfPrioritySlideWidget extends StatefulWidget {
  const OrderOfPrioritySlideWidget({Key? key}) : super(key: key);

  @override
  _OrderOfPrioritySlideWidgetState createState() =>
      _OrderOfPrioritySlideWidgetState();
}

class _OrderOfPrioritySlideWidgetState
    extends State<OrderOfPrioritySlideWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
            child: Text(
              '- WELCOME TO THE EMERGENCY DEPARTMENT -',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'Gotham HTF',
                    color: FlutterFlowTheme.of(context).textDarkBlue,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
            child: Text(
              'OUR TEAM IS WORKING HARD TO SEE NEW PATIENTS AS SOON AS POSSIBLE.',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Gotham HTF',
                    color: FlutterFlowTheme.of(context).textDarkBlue,
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          Wrap(
            spacing: 0,
            runSpacing: 0,
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
            spacing: 0,
            runSpacing: 0,
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

import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BusySlideWidget extends StatefulWidget {
  const BusySlideWidget({Key? key}) : super(key: key);

  @override
  _BusySlideWidgetState createState() => _BusySlideWidgetState();
}

class _BusySlideWidgetState extends State<BusySlideWidget> {
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
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
            child: Text(
              'TODAY, THE EMERGENCY DEPARTMENT IS',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Gotham HTF',
                    color: FlutterFlowTheme.of(context).textDarkBlue,
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                    lineHeight: 1.5,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
            child: FutureBuilder<ApiCallResponse>(
              future: GetStatsCall.call(),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                final textGetStatsResponse = snapshot.data!;
                return Text(
                  GetStatsCall.busy(
                    textGetStatsResponse.jsonBody,
                  ).toString(),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Gotham HTF',
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: false,
                        lineHeight: 1.5,
                      ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
            child: Text(
              'WAIT TIMES MAY BE LONGER THAN EXPECTED,',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Gotham HTF',
                    color: FlutterFlowTheme.of(context).textDarkBlue,
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                    lineHeight: 1.5,
                  ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'INCLUDING ',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Gotham HTF',
                      color: FlutterFlowTheme.of(context).textDarkBlue,
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: false,
                      lineHeight: 1.5,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                child: Text(
                  'THE WAIT TO SEE A DOCTOR, TO UNDERGO TESTS,',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily: 'Gotham HTF',
                        useGoogleFonts: false,
                        lineHeight: 1.5,
                      ),
                ),
              ),
            ],
          ),
          Text(
            'TO RECEIVE TREATMENTS AND FOR RESULTS.',
            style: FlutterFlowTheme.of(context).bodyText2,
          ),
        ],
      ),
    );
  }
}

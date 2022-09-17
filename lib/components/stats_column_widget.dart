import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatsColumnWidget extends StatefulWidget {
  const StatsColumnWidget({Key? key}) : super(key: key);

  @override
  _StatsColumnWidgetState createState() => _StatsColumnWidgetState();
}

class _StatsColumnWidgetState extends State<StatsColumnWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
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
        final columnGetStatsResponse = snapshot.data!;
        return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
              child: Container(
                width: 300,
                height: 170,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WE ARE AT',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Gotham HTF',
                              fontSize: 18,
                              useGoogleFonts: false,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        child: Container(
                          width: double.infinity,
                          height: 36,
                          child: custom_widgets.ColouredText(
                            width: double.infinity,
                            height: 36,
                            textString: GetStatsCall.occupancy(
                              columnGetStatsResponse.jsonBody,
                            ).toString(),
                            textColour: GetStatsCall.occupancyColour(
                              columnGetStatsResponse.jsonBody,
                            ).toString(),
                            textSize: 24.0,
                          ),
                        ),
                      ),
                      Text(
                        'CAPACITY',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Gotham HTF',
                              fontSize: 18,
                              useGoogleFonts: false,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
              child: Container(
                width: 300,
                height: 190,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WE HAVE',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Gotham HTF',
                              fontSize: 18,
                              useGoogleFonts: false,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        child: Container(
                          width: double.infinity,
                          height: 36,
                          child: custom_widgets.ColouredText(
                            width: double.infinity,
                            height: 36,
                            textString: GetStatsCall.tbs(
                              columnGetStatsResponse.jsonBody,
                            ).toString(),
                            textColour: GetStatsCall.tbsColour(
                              columnGetStatsResponse.jsonBody,
                            ).toString(),
                            textSize: 24.0,
                          ),
                        ),
                      ),
                      Text(
                        'NEW PATIENTS\nWAITING TO SEE\nA DOCTOR',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Gotham HTF',
                              fontSize: 18,
                              useGoogleFonts: false,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
              child: Container(
                width: 300,
                height: 180,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WE HAVE HAD',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Gotham HTF',
                              fontSize: 18,
                              useGoogleFonts: false,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        child: Container(
                          width: double.infinity,
                          height: 36,
                          child: custom_widgets.ColouredText(
                            width: double.infinity,
                            height: 36,
                            textString: GetStatsCall.last24(
                              columnGetStatsResponse.jsonBody,
                            ).toString(),
                            textColour: GetStatsCall.last24Colour(
                              columnGetStatsResponse.jsonBody,
                            ).toString(),
                            textSize: 24.0,
                          ),
                        ),
                      ),
                      Text(
                        'NEW PATIENTS\nIN THE LAST\n24 HOURS',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Gotham HTF',
                              fontSize: 18,
                              useGoogleFonts: false,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Last update:',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Gotham HTF',
                        fontSize: 16,
                        useGoogleFonts: false,
                      ),
                ),
                Text(
                  GetStatsCall.updateTimestamp(
                    columnGetStatsResponse.jsonBody,
                  ).toString(),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Gotham HTF',
                        fontSize: 16,
                        useGoogleFonts: false,
                      ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

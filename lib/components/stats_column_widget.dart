import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'stats_column_model.dart';
export 'stats_column_model.dart';

class StatsColumnWidget extends StatefulWidget {
  const StatsColumnWidget({Key? key}) : super(key: key);

  @override
  _StatsColumnWidgetState createState() => _StatsColumnWidgetState();
}

class _StatsColumnWidgetState extends State<StatsColumnWidget> {
  late StatsColumnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatsColumnModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
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
              width: 50.0,
              height: 50.0,
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
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: Container(
                width: 300.0,
                height: 170.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(0.0, 2.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WE ARE AT',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Gotham HTF',
                              fontSize: 18.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: Container(
                          width: double.infinity,
                          height: 32.0,
                          child: custom_widgets.ColouredText(
                            width: double.infinity,
                            height: 32.0,
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
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Gotham HTF',
                              fontSize: 18.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: Container(
                width: 300.0,
                height: 190.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(0.0, 2.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WE HAVE',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Gotham HTF',
                              fontSize: 18.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: Container(
                          width: double.infinity,
                          height: 32.0,
                          child: custom_widgets.ColouredText(
                            width: double.infinity,
                            height: 32.0,
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
                              fontSize: 18.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: Container(
                width: 300.0,
                height: 180.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(0.0, 2.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WE HAVE HAD',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Gotham HTF',
                              fontSize: 18.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: Container(
                          width: double.infinity,
                          height: 32.0,
                          child: custom_widgets.ColouredText(
                            width: double.infinity,
                            height: 32.0,
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
                              fontSize: 18.0,
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
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Gotham HTF',
                        fontSize: 16.0,
                        useGoogleFonts: false,
                      ),
                ),
                Text(
                  GetStatsCall.updateTimestamp(
                    columnGetStatsResponse.jsonBody,
                  ).toString(),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Gotham HTF',
                        fontSize: 16.0,
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

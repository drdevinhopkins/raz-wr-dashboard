import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'users_guide_slide_model.dart';
export 'users_guide_slide_model.dart';

class UsersGuideSlideWidget extends StatefulWidget {
  const UsersGuideSlideWidget({Key? key}) : super(key: key);

  @override
  _UsersGuideSlideWidgetState createState() => _UsersGuideSlideWidgetState();
}

class _UsersGuideSlideWidgetState extends State<UsersGuideSlideWidget> {
  late UsersGuideSlideModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsersGuideSlideModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'WANT MORE INFORMATION?',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Gotham HTF',
                  fontSize: 24,
                  useGoogleFonts: false,
                ),
          ),
          Text(
            'PLEASE DOWNLOAD THE JGH USERS GUIDE:',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyText2,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/jghuserguide.jpeg',
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.4,
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'assets/images/jghuserguideQRC-blue.png',
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

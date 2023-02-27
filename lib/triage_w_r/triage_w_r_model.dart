import '/components/busy_slide_widget.dart';
import '/components/order_of_priority_slide_widget.dart';
import '/components/reorientation_slide_widget.dart';
import '/components/stats_column_widget.dart';
import '/components/survey_slide_widget.dart';
import '/components/thank_you_slide_widget.dart';
import '/components/triage_reassessment_slide_widget.dart';
import '/components/users_guide_slide_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TriageWRModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;
  // Model for orderOfPrioritySlide component.
  late OrderOfPrioritySlideModel orderOfPrioritySlideModel;
  // Model for busySlide component.
  late BusySlideModel busySlideModel;
  // Model for triageReassessmentSlide component.
  late TriageReassessmentSlideModel triageReassessmentSlideModel;
  // Model for reorientationSlide component.
  late ReorientationSlideModel reorientationSlideModel;
  // Model for usersGuideSlide component.
  late UsersGuideSlideModel usersGuideSlideModel;
  // Model for surveySlide component.
  late SurveySlideModel surveySlideModel;
  // Model for thankYouSlide component.
  late ThankYouSlideModel thankYouSlideModel;
  // Model for statsColumn component.
  late StatsColumnModel statsColumnModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    orderOfPrioritySlideModel =
        createModel(context, () => OrderOfPrioritySlideModel());
    busySlideModel = createModel(context, () => BusySlideModel());
    triageReassessmentSlideModel =
        createModel(context, () => TriageReassessmentSlideModel());
    reorientationSlideModel =
        createModel(context, () => ReorientationSlideModel());
    usersGuideSlideModel = createModel(context, () => UsersGuideSlideModel());
    surveySlideModel = createModel(context, () => SurveySlideModel());
    thankYouSlideModel = createModel(context, () => ThankYouSlideModel());
    statsColumnModel = createModel(context, () => StatsColumnModel());
  }

  void dispose() {
    orderOfPrioritySlideModel.dispose();
    busySlideModel.dispose();
    triageReassessmentSlideModel.dispose();
    reorientationSlideModel.dispose();
    usersGuideSlideModel.dispose();
    surveySlideModel.dispose();
    thankYouSlideModel.dispose();
    statsColumnModel.dispose();
  }

  /// Additional helper methods are added here.

}

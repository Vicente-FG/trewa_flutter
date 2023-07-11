import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/header_app_widget.dart';
import '/ficha_mascota/ficha_mascota_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String? recType = 'event';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for headerApp component.
  late HeaderAppModel headerAppModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerAppModel = createModel(context, () => HeaderAppModel());
  }

  void dispose() {
    unfocusNode.dispose();
    headerAppModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

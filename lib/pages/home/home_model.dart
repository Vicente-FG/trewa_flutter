import '/components/lista_recordatorios/lista_recordatorios_widget.dart';
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
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ListaRecordatorios component.
  late ListaRecordatoriosModel listaRecordatoriosModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    listaRecordatoriosModel =
        createModel(context, () => ListaRecordatoriosModel());
  }

  void dispose() {
    unfocusNode.dispose();
    listaRecordatoriosModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}

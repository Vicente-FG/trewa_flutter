import '/backend/backend.dart';
import '/components/header_app_widget.dart';
import '/components/marker_location/marker_location_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MapaServiciosModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String? mapFilter;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
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

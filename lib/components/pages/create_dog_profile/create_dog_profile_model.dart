import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/pages/create_your_profile/create_your_profile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateDogProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  // State field(s) for dogName widget.
  TextEditingController? dogNameController;
  String? Function(BuildContext, String?)? dogNameControllerValidator;
  // State field(s) for dogBreed widget.
  TextEditingController? dogBreedController;
  String? Function(BuildContext, String?)? dogBreedControllerValidator;
  // State field(s) for dogAge widget.
  TextEditingController? dogAgeController;
  String? Function(BuildContext, String?)? dogAgeControllerValidator;
  // State field(s) for dogWeight widget.
  TextEditingController? dogWeightController;
  String? Function(BuildContext, String?)? dogWeightControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    dogNameController?.dispose();
    dogBreedController?.dispose();
    dogAgeController?.dispose();
    dogWeightController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

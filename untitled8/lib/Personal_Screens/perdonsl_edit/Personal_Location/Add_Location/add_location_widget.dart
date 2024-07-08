import '../my_location_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'add_location_model.dart';
export 'add_location_model.dart';

class AddLocationWidget extends StatefulWidget {
  const AddLocationWidget({super.key});

  @override
  State<AddLocationWidget> createState() => _AddLocationWidgetState();
}

class _AddLocationWidgetState extends State<AddLocationWidget> {
  late AddLocationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddLocationModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return WillPopScope(
      onWillPop: ()async => false ,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Wrap(
          spacing: 0,
          runSpacing: 0,
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.none,
            children: [ Container(
             width: MediaQuery.sizeOf(context).width,
             height: MediaQuery.sizeOf(context).height * 1,
             decoration: BoxDecoration(
               color: Color(0xFFD50066),
             ),
             child: Column(
               mainAxisSize: MainAxisSize.max,
               children: [
                 Padding(
                   padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                   child: Row(
                     mainAxisSize: MainAxisSize.max,
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Row(
                         mainAxisSize: MainAxisSize.max,
                         children: [],
                       ),
                       Padding(
                         padding: EdgeInsetsDirectional.fromSTEB(50, 0, 20, 0),
                         child: Text(
                           'اضافة العنوان',
                           style: FlutterFlowTheme.of(context)
                               .bodyMedium
                               .override(
                             fontFamily: 'Tajawal',
                             color: FlutterFlowTheme.of(context)
                                 .secondaryBackground,
                             fontSize: 25,
                             fontWeight: FontWeight.w600,
                           ),
                         ),
                       ),
                       Padding(
                         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                         child: FlutterFlowIconButton(
                           borderRadius: 20,
                           borderWidth: 1,
                           buttonSize: 45,
                           fillColor: FlutterFlowTheme.of(context)
                               .secondaryBackground,
                           icon: Icon(
                             Icons.keyboard_arrow_right,
                             color: Color(0xFFD50066),
                             size: 30,
                           ),
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => const MyLocationWidget()),
                             );
                           },
                         ),
                       ),
                     ].divide(SizedBox(width: 10)),
                   ),
                 ),
                 Padding(
                   padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                   child: Container(
                     width: MediaQuery.sizeOf(context).width,
                     height: MediaQuery.sizeOf(context).height * 0.83,
                     decoration: BoxDecoration(
                       color: FlutterFlowTheme.of(context).secondaryBackground,
                       borderRadius: BorderRadius.only(
                         bottomLeft: Radius.circular(0),
                         bottomRight: Radius.circular(0),
                         topLeft: Radius.circular(50),
                         topRight: Radius.circular(50),
                       ),
                     ),
                     child: Column(
                       mainAxisSize: MainAxisSize.max,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Padding(
                           padding:
                           EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                           child: Container(
                             width: MediaQuery.sizeOf(context).width * 0.9,
                             height: MediaQuery.sizeOf(context).height * 0.62,
                             decoration: BoxDecoration(
                               color: FlutterFlowTheme.of(context)
                                   .secondaryBackground,
                             ),
                             child: Column(
                               mainAxisSize: MainAxisSize.max,
                               children: [
                                 Align(
                                   alignment: AlignmentDirectional(1, 0),
                                   child: Padding(
                                     padding: EdgeInsetsDirectional.fromSTEB(
                                         0, 0, 10, 10),
                                     child: Text(
                                       'أسم العنوان',
                                       style: FlutterFlowTheme.of(context)
                                           .bodyMedium
                                           .override(
                                         fontFamily: 'Tajawal',
                                         fontSize: 18,
                                         fontWeight: FontWeight.w500,
                                       ),
                                     ),
                                   ),
                                 ),
                                 Padding(
                                   padding: EdgeInsetsDirectional.fromSTEB(
                                       0, 10, 0, 0),
                                   child: Container(
                                     width: MediaQuery.sizeOf(context).width *
                                         0.9,
                                     height:
                                     MediaQuery.sizeOf(context).height *
                                         0.06,
                                     decoration: BoxDecoration(
                                       color: FlutterFlowTheme.of(context)
                                           .primaryBackground,
                                       borderRadius: BorderRadius.circular(15),
                                     ),
                                     child: Padding(
                                       padding: EdgeInsetsDirectional.fromSTEB(
                                           8, 8, 8, 0),
                                       child: TextFormField(
                                         controller: _model.textController1,
                                         focusNode: _model.textFieldFocusNode1,
                                         autofocus: false,
                                         obscureText: false,
                                         decoration: InputDecoration(
                                           labelStyle:
                                           FlutterFlowTheme.of(context)
                                               .labelMedium,
                                           hintStyle:
                                           FlutterFlowTheme.of(context)
                                               .labelMedium,
                                           enabledBorder: InputBorder.none,
                                           focusedBorder: InputBorder.none,
                                           errorBorder: InputBorder.none,
                                           focusedErrorBorder:
                                           InputBorder.none,
                                           suffixIcon: FaIcon(
                                             FontAwesomeIcons.edit,
                                             color: Color(0xFFD50066),
                                             size: 30,
                                           ),
                                         ),
                                         style: FlutterFlowTheme.of(context)
                                             .bodyMedium,
                                         validator: _model
                                             .textController1Validator
                                             .asValidator(context),
                                       ),
                                     ),
                                   ),
                                 ),
                                 Align(
                                   alignment: AlignmentDirectional(1, 0),
                                   child: Padding(
                                     padding: EdgeInsetsDirectional.fromSTEB(
                                         0, 20, 10, 10),
                                     child: Text(
                                       'العنوان',
                                       style: FlutterFlowTheme.of(context)
                                           .bodyMedium
                                           .override(
                                         fontFamily: 'Tajawal',
                                         fontSize: 18,
                                         fontWeight: FontWeight.w500,
                                       ),
                                     ),
                                   ),
                                 ),
                                 Padding(
                                   padding: EdgeInsetsDirectional.fromSTEB(
                                       0, 10, 0, 0),
                                   child: Container(
                                     width: MediaQuery.sizeOf(context).width *
                                         0.9,
                                     height:
                                     MediaQuery.sizeOf(context).height *
                                         0.06,
                                     decoration: BoxDecoration(
                                       color: FlutterFlowTheme.of(context)
                                           .primaryBackground,
                                       borderRadius: BorderRadius.circular(15),
                                     ),
                                     child: Padding(
                                       padding: EdgeInsetsDirectional.fromSTEB(
                                           8, 8, 8, 0),
                                       child: TextFormField(
                                         controller: _model.textController2,
                                         focusNode: _model.textFieldFocusNode2,
                                         autofocus: false,
                                         obscureText: false,
                                         decoration: InputDecoration(
                                           labelStyle:
                                           FlutterFlowTheme.of(context)
                                               .labelMedium,
                                           hintStyle:
                                           FlutterFlowTheme.of(context)
                                               .labelMedium,
                                           enabledBorder: InputBorder.none,
                                           focusedBorder: InputBorder.none,
                                           errorBorder: InputBorder.none,
                                           focusedErrorBorder:
                                           InputBorder.none,
                                           suffixIcon: Icon(
                                             Icons.location_on_outlined,
                                             color: Color(0xFFD50066),
                                             size: 30,
                                           ),
                                         ),
                                         style: FlutterFlowTheme.of(context)
                                             .bodyMedium,
                                         validator: _model
                                             .textController2Validator
                                             .asValidator(context),
                                       ),
                                     ),
                                   ),
                                 ),
                                 Align(
                                   alignment: AlignmentDirectional(1, 0),
                                   child: Padding(
                                     padding: EdgeInsetsDirectional.fromSTEB(
                                         0, 20, 10, 10),
                                     child: Text(
                                       'هاتف',
                                       style: FlutterFlowTheme.of(context)
                                           .bodyMedium
                                           .override(
                                         fontFamily: 'Tajawal',
                                         fontSize: 18,
                                         fontWeight: FontWeight.w500,
                                       ),
                                     ),
                                   ),
                                 ),
                                 Padding(
                                   padding: EdgeInsetsDirectional.fromSTEB(
                                       0, 10, 0, 0),
                                   child: Container(
                                     width: MediaQuery.sizeOf(context).width *
                                         0.9,
                                     height:
                                     MediaQuery.sizeOf(context).height *
                                         0.06,
                                     decoration: BoxDecoration(
                                       color: FlutterFlowTheme.of(context)
                                           .primaryBackground,
                                       borderRadius: BorderRadius.circular(15),
                                     ),
                                     child: Padding(
                                       padding: EdgeInsetsDirectional.fromSTEB(
                                           8, 8, 8, 0),
                                       child: TextFormField(
                                         controller: _model.textController3,
                                         focusNode: _model.textFieldFocusNode3,
                                         autofocus: false,
                                         obscureText: false,
                                         decoration: InputDecoration(
                                           labelStyle:
                                           FlutterFlowTheme.of(context)
                                               .labelMedium,
                                           hintStyle:
                                           FlutterFlowTheme.of(context)
                                               .labelMedium,
                                           enabledBorder: InputBorder.none,
                                           focusedBorder: InputBorder.none,
                                           errorBorder: InputBorder.none,
                                           focusedErrorBorder:
                                           InputBorder.none,
                                           suffixIcon: Icon(
                                             Icons.phone_enabled_outlined,
                                             color: Color(0xFFD50066),
                                             size: 30,
                                           ),
                                         ),
                                         style: FlutterFlowTheme.of(context)
                                             .bodyMedium,
                                         validator: _model
                                             .textController3Validator
                                             .asValidator(context),
                                       ),
                                     ),
                                   ),
                                 ),
                                 Align(
                                   alignment: AlignmentDirectional(1, 0),
                                   child: Padding(
                                     padding: EdgeInsetsDirectional.fromSTEB(
                                         0, 20, 10, 10),
                                     child: Text(
                                       'اختيار موقع',
                                       style: FlutterFlowTheme.of(context)
                                           .bodyMedium
                                           .override(
                                         fontFamily: 'Tajawal',
                                         fontSize: 18,
                                         fontWeight: FontWeight.w500,
                                       ),
                                     ),
                                   ),
                                 ),
                                 Container(
                                   width:
                                   MediaQuery.sizeOf(context).width * 0.85,
                                   height: MediaQuery.sizeOf(context).height *
                                       0.18,
                                   decoration: BoxDecoration(),
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.circular(8),
                                     child: Image.asset(
                                       'assets/images/M.png',
                                       width: 300,
                                       height: 200,
                                       fit: BoxFit.cover,
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                         Padding(
                           padding:
                           EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                           child: FFButtonWidget(
                             onPressed: () {
                               print('Button pressed ...');
                             },
                             text: 'اضافة',
                             options: FFButtonOptions(
                               width: MediaQuery.sizeOf(context).width * 0.9,
                               height:
                               MediaQuery.sizeOf(context).height * 0.07,
                               padding: EdgeInsetsDirectional.fromSTEB(
                                   24, 0, 24, 0),
                               iconPadding:
                               EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                               color: Color(0xFFD50066),
                               textStyle: FlutterFlowTheme.of(context)
                                   .titleSmall
                                   .override(
                                 fontFamily: 'Tajawal',
                                 color: Colors.white,
                                 fontSize: 25,
                               ),
                               elevation: 3,
                               borderSide: BorderSide(
                                 color: Colors.transparent,
                                 width: 1,
                               ),
                               borderRadius: BorderRadius.circular(10),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
               ],
             ),
           ),
      ],
        ),
      ),
    );
  }
}

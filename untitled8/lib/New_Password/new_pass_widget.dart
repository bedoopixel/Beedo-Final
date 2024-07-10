import 'package:untitled2/LoginScreenWidget/LoginScreenWidget.dart';
import 'package:untitled2/text.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'new_pass_model.dart';
export 'new_pass_model.dart';

class NewPassWidget extends StatefulWidget {
  const NewPassWidget({super.key});

  @override
  State<NewPassWidget> createState() => _NewPassWidgetState();
}

class _NewPassWidgetState extends State<NewPassWidget> {
  late NewPassModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewPassModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 1,
            decoration: BoxDecoration(
              color:FlutterFlowTheme.of(context).accent1,
            ),
            child: Wrap(
              spacing: 0,
              runSpacing: 0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'أعادة تعيين كلمه المرور',
                            textAlign: TextAlign.end,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Tajawal',
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              fontSize: 30,
                              letterSpacing: 0,
                            ),
                          ),
                        ].divide(SizedBox(height: 10)),
                      ),
                    ],
                  ),
                ),
                Wrap(
                  spacing: 0,
                  runSpacing: 0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.88,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 35, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'أعادة تعيين كلمه المرور',
                                        style:Appwidget.LgihtbText(),
                                      ),
                                    ]
                                        .divide(SizedBox(width: 20))
                                        .around(SizedBox(width: 20)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 30, 0, 0),
                                  child: Container(
                                    width:
                                    MediaQuery.sizeOf(context).width * 0.9,
                                    height: MediaQuery.sizeOf(context).height * 0.06,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                      child: TextFormField(
                                        controller: _model.textController1,
                                        focusNode: _model.textFieldFocusNode1,
                                        autofocus: false,
                                        obscureText:
                                        !_model.passwordVisibility1,
                                        decoration: InputDecoration(
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                                  () => _model.passwordVisibility1 =
                                              !_model.passwordVisibility1,
                                            ),
                                            focusNode:
                                            FocusNode(skipTraversal: true),
                                            child: Icon(
                                              _model.passwordVisibility1
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                  .visibility_off_outlined,
                                              color: Color(0xFFD50066),
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                        style:Appwidget.LgihtbText(),
                                        validator: _model
                                            .textController1Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 35, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'تأكيد كلمة المرور',
                                        style:Appwidget.LgihtbText(),
                                      ),
                                    ]
                                        .divide(SizedBox(width: 20))
                                        .around(SizedBox(width: 20)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 30, 0, 0),
                                  child: Container(
                                    width:
                                    MediaQuery.sizeOf(context).width * 0.9,
                                    height: MediaQuery.sizeOf(context).height * 0.06,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                      child: TextFormField(
                                        controller: _model.textController2,
                                        focusNode: _model.textFieldFocusNode2,
                                        autofocus: false,
                                        obscureText:
                                        !_model.passwordVisibility2,
                                        decoration: InputDecoration(
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                                  () => _model.passwordVisibility2 =
                                              !_model.passwordVisibility2,
                                            ),
                                            focusNode:
                                            FocusNode(skipTraversal: true),
                                            child: Icon(
                                              _model.passwordVisibility2
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                  .visibility_off_outlined,
                                              color: Color(0xFFD50066),
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                        style:Appwidget.LgihtbText(),
                                        validator: _model
                                            .textController2Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreenWidget()));
                                },
                                text: 'استمرار',
                                options: FFButtonOptions(
                                  width: MediaQuery.sizeOf(context).width * 0.9,
                                  height: MediaQuery.sizeOf(context).height * 0.08,
                                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                  color: Color(0xFFD60055),
                                  textStyle:Appwidget.bodyMedium(),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

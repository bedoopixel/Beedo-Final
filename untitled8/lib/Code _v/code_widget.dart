import 'package:flutter/services.dart';
import 'package:untitled2/New_Password/new_pass_widget.dart';
import 'package:untitled2/text.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

import 'code_model.dart';
export 'code_model.dart';

class CodeWidget extends StatefulWidget {
  const CodeWidget({super.key});

  @override
  State<CodeWidget> createState() => _CodeWidgetState();
}

class _CodeWidgetState extends State<CodeWidget> {
  late CodeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CodeModel());

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
          body: Wrap(
            spacing: 0,
            runSpacing: 0,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            verticalDirection: VerticalDirection.down,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 1,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).accent1,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 37, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'رمز التحقق',
                            style:Appwidget.bodyMedium(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'لقد أرسلنا كود إعادة تعيين كلمة السر الخاصة بك\nإلى بريدك الإلكتروني',
                            textAlign: TextAlign.center,
                            style:Appwidget.bodySmall(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.82,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
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
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'إدخال الرمز المكون من 4 أرقام في الحقول التالية',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Tajawal',
                                      color: Color(0xA957636C),
                                      fontSize: 16,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,

                                children: [
                                  Container(
                                    width:
                                    MediaQuery.sizeOf(context).width * 0.13,
                                    height:
                                    MediaQuery.sizeOf(context).width * 0.13,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xFFD50066),
                                      ),
                                    ),
                                    child: SizedBox(
                                      height: 65,width: 65,
                                      child: TextFormField(
                                        onChanged: (value){
                                          if(value.length==1)
                                          {
                                            FocusScope.of(context).nextFocus();
                                          }
                                        },
                                        onSaved: (pin1){},
                                        decoration: InputDecoration(hintText: '0',
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                        ),
                                        style: Theme.of(context).textTheme.titleLarge,
                                        keyboardType: TextInputType.number,
                                        textAlign: TextAlign.center,

                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(1),
                                          FilteringTextInputFormatter.digitsOnly,
                                        ],

                                      ),

                                    ),
                                  ),
                                  Container(
                                    width:
                                    MediaQuery.sizeOf(context).width * 0.13,
                                    height:
                                    MediaQuery.sizeOf(context).width * 0.13,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xFFD50066),
                                      ),
                                    ),
                                    child: SizedBox(
                                      height: 65,width: 65,
                                      child: TextFormField(
                                        onChanged: (value){
                                          if(value.length==1)
                                          {
                                            FocusScope.of(context).nextFocus();
                                          }
                                        },
                                        onSaved: (pin1){},
                                        decoration: InputDecoration(hintText: '0',
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                        ),
                                        style: Theme.of(context).textTheme.titleLarge,
                                        keyboardType: TextInputType.number,
                                        textAlign: TextAlign.center,

                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(1),
                                          FilteringTextInputFormatter.digitsOnly,
                                        ],

                                      ),

                                    ),
                                  ),
                                  Container(
                                    width:
                                    MediaQuery.sizeOf(context).width * 0.13,
                                    height:
                                    MediaQuery.sizeOf(context).width * 0.13,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xFFD50066),
                                      ),
                                    ),
                                    child: SizedBox(
                                      height: 65,width: 65,
                                      child: TextFormField(
                                        onChanged: (value){
                                          if(value.length==1)
                                          {
                                            FocusScope.of(context).nextFocus();
                                          }
                                        },
                                        onSaved: (pin1){},
                                        decoration: InputDecoration(hintText: '0',
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                        ),
                                        style: Theme.of(context).textTheme.titleLarge,
                                        keyboardType: TextInputType.number,
                                        textAlign: TextAlign.center,

                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(1),
                                          FilteringTextInputFormatter.digitsOnly,
                                        ],

                                      ),

                                    ),
                                  ),
                                  Container(
                                    width:
                                    MediaQuery.sizeOf(context).width * 0.13,
                                    height:
                                    MediaQuery.sizeOf(context).width * 0.13,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xFFD50066),
                                      ),
                                    ),
                                    child: SizedBox(
                                      height: 65,width: 65,
                                      child: TextFormField(
                                        onChanged: (value){
                                          if(value.length==1)
                                          {
                                            FocusScope.of(context).nextFocus();
                                          }
                                        },
                                        onSaved: (pin1){},
                                        decoration: InputDecoration(hintText: '0',
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                        ),
                                        style: Theme.of(context).textTheme.titleLarge,
                                        keyboardType: TextInputType.number,
                                        textAlign: TextAlign.center,

                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(1),
                                          FilteringTextInputFormatter.digitsOnly,
                                        ],

                                      ),

                                    ),
                                  ),


                                ],

                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    ' ستنتهي صلاحية هذا الرمز في 05.00 دقيقة / ثانية',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Tajawal',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 14,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'تعديل',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Tajawal',
                                      color: Color(0xFFD50066),
                                      fontSize: 18,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                  Text(
                                    'Example@gmail.com',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Tajawal',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 18,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ].divide(SizedBox(width: 10)),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPassWidget()));
                                    },
                                    text: 'تاكيد',
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.9,
                                      height:
                                      MediaQuery.sizeOf(context).height *
                                          0.07,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24, 0, 24, 0),
                                      iconPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      color: Color(0xFFD50066),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        fontSize: 25,
                                        letterSpacing: 0,
                                      ),
                                      elevation: 3,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {

                                    },
                                    child: Text(
                                      'اعد ارسال الرمز',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Tajawal',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16,
                                        letterSpacing: 0,
                                        decoration:
                                        TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
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
      ),
    );
  }
}

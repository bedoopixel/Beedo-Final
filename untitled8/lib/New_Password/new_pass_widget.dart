import 'package:untitled2/LoginScreenWidget/LoginScreenWidget.dart';
import 'package:untitled2/text.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

class NewPassWidget extends StatefulWidget {
  const NewPassWidget({super.key});

  @override
  State<NewPassWidget> createState() => _NewPassWidgetState();
}

class _NewPassWidgetState extends State<NewPassWidget> {


  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();




    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {


    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

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
                                        autofocus: false,
                                        decoration: InputDecoration(
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          suffixIcon: InkWell(
                                            focusNode:
                                            FocusNode(skipTraversal: true),
                                            child: Icon(
                                              Icons.visibility_off_outlined,
                                              color: Color(0xFFD50066),
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                        style:Appwidget.LgihtbText(),
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
                                        decoration: InputDecoration(
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          suffixIcon: InkWell(
                                            focusNode:
                                            FocusNode(skipTraversal: true),
                                            child: Icon(
                                              Icons.visibility_off_outlined,
                                              color: Color(0xFFD50066),
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                        style:Appwidget.LgihtbText(),

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

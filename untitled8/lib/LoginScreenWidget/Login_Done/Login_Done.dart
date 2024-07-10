import 'package:untitled2/text.dart';
import '../../Home_Screens/home_page_main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'login_done_model.dart';
export 'login_done_model.dart';

class LoginDoneWidget extends StatefulWidget {
  const LoginDoneWidget({super.key});

  @override
  State<LoginDoneWidget> createState() => _LoginDoneWidgetState();
}

class _LoginDoneWidgetState extends State<LoginDoneWidget> {
  late LoginDoneModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginDoneModel());

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
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 1,
            decoration: BoxDecoration(
              color:FlutterFlowTheme.of(context).accent1,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            '!مرحباً بعودتك من جــديــد',
                            textAlign: TextAlign.center,
                            style:Appwidget.bodyMedium(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            'نتمنى لك تجربة تسوق ممتعة.',
                            textAlign: TextAlign.center,
                            style:Appwidget.bodySmall(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height * 0.84,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                                child: Container(
                                  width: 300,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images/Illustrations.png',
                                      width: 300,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'عمرو الصبري',
                                      style:Appwidget.LgihtpText(),
                                    ),
                                    Text(
                                      'مرحبا بك',
                                      style:Appwidget.LgihtbText(),
                                    ),
                                  ].divide(SizedBox(width: 5)),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: Text(
                                        ' يسعدنا انضمامك الينا مجددا نتمتى لك \nتجربة تسوق ممتعة',
                                        textAlign: TextAlign.center,
                                        style:Appwidget.primaryText()
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HomePageMainWidget()),
                              );
                            },
                            text: 'التالي',
                            options: FFButtonOptions(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: MediaQuery.sizeOf(context).height * 0.07,
                              padding:
                              EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                              iconPadding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              color: Color(0xFFD50066),
                              textStyle:Appwidget.bodyMedium(),
                              elevation: 3,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

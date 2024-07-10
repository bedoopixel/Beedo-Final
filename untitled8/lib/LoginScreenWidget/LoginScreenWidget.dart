import 'package:untitled2/Forget%20_Password/vrify_widget.dart';
import 'package:untitled2/LoginScreenWidget/Login_Done/Login_Done.dart';
import 'package:untitled2/text.dart';
import '../Sgin_in/sgin_in_page.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'LoginScreenModel.dart';
export 'LoginScreenModel.dart';

class LoginScreenWidget extends StatefulWidget {
  const LoginScreenWidget({super.key});

  @override
  State<LoginScreenWidget> createState() => _LoginScreenWidgetState();
}

class _LoginScreenWidgetState extends State<LoginScreenWidget> {
  late LoginScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginScreenModel());

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
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent1,
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
                  padding: EdgeInsetsDirectional.fromSTEB(0, 55, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'مرحبًا ، لم أرك منذ وقت طويل',
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Text(
                          'جيد أن نراك مرة أخرى',
                          style:Appwidget.bodySmall(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.85,
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
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),

                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,

                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1, 0),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 30, 10),
                              child: Text(
                                'البريد الإلكتروني او رقم الهاتف',
                                style:Appwidget.LgihtbText(),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: MediaQuery.sizeOf(context).height * 0.06,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                child: TextFormField(
                                  controller: _model.textController1,
                                  focusNode: _model.textFieldFocusNode1,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(


                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    suffixIcon: Icon(
                                      Icons.email_outlined,
                                      color: Color(0xFFD50066),
                                      size: 30,
                                    ),
                                  ),
                                  style:Appwidget.LgihtbText(),
                                  validator: _model.textController1Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1, 0),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 20, 30, 10),
                              child: Text(
                                'كلمة المرور',
                                style:Appwidget.LgihtbText(),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: MediaQuery.sizeOf(context).height * 0.06,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                child: TextFormField(
                                  controller: _model.textController2,
                                  focusNode: _model.textFieldFocusNode2,
                                  autofocus: false,
                                  obscureText: !_model.passwordVisibility,
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,

                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                            () => _model.passwordVisibility =
                                        !_model.passwordVisibility,
                                      ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: Icon(
                                        _model.passwordVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: Color(0xFFD50066),
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  style:Appwidget.LgihtbText(),

                                  validator: _model.textController2Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                     Navigator.push(context, MaterialPageRoute(builder: (context)=>VrifyWidget()));
                                    },
                                    child: Text(
                                      'نسيت كلمه السر',
                                      style:Appwidget.LgihtpText()
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 10, 0),
                                      child: Text(
                                        'تذكرني',
                                        style:Appwidget.LgihtbText()
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 20, 0),
                                      child: Icon(
                                        Icons.check_box,
                                        color: Color(0xFFD50066),
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [

                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: FFButtonWidget(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const LoginDoneWidget()),
                                );
                              },
                              text: 'تسجيل الدخول',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                height:
                                MediaQuery.sizeOf(context).height * 0.07,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24, 0, 24, 0),
                                iconPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                color:FlutterFlowTheme.of(context).accent1,
                                textStyle:Appwidget.bodyMedium(),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const SginInPageWidget()),
                                      );
                                    },
                                    child: Text(
                                      'اشتراك',
                                      style:Appwidget.LgihtpText()
                                    ),
                                  ),
                                  Text(
                                    'ليس لديك حساب؟ ',
                                    style:Appwidget.LgihtbText()
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

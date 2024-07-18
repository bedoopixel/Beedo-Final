import 'package:get/get.dart';
import 'package:untitled2/Forget%20_Password/vrify_widget.dart';
import 'package:untitled2/Sgin_in/sgin_in_page.dart';
import 'package:untitled2/text.dart';
import '../controllers/login_controller.dart';
import '../data/api/api_client.dart';
import '../data/repository/login_repo.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../models/login_model.dart';
import '../utils/app_constants.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';


class LoginScreenWidget extends StatefulWidget {
  const LoginScreenWidget({super.key});

  @override
  State<LoginScreenWidget> createState() => _LoginScreenWidgetState();
}

class _LoginScreenWidgetState extends State<LoginScreenWidget> {


  final LoginController loginController = Get.put(LoginController(
    loginRepo: LoginRepo(
      apiClient: ApiClient(appBaseUrl: AppConstants.BASE_URL),
    ),
  ));

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height*1,
        width: MediaQuery.sizeOf(context).width*1,
        color: FlutterFlowTheme.of(context).accent1,
        child: Wrap(
          spacing: 0,
          runSpacing: 0,
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.end,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.none,
          children: [
            Padding(padding: EdgeInsets.only(top: 80)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("مرحبًا ، لم أرك منذ وقت طويل",
              style: Appwidget.HeadText(),)],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: MediaQuery.sizeOf(context).height*0.85,
                width: MediaQuery.sizeOf(context).width*1,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,

                  child:
                    GetBuilder<LoginController>(
                        builder: (loginController) {
                          if (loginController.isLoading) {
                            return const Center(child: CircularProgressIndicator());
                          }
                      child: return Form(
                            key: _formKey,
                        child: Column(
                          children: [
                            SizedBox(height: 50,),
                            Padding(
                              padding: const EdgeInsets.only(right: 25,top: 5,bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [Text("البريد الإلكتروني ",
                                  style: Appwidget.primaryText(),)],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: FlutterFlowTheme.of(context).accent1)
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(8, 18, 0, 8),
                                  child: Container(
                                    width: MediaQuery.sizeOf(context).width * 0.8,
                                    height: MediaQuery.sizeOf(context).height * 0.05,
                                    child: TextFormField(
                                      controller: emailController,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                        ),
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
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Email is required';
                                        }
                                        if (!GetUtils.isEmail(value)) {
                                          return 'Enter a valid email address';
                                        }
                                        return null;
                                      },
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 18,
                                        letterSpacing: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25,top: 20,bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [Text("كلمة المرور",
                                  style: Appwidget.primaryText(),)],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: FlutterFlowTheme.of(context).accent1)
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(8, 18, 0, 8),
                                  child: Container(
                                    width: MediaQuery.sizeOf(context).width * 0.8,
                                    height: MediaQuery.sizeOf(context).height * 0.05,
                                    child: TextFormField(
                                      controller: passwordController,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                        ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                        suffixIcon: Icon(
                                          Icons.lock_outline,
                                          color: Color(0xFFD50066),
                                          size: 30,
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Password is required';
                                        }
                                        return null;
                                      },
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 18,
                                        letterSpacing: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ),
                            // Generated code for this Row Widget...
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                                    child: InkWell(
                                      onTap: ()  {
                                        Get.to(VrifyWidget());
                                      },
                                      child: Text(
                                        'نسيت كلمه السر',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Tajawal',
                                          color: Color(0xFFD50066),
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                        child: Text(
                                          'تذكرني',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Tajawal',
                                            fontSize: 18,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
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
// Generated code for this Button Widget...
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (_formKey.currentState?.validate() ?? false) {
                                    LoginModel loginModel = LoginModel(
                                      email: emailController.text,
                                      password: passwordController.text,
                                    );
                                    loginController.login(loginModel);
                                  }
                                },
                                text: 'تسجيل الدخول',
                                options: FFButtonOptions(
                                  width: MediaQuery.sizeOf(context).width * 0.9,
                                  height: MediaQuery.sizeOf(context).height * 0.07,
                                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                  color: Color(0xFFD60055),
                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Tajawal',
                                    color: Colors.white,
                                    fontSize: 25,
                                    letterSpacing: 0,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: ()  {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPageWidget()));
                                      },
                                      child: Text(
                                        'اشتراك',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Tajawal',
                                          color: Color(0xFFD60055),
                                          fontSize: 20,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'ليس لديك حساب؟ ',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Tajawal',
                                        fontSize: 20,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                       }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

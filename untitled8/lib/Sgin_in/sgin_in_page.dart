import 'package:get/get.dart';
import '../controllers/signup_controller.dart';
import '../data/api/api_client.dart';
import '../data/repository/signup_repo.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../models/user_model.dart';
import '../text.dart';
import '../utils/app_constants.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';


class SignUpPageWidget extends StatelessWidget {
  final SignupController signupController = Get.put(SignupController(
    signupRepo: SignupRepo(
      apiClient: ApiClient(appBaseUrl: AppConstants.BASE_URL),
    ),
  ));
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
 scrollDirection: Axis.vertical,
        child: Container(
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
              Padding(padding: EdgeInsets.only(top: 70,bottom: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(" مرحباً بك",
                  style: Appwidget.HeadText(),)],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("  !إنشاء حساب للمـتابعة",
                  style: Appwidget.Head2Text(),)],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: MediaQuery.sizeOf(context).height*0.86,
                  width: MediaQuery.sizeOf(context).width*1,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: GetBuilder<SignupController>(
                      builder: (signupController) {
                        if (signupController.isLoading) {
                          return const Center(child: CircularProgressIndicator());
                        }
                        child: return Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              SizedBox(height: 40,),
                              Padding(
                                padding: const EdgeInsets.only(right: 25,top: 5,bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [Text(" اسم المستخدم ",
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
                                        controller: usernameController,
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
                                            Icons.person_outline_outlined,
                                            color: Color(0xFFD50066),
                                            size: 30,
                                          ),
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Username is required';
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
                                padding: const EdgeInsets.only(right: 25,top: 19,bottom: 10),
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
                                          if (value.length < 6) {
                                            return 'Password must be more than 6 characters';
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
                                  children: [Text("تاكيد كلمة المرور",
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
                                        controller: passwordConfirmationController,
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
                                            return 'Password confirmation is required';
                                          }
                                          if (value != passwordController.text) {
                                            return 'Passwords do not match';
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

// Generated code for this Button Widget...
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async { if (_formKey.currentState?.validate() ?? false) {
                                    User user = User(
                                      username: usernameController.text,
                                      email: emailController.text,
                                      password: passwordController.text,
                                      passwordConfirmation: passwordConfirmationController.text,
                                    );
                                    signupController.signup(user);
                                  }
                                  },
                                  text: ' اشترك',
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

                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


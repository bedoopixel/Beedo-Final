import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'notidication_settings_model.dart';
export 'notidication_settings_model.dart';

class NotidicationSettingsWidget extends StatefulWidget {
  const NotidicationSettingsWidget({super.key});

  @override
  State<NotidicationSettingsWidget> createState() =>
      _NotidicationSettingsWidgetState();
}

class _NotidicationSettingsWidgetState
    extends State<NotidicationSettingsWidget> {
  late NotidicationSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotidicationSettingsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 1,
        decoration: BoxDecoration(
          color: Color(0xFFD50066),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                      child: Text(
                        'إعدادات الإشعارات',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Tajawal',
                          color: FlutterFlowTheme.of(context)
                              .primaryBackground,
                          fontSize: 25,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 25, 0),
                        child: FlutterFlowIconButton(
                          borderColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: 20,
                          borderWidth: 1,
                          buttonSize: 45,
                          fillColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                            color: Color(0xFFD50066),
                            size: 30,
                          ),
                          onPressed: () async {

                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.84,
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
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        height: MediaQuery.sizeOf(context).height * 0.7,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'الإشعارات',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                fontFamily: 'Tajawal',
                                fontSize: 25,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0x240F0C0C),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Switch.adaptive(
                                  value: _model.switchValue1 ??= true,
                                  onChanged: (newValue) async {
                                    setState(
                                            () => _model.switchValue1 = newValue!);
                                  },
                                  activeColor: Color(0xFFD50066),
                                  activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                                  inactiveTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                                  inactiveThumbColor:
                                  FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                                Text(
                                  'إظهار الإخطار',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    fontFamily: 'Tajawal',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 18,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0x240F0C0C),
                            ),
                            Text(
                              'اصوات',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                fontFamily: 'Tajawal',
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0x240F0C0C),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Switch.adaptive(
                                  value: _model.switchValue2 ??= true,
                                  onChanged: (newValue) async {
                                    setState(
                                            () => _model.switchValue2 = newValue!);
                                  },
                                  activeColor: Color(0xFFD50066),
                                  activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                                  inactiveTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                                  inactiveThumbColor:
                                  FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                                Text(
                                  'صوت الإشعار',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    fontFamily: 'Tajawal',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 18,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0x240F0C0C),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 8),
                                      child: Icon(
                                        Icons.keyboard_arrow_left_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 30,
                                      ),
                                    ),
                                    FlutterFlowDropDown(
                                      controller: _model.dropDownValueController ??=
                                          FormFieldController<String>(null),
                                      options: ['Option 1'],
                                      onChanged: (val) => setState(
                                              () => _model.dropDownValue = val),
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      height: 50,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Tajawal',
                                        color: Color(0xCCA6A1A1),
                                        fontSize: 18,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'الجرس (افتراضي)',
                                      icon: FaIcon(
                                        FontAwesomeIcons.windowMinimize,
                                        size: 1,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2,
                                      borderColor: Colors.transparent,
                                      borderWidth: 2,
                                      borderRadius: 8,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 5),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ],
                                ),
                                Text(
                                  'اصوات',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    fontFamily: 'Tajawal',
                                    color: Color(0xCCA6A1A1),
                                    fontSize: 18,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0x240F0C0C),
                            ),
                            Text(
                              'إشعاري',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                fontFamily: 'Tajawal',
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0x240F0C0C),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Switch.adaptive(
                                  value: _model.switchValue3 ??= true,
                                  onChanged: (newValue) async {
                                    setState(
                                            () => _model.switchValue3 = newValue!);
                                  },
                                  activeColor: Color(0xFFD50066),
                                  activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                                  inactiveTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                                  inactiveThumbColor:
                                  FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                                Text(
                                  'حالة الطلب',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    fontFamily: 'Tajawal',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 18,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0x240F0C0C),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Switch.adaptive(
                                  value: _model.switchValue4 ??= false,
                                  onChanged: (newValue) async {
                                    setState(
                                            () => _model.switchValue4 = newValue!);
                                  },
                                  activeColor: Color(0xFFD50066),
                                  activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                                  inactiveTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                                  inactiveThumbColor:
                                  FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                                Text(
                                  'دردشة',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    fontFamily: 'Tajawal',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 18,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0x240F0C0C),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Switch.adaptive(
                                  value: _model.switchValue5 ??= false,
                                  onChanged: (newValue) async {
                                    setState(
                                            () => _model.switchValue5 = newValue!);
                                  },
                                  activeColor: Color(0xFFD50066),
                                  activeTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                                  inactiveTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                                  inactiveThumbColor:
                                  FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                                Text(
                                  'القسائم',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    fontFamily: 'Tajawal',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 18,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ],
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
    );
  }
}

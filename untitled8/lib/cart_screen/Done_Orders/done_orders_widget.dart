import '../Comolete_Orders/complet_order_widget.dart';
import '../Payment_Screens/LocationsScreens/Locations_Screen_Widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class DoneOrdersWidget extends StatefulWidget {
  const DoneOrdersWidget({super.key});

  @override
  State<DoneOrdersWidget> createState() => _DoneOrdersWidgetState();
}

class _DoneOrdersWidgetState extends State<DoneOrdersWidget> {


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
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 70, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                            child: Text(
                              'الطلب',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                fontFamily: 'Tajawal',
                                fontSize: 25,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor:
                            FlutterFlowTheme.of(context).secondaryText,
                            borderRadius: 20,
                            borderWidth: 2,
                            buttonSize: 45,
                            fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                            icon: Icon(
                              Icons.keyboard_arrow_right,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const LocationsScreenWidget()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: MediaQuery.sizeOf(context).height * 0.07,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Master Card',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 20,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                  Container(
                                    width:
                                    MediaQuery.sizeOf(context).width * 0.18,
                                    height:
                                    MediaQuery.sizeOf(context).width * 0.18,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/Mastercard.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: MediaQuery.sizeOf(context).height * 0.5,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Text(
                                        'الاسم الكامل',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Tajawal',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 15, 0, 0),
                                      child: Container(
                                        width:
                                        MediaQuery.sizeOf(context).width *
                                            0.9,
                                        height:
                                        MediaQuery.sizeOf(context).height *
                                            0.06,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                          BorderRadius.circular(30),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'عبد الخالق سعيد الهبوب',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: 'Tajawal',
                                                fontSize: 16,
                                                letterSpacing: 0,
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderRadius: 20,
                                              borderWidth: 1,
                                              buttonSize: 35,
                                              fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                              icon: Icon(
                                                Icons.person_outline_sharp,
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                                size: 20,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),
                                          ]
                                              .divide(SizedBox(width: 10))
                                              .around(SizedBox(width: 10)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 0),
                                      child: Text(
                                        'رقم البطاقة',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Tajawal',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 15, 0, 0),
                                      child: Container(
                                        width:
                                        MediaQuery.sizeOf(context).width *
                                            0.9,
                                        height:
                                        MediaQuery.sizeOf(context).height *
                                            0.06,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                          BorderRadius.circular(30),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              '2412 3324 6738 3456',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: 'Tajawal',
                                                fontSize: 16,
                                                letterSpacing: 0,
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 20,
                                              borderWidth: 1,
                                              buttonSize: 35,
                                              fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                              icon: FaIcon(
                                                FontAwesomeIcons.creditCard,
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                                size: 20,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),
                                          ]
                                              .divide(SizedBox(width: 10))
                                              .around(SizedBox(width: 10)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                30, 0, 0, 0),
                                            child: Text(
                                              'Expiry Date',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily:
                                                'Readex Pro',
                                                letterSpacing: 0,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 10, 0),
                                            child: Text(
                                              'CVV',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily:
                                                'Readex Pro',
                                                letterSpacing: 0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 15, 0, 0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                .width *
                                                0.3,
                                            height: MediaQuery.sizeOf(context)
                                                .height *
                                                0.06,
                                            decoration: BoxDecoration(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                              borderRadius:
                                              BorderRadius.circular(30),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  '09/22',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 16,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                    FontWeight.w500,
                                                  ),
                                                ),
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                  Colors.transparent,
                                                  borderRadius: 20,
                                                  borderWidth: 1,
                                                  buttonSize: 35,
                                                  fillColor:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .secondaryBackground,
                                                  icon: Icon(
                                                    Icons.today_outlined,
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .secondaryText,
                                                    size: 20,
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                        'IconButton pressed ...');
                                                  },
                                                ),
                                              ]
                                                  .divide(SizedBox(width: 10))
                                                  .around(SizedBox(width: 10)),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 15, 0, 0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                .width *
                                                0.3,
                                            height: MediaQuery.sizeOf(context)
                                                .height *
                                                0.06,
                                            decoration: BoxDecoration(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                              borderRadius:
                                              BorderRadius.circular(30),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  '555',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 16,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                    FontWeight.w600,
                                                  ),
                                                ),
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                  Colors.transparent,
                                                  borderRadius: 20,
                                                  borderWidth: 1,
                                                  buttonSize: 35,
                                                  fillColor:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .secondaryBackground,
                                                  icon: FaIcon(
                                                    FontAwesomeIcons.creditCard,
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .secondaryText,
                                                    size: 20,
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                        'IconButton pressed ...');
                                                  },
                                                ),
                                              ]
                                                  .divide(SizedBox(width: 10))
                                                  .around(SizedBox(width: 10)),
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
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                  child: FFButtonWidget(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CompletOrderWidget()),
                      );
                    },
                    text: 'استمرار',
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: MediaQuery.sizeOf(context).height * 0.07,
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: Color(0xFFD50066),
                      textStyle:
                      FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Tajawal',
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w600,
                      ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15),
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

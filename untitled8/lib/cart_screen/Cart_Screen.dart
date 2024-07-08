import 'package:go_router/go_router.dart';
import '../Home_Screens/home_page_main.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'Cart_acreen_model.dart';
import 'Payment_Screens/PaymentWidget.dart';
export 'Cart_acreen_model.dart';

class CartScreenWidget extends StatefulWidget {
  const CartScreenWidget({
    super.key,
    int? celectedPageIndex,
    bool? hidden,
  })  : this.celectedPageIndex = celectedPageIndex ?? 1,
        this.hidden = hidden ?? false;

  final int celectedPageIndex;
  final bool hidden;

  @override
  State<CartScreenWidget> createState() => _CartScreenWidgetState();
}

class _CartScreenWidgetState extends State<CartScreenWidget> {
  late CartScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.create = false;
      });
    });

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
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFD50066),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 64, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: FlutterFlowIconButton(
                                borderColor: Color(0xFFD50066),
                                borderRadius: 20,
                                borderWidth: 1,
                                buttonSize: 45,
                                fillColor: Colors.white,
                                icon: Icon(
                                  Icons.done,
                                  color: Color(0xFFD50066),
                                  size: 30,
                                ),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const PaymentWidget()),
                                  );
                                },
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Text(
                                  'عربة التسوق',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    fontFamily: 'Tajawal',
                                    color: Colors.white,
                                    fontSize: 25,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: FlutterFlowIconButton(
                                borderColor: Color(0xFFD50066),
                                borderRadius: 20,
                                borderWidth: 1,
                                buttonSize: 45,
                                fillColor: Colors.white,
                                icon: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Color(0xFFD50066),
                                  size: 30,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const HomePageMainWidget()),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 27, 0, 0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: MediaQuery.sizeOf(context).height * 0.84,
                          decoration: BoxDecoration(
                            color:
                            FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 50, 0, 0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.9,
                                      height:
                                      MediaQuery.sizeOf(context).height *
                                          0.12,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 1),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 10, 0, 10),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(20, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceEvenly,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 5, 0, 0),
                                                      child: Text(
                                                        'صابون تسويد الشعر الابيض',
                                                        style: FlutterFlowTheme
                                                            .of(context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Tajawal',
                                                          letterSpacing: 0,
                                                          fontWeight:
                                                          FontWeight
                                                              .w600,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'صابون تسويد الشعر الابيض',
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Tajawal',
                                                        color: Color(
                                                            0x9A4B4E4E),
                                                        fontSize: 16,
                                                        letterSpacing: 0,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 5, 0, 0),
                                                      child:
                                                      SingleChildScrollView(
                                                        scrollDirection:
                                                        Axis.horizontal,
                                                        child: Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  0,
                                                                  0,
                                                                  20,
                                                                  0),
                                                              child: Container(
                                                                width: 100,
                                                                height: 20,
                                                                decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      8),
                                                                  shape: BoxShape
                                                                      .rectangle,
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                                child:
                                                                FlutterFlowCountController(
                                                                  decrementIconBuilder:
                                                                      (enabled) =>
                                                                      Icon(
                                                                        Icons
                                                                            .indeterminate_check_box_rounded,
                                                                        color: enabled
                                                                            ? Color(
                                                                            0xFFD60055)
                                                                            : Colors
                                                                            .white,
                                                                        size: 15,
                                                                      ),
                                                                  incrementIconBuilder:
                                                                      (enabled) =>
                                                                      Icon(
                                                                        Icons
                                                                            .add_box,
                                                                        color: enabled
                                                                            ? Color(
                                                                            0xFFD50066)
                                                                            : Colors
                                                                            .white,
                                                                        size: 15,
                                                                      ),
                                                                  countBuilder:
                                                                      (count) =>
                                                                      Text(
                                                                        count
                                                                            .toString(),
                                                                        style: FlutterFlowTheme.of(
                                                                            context)
                                                                            .titleLarge
                                                                            .override(
                                                                          fontFamily:
                                                                          'Tajawal',
                                                                          fontSize:
                                                                          20,
                                                                          letterSpacing:
                                                                          0,
                                                                        ),
                                                                      ),
                                                                  count: _model
                                                                      .countControllerValue ??= 0,
                                                                  updateCount: (count) =>
                                                                      setState(() =>
                                                                      _model.countControllerValue =
                                                                          count),
                                                                  stepSize: 1,
                                                                  contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      20,
                                                                      0,
                                                                      20,
                                                                      0),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  0,
                                                                  0,
                                                                  20,
                                                                  0),
                                                              child: Text(
                                                                '9,000 YER',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium
                                                                    .override(
                                                                  fontFamily:
                                                                  'Tajawal',
                                                                  color: Color(
                                                                      0xFFD50066),
                                                                  fontSize:
                                                                  16,
                                                                  letterSpacing:
                                                                  0,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 20, 0),
                                                child: Container(
                                                  width: 60,
                                                  height: 60,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/Barenbliss Light It Up Skin Tint.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 1),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 20),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                .width *
                                                0.7,
                                            height: MediaQuery.sizeOf(context)
                                                .height *
                                                0.08,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFD60055),
                                              borderRadius:
                                              BorderRadius.circular(50),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .secondaryBackground,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                    AlignmentDirectional(
                                                        0, 0),
                                                    child: InkWell(
                                                      splashColor:
                                                      Colors.transparent,
                                                      focusColor:
                                                      Colors.transparent,
                                                      hoverColor:
                                                      Colors.transparent,
                                                      highlightColor:
                                                      Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                            'Cart_Screen');
                                                      },
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .shoppingBag,
                                                        color:
                                                        Color(0xFFD60055),
                                                        size: 26,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                  AlignmentDirectional(
                                                      0, 0),
                                                  child: InkWell(
                                                    splashColor:
                                                    Colors.transparent,
                                                    focusColor:
                                                    Colors.transparent,
                                                    hoverColor:
                                                    Colors.transparent,
                                                    highlightColor:
                                                    Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                          'home_page_main');
                                                    },
                                                    child: FaIcon(
                                                      FontAwesomeIcons.magento,
                                                      color: Color(0xFFF4F4F5),
                                                      size: 28,
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  splashColor:
                                                  Colors.transparent,
                                                  focusColor:
                                                  Colors.transparent,
                                                  hoverColor:
                                                  Colors.transparent,
                                                  highlightColor:
                                                  Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'Favor_Screen');
                                                  },
                                                  child: Icon(
                                                    Icons.favorite_sharp,
                                                    color: Color(0xFFF4F4F5),
                                                    size: 26,
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
      ),
    );
  }
}

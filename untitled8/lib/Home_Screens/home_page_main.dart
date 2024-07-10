import 'package:go_router/go_router.dart';
import 'package:untitled2/Personal_Screens/Personal_Screen.dart';
import 'package:untitled2/Product/product_widget.dart';
import 'package:untitled2/text.dart';
import '../Bar/bar_widget.dart';
import '../Branches_lable/branches_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageMainWidget extends StatefulWidget {
  const HomePageMainWidget({
    super.key,
    int? selectedPageIndex,
    bool? hidden,
  })  : this.selectedPageIndex = selectedPageIndex ?? 1,
        this.hidden = hidden ?? false;

  final int selectedPageIndex;
  final bool hidden;

  @override
  State<HomePageMainWidget> createState() => _HomePageMainWidgetState();
}

class _HomePageMainWidgetState extends State<HomePageMainWidget> {


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
          body: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 1,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
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
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 1,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent1,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 64, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.white,
                                borderRadius: 20,
                                borderWidth: 1,
                                buttonSize: 45,
                                fillColor: Colors.white,
                                icon: FaIcon(
                                  FontAwesomeIcons.bell,
                                  color: Color(0xFFD50066),
                                  size: 28,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              Text(
                                'مرحباً عبد الخالق سعيد',
                                style:Appwidget.bodyMedium(),
                              ),
                              InkWell(
                                onTap: () async {
Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalScreenWidget()));
                                },
                                child: Container(
                                  width: 55,
                                  height: 55,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/Avatar.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 26, 0, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width,
                            height: MediaQuery.sizeOf(context).height * 0.83,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 30, 0, 0),
                                      child: Container(
                                        width:
                                        MediaQuery.sizeOf(context).width *
                                            0.9,
                                        height:
                                        MediaQuery.sizeOf(context).height *
                                            0.07,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [

                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(8, 0, 8, 0),
                                                child: TextFormField(

                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: 'اكتب للبحث',
                                                    hintStyle: FlutterFlowTheme
                                                        .of(context)
                                                        .labelMedium
                                                        .override(
                                                      fontFamily: 'Tajawal',
                                                      fontSize: 18,
                                                      letterSpacing: 0,
                                                    ),
                                                    enabledBorder:
                                                    InputBorder.none,
                                                    focusedBorder:
                                                    InputBorder.none,
                                                    errorBorder:
                                                    InputBorder.none,
                                                    focusedErrorBorder:
                                                    InputBorder.none,
                                                  ),
                                                  style:Appwidget.LgihtbText(),
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 10, 0),
                                              child: FaIcon(
                                                FontAwesomeIcons.search,
                                                color: Color(0xFFCDD9DF),
                                                size: 24,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 20, 0, 0),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceEvenly,
                                                children: [
                                                  FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: 'اطفال',
                                                    options: FFButtonOptions(
                                                      width: 85,
                                                      height: 35,
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          24, 0, 24, 0),
                                                      iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 0, 0),
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      textStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .titleSmall
                                                          .override(
                                                        fontFamily:
                                                        'Tajawal',
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .primaryText,
                                                        fontSize: 10,
                                                        letterSpacing:
                                                        0,
                                                      ),
                                                      elevation: 3,
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme.of(context).accent1,
                                                        width: 1.5,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          20),
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: 'النساء',
                                                    options: FFButtonOptions(
                                                      width: 85,
                                                      height: 35,
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          24, 0, 24, 0),
                                                      iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 0, 0),
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      textStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .titleSmall
                                                          .override(
                                                        fontFamily:
                                                        'Tajawal',
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .primaryText,
                                                        fontSize: 10,
                                                        letterSpacing:
                                                        0,
                                                      ),
                                                      elevation: 3,
                                                      borderSide: BorderSide(
                                                        color:
                                                        Color(0xFFD50066),
                                                        width: 1.5,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          20),
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: 'الرجال',
                                                    options: FFButtonOptions(
                                                      width: 85,
                                                      height: 35,
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          24, 0, 24, 0),
                                                      iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 0, 0),
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      textStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .titleSmall
                                                          .override(
                                                        fontFamily:
                                                        'Tajawal',
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .primaryText,
                                                        fontSize: 10,
                                                        letterSpacing:
                                                        0,
                                                      ),
                                                      elevation: 3,
                                                      borderSide: BorderSide(
                                                        color:
                                                        Color(0xFFD50066),
                                                        width: 1.5,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          20),
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: 'الكل',
                                                    options: FFButtonOptions(
                                                      width: 85,
                                                      height: 35,
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          24, 0, 24, 0),
                                                      iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 0, 0),
                                                      color: Color(0xFFD50066),
                                                      textStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .titleSmall
                                                          .override(
                                                        fontFamily:
                                                        'Tajawal',
                                                        color: Colors
                                                            .white,
                                                        fontSize: 10,
                                                        letterSpacing:
                                                        0,
                                                      ),
                                                      elevation: 3,
                                                      borderSide: BorderSide(
                                                        color:
                                                        Color(0xFFD50066),
                                                        width: 1.5,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          20),
                                                    ),
                                                  ),
                                                ]
                                                    .divide(SizedBox(width: 5))
                                                    .around(SizedBox(width: 5)),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 20, 20, 0),
                                            child: Container(
                                              width: double.infinity,
                                              height: MediaQuery.sizeOf(context)
                                                  .height *
                                                  0.25,
                                              decoration: BoxDecoration(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                height: 476,
                                                child: Stack(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 0, 40),
                                                      child: PageView(
                                                        scrollDirection:
                                                        Axis.horizontal,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                8),
                                                            child: Image.asset(
                                                              'assets/images/h.png',
                                                              width: 300,
                                                              height: 200,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                8),
                                                            child: Image.asset(
                                                              'assets/images/h.png',
                                                              width: 300,
                                                              height: 200,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                8),
                                                            child: Image.asset(
                                                              'assets/images/h.png',
                                                              width: 300,
                                                              height: 200,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                      AlignmentDirectional(
                                                          0, 1),
                                                      child: Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16, 0,
                                                            0, 45),

                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.end,
                                            children: [
                                              Align(
                                                alignment:
                                                AlignmentDirectional(1, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 10, 0),
                                                  child: Text(
                                                    'الفئات',
                                                    style: Appwidget.LgihtbText(),
                                                  ),
                                                ),
                                              ),
                                            ]
                                                .divide(SizedBox(width: 30))
                                                .around(SizedBox(width: 30)),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 10, 0, 0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      InkWell(
                                                        onTap: () async {
                                                       Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductWidget()));
                                                        },
                                                        child: BranchesWidget(),
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
                                  ],
                                ),
                                // Generated code for this Row Widget...
                                BarWidget(),],),),),],),),],),),),),),);}
}

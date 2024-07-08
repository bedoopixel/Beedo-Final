import '../Favor_screen/Favor_Screen.dart';
import '../Personal_Screens/Personal_Screen.dart';
import '../Product/product_widget.dart';
import '../cart_screen/Cart_Screen.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'Home_Screen1/home_page_main_model.dart';
export 'Home_Screen1/home_page_main_model.dart';

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
  late HomePageMainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageMainModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
                      color: Color(0xFFD50066),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                  fontFamily: 'Tajawal',
                                  color: Colors.white,
                                  fontSize: 25,
                                  letterSpacing: 0,
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const PersonalScreenWidget()),
                                  );
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
                          padding: EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width,
                            height: MediaQuery.sizeOf(context).height * 0.8,
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
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 30, 0, 0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.9,
                                      height:
                                      MediaQuery.sizeOf(context).height *
                                          0.07,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                10, 0, 0, 0),
                                            child: Icon(
                                              Icons.linear_scale_rounded,
                                              color: Color(0xFFD50066),
                                              size: 30,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 0, 8, 0),
                                              child: TextFormField(
                                                controller:
                                                _model.textController,
                                                focusNode:
                                                _model.textFieldFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelMedium
                                                      .override(
                                                    fontFamily:
                                                    'Readex Pro',
                                                    letterSpacing: 0,
                                                  ),
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
                                                  errorBorder: InputBorder.none,
                                                  focusedErrorBorder:
                                                  InputBorder.none,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Color(0xFF6D7478),
                                                  letterSpacing: 0,
                                                ),
                                                textAlign: TextAlign.end,
                                                validator: _model
                                                    .textControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 10, 0),
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
                                              MainAxisAlignment.spaceEvenly,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
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
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .secondaryBackground,
                                                    textStyle: FlutterFlowTheme
                                                        .of(context)
                                                        .titleSmall
                                                        .override(
                                                      fontFamily: 'Tajawal',
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .primaryText,
                                                      fontSize: 10,
                                                      letterSpacing: 0,
                                                    ),
                                                    elevation: 3,
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFD50066),
                                                      width: 1.5,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        20),
                                                  ),
                                                ),
                                                FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
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
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .secondaryBackground,
                                                    textStyle: FlutterFlowTheme
                                                        .of(context)
                                                        .titleSmall
                                                        .override(
                                                      fontFamily: 'Tajawal',
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .primaryText,
                                                      fontSize: 10,
                                                      letterSpacing: 0,
                                                    ),
                                                    elevation: 3,
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFD50066),
                                                      width: 1.5,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        20),
                                                  ),
                                                ),
                                                FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
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
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .secondaryBackground,
                                                    textStyle: FlutterFlowTheme
                                                        .of(context)
                                                        .titleSmall
                                                        .override(
                                                      fontFamily: 'Tajawal',
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .primaryText,
                                                      fontSize: 10,
                                                      letterSpacing: 0,
                                                    ),
                                                    elevation: 3,
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFD50066),
                                                      width: 1.5,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        20),
                                                  ),
                                                ),
                                                FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
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
                                                    textStyle: FlutterFlowTheme
                                                        .of(context)
                                                        .titleSmall
                                                        .override(
                                                      fontFamily: 'Tajawal',
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      letterSpacing: 0,
                                                    ),
                                                    elevation: 3,
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFD50066),
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
                                                      controller: _model
                                                          .pageViewController ??=
                                                          PageController(
                                                              initialPage: 0),
                                                      scrollDirection:
                                                      Axis.horizontal,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
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
                                                              .circular(8),
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
                                                              .circular(8),
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
                                                          .fromSTEB(
                                                          16, 0, 0, 45),
                                                      child: smooth_page_indicator
                                                          .SmoothPageIndicator(
                                                        controller: _model
                                                            .pageViewController ??=
                                                            PageController(
                                                                initialPage: 0),
                                                        count: 3,
                                                        axisDirection:
                                                        Axis.horizontal,
                                                        onDotClicked:
                                                            (i) async {
                                                          await _model
                                                              .pageViewController!
                                                              .animateToPage(
                                                            i,
                                                            duration: Duration(
                                                                milliseconds:
                                                                500),
                                                            curve: Curves.ease,
                                                          );
                                                        },
                                                        effect: smooth_page_indicator
                                                            .ExpandingDotsEffect(
                                                          expansionFactor: 3,
                                                          spacing: 5,
                                                          radius: 16,
                                                          dotWidth: 10,
                                                          dotHeight: 8,
                                                          dotColor:
                                                          Color(0xFFCDD9DF),
                                                          activeDotColor:
                                                          Color(0xFFD50066),
                                                          paintStyle:
                                                          PaintingStyle
                                                              .fill,
                                                        ),
                                                      ),
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
                                                  textAlign: TextAlign.end,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 18,
                                                    letterSpacing: 0,
                                                  ),
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
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      width: 80,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child:
                                                      SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 60,
                                                              height: 60,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                              BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                              Image.asset(
                                                                'assets/images/BAG.png',
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  0,
                                                                  10,
                                                                  0,
                                                                  0),
                                                              child: Text(
                                                                'الصحة والجمال',
                                                                textAlign:
                                                                TextAlign
                                                                    .center,
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium
                                                                    .override(
                                                                  fontFamily:
                                                                  'Tajawal',
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                  12,
                                                                  letterSpacing:
                                                                  0,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 80,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child:
                                                      SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 60,
                                                              height: 60,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                              BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                              Image.asset(
                                                                'assets/images/BAG.png',
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  0,
                                                                  10,
                                                                  0,
                                                                  0),
                                                              child: Text(
                                                                'الصحة والجمال',
                                                                textAlign:
                                                                TextAlign
                                                                    .center,
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium
                                                                    .override(
                                                                  fontFamily:
                                                                  'Tajawal',
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                  12,
                                                                  letterSpacing:
                                                                  0,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 80,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child:
                                                      SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 60,
                                                              height: 60,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                              BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                              Image.asset(
                                                                'assets/images/BAG.png',
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  0,
                                                                  10,
                                                                  0,
                                                                  0),
                                                              child: Text(
                                                                'الصحة والجمال',
                                                                textAlign:
                                                                TextAlign
                                                                    .center,
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium
                                                                    .override(
                                                                  fontFamily:
                                                                  'Tajawal',
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                  12,
                                                                  letterSpacing:
                                                                  0,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
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
                                                      onTap: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(builder: (context) => const ProductWidget()),
                                                        );
                                                      },
                                                      child: Container(
                                                        width: 80,
                                                        decoration:
                                                        BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child:
                                                        SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Container(
                                                                width: 60,
                                                                height: 60,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child:
                                                                Image.asset(
                                                                  'assets/images/BAG.png',
                                                                  fit: BoxFit
                                                                      .scaleDown,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0,
                                                                    10,
                                                                    0,
                                                                    0),
                                                                child: Text(
                                                                  'الصحة والجمال',
                                                                  textAlign:
                                                                  TextAlign
                                                                      .center,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyMedium
                                                                      .override(
                                                                    fontFamily:
                                                                    'Tajawal',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                    12,
                                                                    letterSpacing:
                                                                    0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                    children: [
                                                      Container(
                                                        width: 80,
                                                        decoration:
                                                        BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child:
                                                        SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Container(
                                                                width: 60,
                                                                height: 60,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child:
                                                                Image.asset(
                                                                  'assets/images/BAG.png',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0,
                                                                    10,
                                                                    0,
                                                                    0),
                                                                child: Text(
                                                                  'الصحة والجمال',
                                                                  textAlign:
                                                                  TextAlign
                                                                      .center,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyMedium
                                                                      .override(
                                                                    fontFamily:
                                                                    'Tajawal',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                    12,
                                                                    letterSpacing:
                                                                    0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 80,
                                                        decoration:
                                                        BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child:
                                                        SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Container(
                                                                width: 60,
                                                                height: 60,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child:
                                                                Image.asset(
                                                                  'assets/images/BAG.png',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0,
                                                                    10,
                                                                    0,
                                                                    0),
                                                                child: Text(
                                                                  'الصحة والجمال',
                                                                  textAlign:
                                                                  TextAlign
                                                                      .center,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyMedium
                                                                      .override(
                                                                    fontFamily:
                                                                    'Tajawal',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                    12,
                                                                    letterSpacing:
                                                                    0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 80,
                                                        decoration:
                                                        BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child:
                                                        SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Container(
                                                                width: 60,
                                                                height: 60,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child:
                                                                Image.asset(
                                                                  'assets/images/BAG.png',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0,
                                                                    10,
                                                                    0,
                                                                    0),
                                                                child: Text(
                                                                  'الصحة والجمال',
                                                                  textAlign:
                                                                  TextAlign
                                                                      .center,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyMedium
                                                                      .override(
                                                                    fontFamily:
                                                                    'Tajawal',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                    12,
                                                                    letterSpacing:
                                                                    0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 80,
                                                        decoration:
                                                        BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child:
                                                        SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Container(
                                                                width: 60,
                                                                height: 60,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child:
                                                                Image.asset(
                                                                  'assets/images/BAG.png',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0,
                                                                    10,
                                                                    0,
                                                                    0),
                                                                child: Text(
                                                                  'الصحة والجمال',
                                                                  textAlign:
                                                                  TextAlign
                                                                      .center,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyMedium
                                                                      .override(
                                                                    fontFamily:
                                                                    'Tajawal',
                                                                    color: FlutterFlowTheme.of(context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                    12,
                                                                    letterSpacing:
                                                                    0,
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
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment:
                                            AlignmentDirectional(0, 1),
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
                                                MainAxisAlignment
                                                    .spaceEvenly,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                    Colors.transparent,
                                                    focusColor:
                                                    Colors.transparent,
                                                    hoverColor:
                                                    Colors.transparent,
                                                    highlightColor:
                                                    Colors.transparent,
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const CartScreenWidget()),
                                                      );
                                                    },
                                                    child: FaIcon(
                                                      FontAwesomeIcons
                                                          .shoppingBag,
                                                      color: Color(0xFFF4F4F5),
                                                      size: 26,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .magento,
                                                        color:
                                                        Color(0xFFD60055),
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
                                                    onTap: (){
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const FavorScreenWidget()),
                                                      );
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
                                        ],
                                      ),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

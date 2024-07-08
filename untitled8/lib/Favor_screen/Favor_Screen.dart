import 'package:go_router/go_router.dart';
import '../Home_Screens/home_page_main.dart';
import '../cart_screen/Cart_Screen.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'Favor_Screen_Model.dart';
export 'Favor_Screen_Model.dart';

class FavorScreenWidget extends StatefulWidget {
  const FavorScreenWidget({
    Key? key,
    bool? fav,
    int? celectedPageIndex,
    bool? hidden,
  })  : this.fav = fav ?? false,
        this.celectedPageIndex = celectedPageIndex ?? 1,
        this.hidden = hidden ?? false,
        super(key: key);

  final bool fav;
  final int celectedPageIndex;
  final bool hidden;

  @override
  _FavorScreenWidgetState createState() => _FavorScreenWidgetState();
}

class _FavorScreenWidgetState extends State<FavorScreenWidget> {
  late FavorScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavorScreenModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFD60055),
        body: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 1,
          decoration: BoxDecoration(
            color: Color(0xFFD60055),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.white,
                        borderRadius: 20,
                        borderWidth: 1,
                        buttonSize: 45,
                        fillColor: Colors.white,
                        icon: FaIcon(
                          FontAwesomeIcons.shoppingBag,
                          color: Color(0xFFD60055),
                          size: 28,
                        ),
                        onPressed: () async {
                          context.pushNamed('Cart_Screen');
                        },
                      ),
                    ),
                    Text(
                      'المفضلة',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Tajawal',
                        color: Color(0xFFF4F4F5),
                        fontSize: 22,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.white,
                        borderRadius: 20,
                        borderWidth: 1,
                        buttonSize: 45,
                        fillColor: Colors.white,
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xFFD60055),
                          size: 28,
                        ),
                        onPressed: () async {
                          context.pushNamed('home_page_main');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 34, 0, 0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.79,
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                      child: Container(
                                        width: 175,
                                        height: 280,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(20),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Icon(
                                                  Icons.favorite_sharp,
                                                  color: Color(0xFFD60055),
                                                  size: 24,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 20),
                                                  child: Container(
                                                    width: 50,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFD50066),
                                                      borderRadius:
                                                      BorderRadius.only(
                                                        bottomLeft:
                                                        Radius.circular(50),
                                                        bottomRight:
                                                        Radius.circular(0),
                                                        topLeft:
                                                        Radius.circular(0),
                                                        topRight:
                                                        Radius.circular(50),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                      children: [
                                                        Text(
                                                          'جديد',
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Tajawal',
                                                            color: Colors
                                                                .white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                  AlignmentDirectional(
                                                      0, 0),
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 5, 0, 0),
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

                                                      },
                                                      child: Container(
                                                        width: 140,
                                                        height: 120,
                                                        decoration:
                                                        BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                        child: Container(
                                                          width:
                                                          double.infinity,
                                                          height:
                                                          double.infinity,
                                                          child: Stack(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    40),
                                                                child: PageView(
                                                                  controller: _model
                                                                      .pageViewController ??=
                                                                      PageController(
                                                                          initialPage:
                                                                          0),
                                                                  scrollDirection:
                                                                  Axis.horizontal,
                                                                  children: [
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          8),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/BAG.png',
                                                                        width:
                                                                        300,
                                                                        height:
                                                                        200,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                    ),
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          8),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/BAG.png',
                                                                        width:
                                                                        300,
                                                                        height:
                                                                        200,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                    ),
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          8),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/BAG.png',
                                                                        width:
                                                                        300,
                                                                        height:
                                                                        200,
                                                                        fit: BoxFit
                                                                            .contain,
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
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      20),
                                                                  child: smooth_page_indicator
                                                                      .SmoothPageIndicator(
                                                                    controller: _model
                                                                        .pageViewController ??=
                                                                        PageController(
                                                                            initialPage:
                                                                            0),
                                                                    count: 3,
                                                                    axisDirection:
                                                                    Axis.horizontal,
                                                                    onDotClicked:
                                                                        (i) async {
                                                                      await _model
                                                                          .pageViewController!
                                                                          .animateToPage(
                                                                        i,
                                                                        duration:
                                                                        Duration(milliseconds: 500),
                                                                        curve: Curves
                                                                            .ease,
                                                                      );
                                                                    },
                                                                    effect: smooth_page_indicator
                                                                        .SlideEffect(
                                                                      spacing:
                                                                      4,
                                                                      radius:
                                                                      10,
                                                                      dotWidth:
                                                                      5,
                                                                      dotHeight:
                                                                      5,
                                                                      dotColor:
                                                                      Color(
                                                                          0xFFEBD0D0),
                                                                      activeDotColor:
                                                                      Color(
                                                                          0xFFD50066),
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
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      RatingBar.builder(
                                                        onRatingUpdate: (newValue) =>
                                                            setState(() => _model
                                                                .ratingBarValue =
                                                                newValue),
                                                        itemBuilder:
                                                            (context, index) =>
                                                            Icon(
                                                              Icons.star_rounded,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .tertiary,
                                                            ),
                                                        direction:
                                                        Axis.horizontal,
                                                        initialRating: _model
                                                            .ratingBarValue ??= 1,
                                                        unratedColor:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .accent3,
                                                        itemCount: 1,
                                                        itemSize: 18,
                                                        glowColor:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .tertiary,
                                                      ),
                                                      Text(
                                                        '4.9',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Readex Pro',
                                                          color: Color(
                                                              0x9A888C8E),
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 10, 0),
                                                  child: Text(
                                                    'بنك باج',
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Tajawal',
                                                      color:
                                                      Color(0xFF595D5F),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 8, 0),
                                                  child: Text(
                                                    'حقيبة نسائية يدوية من\n الجلد الطبيعي',
                                                    textAlign: TextAlign.end,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Tajawal',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Container(
                                                  width: 80,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Text(
                                                            '  20% وفر',
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodyMedium
                                                                .override(
                                                              fontFamily:
                                                              'Tajawal',
                                                              color: Color(
                                                                  0xFFD50066),
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons.sell_outlined,
                                                            color: Color(
                                                                0xFFD50066),
                                                            size: 20,
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        '40.00 YER',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Readex Pro',
                                                          fontSize: 12,
                                                          decoration:
                                                          TextDecoration
                                                              .lineThrough,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: 80,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFD50066),
                                                    borderRadius:
                                                    BorderRadius.only(
                                                      bottomLeft:
                                                      Radius.circular(50),
                                                      bottomRight:
                                                      Radius.circular(0),
                                                      topLeft:
                                                      Radius.circular(50),
                                                      topRight:
                                                      Radius.circular(0),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                    AlignmentDirectional(
                                                        0, 0),
                                                    child: Text(
                                                      'افضل المنتجات',
                                                      textAlign: TextAlign.end,
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Tajawal',
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: 175,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFD50066),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                  Radius.circular(50),
                                                  bottomRight:
                                                  Radius.circular(50),
                                                  topLeft: Radius.circular(0),
                                                  topRight: Radius.circular(0),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '40,000 YER',
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily:
                                                      'Readex Pro',
                                                      color: Colors.white,
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
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, 1),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.7,
                                  height:
                                  MediaQuery.sizeOf(context).height * 0.08,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD60055),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const CartScreenWidget()),
                                          );
                                        },
                                        child: FaIcon(
                                          FontAwesomeIcons.shoppingBag,
                                          color: Color(0xFFF4F4F5),
                                          size: 26,
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const HomePageMainWidget()),
                                            );
                                          },
                                          child: FaIcon(
                                            FontAwesomeIcons.magento,
                                            color: Colors.white,
                                            size: 28,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          shape: BoxShape.circle,
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {

                                          },
                                          child: Icon(
                                            Icons.favorite_sharp,
                                            color: Color(0xFFD60055),
                                            size: 26,
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
                    ].divide(SizedBox(height: 1)),
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

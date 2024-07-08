import '../Home_Screens/home_page_main.dart';
import '../cart_screen/Cart_Screen.dart';
import '../product_screen/product_screen_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'product_model.dart';
export 'product_model.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  late ProductModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductModel());

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
          body: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 1,
            decoration: BoxDecoration(
              color: Color(0xFFD50066),
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
                  padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlutterFlowIconButton(
                        borderRadius: 20,
                        borderWidth: 1,
                        buttonSize: 50,
                        fillColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                        icon: FaIcon(
                          FontAwesomeIcons.shoppingBag,
                          color: Color(0xFFD50066),
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const CartScreenWidget()),
                          );
                        },
                      ),
                      Text(
                        'الصحة والجمال',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Tajawal',
                          color: FlutterFlowTheme.of(context)
                              .primaryBackground,
                          fontSize: 25,
                          letterSpacing: 0,
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 20,
                        borderWidth: 1,
                        buttonSize: 50,
                        fillColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xFFD50066),
                          size: 30,
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomePageMainWidget()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height * 0.8,
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
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: MediaQuery.sizeOf(context).height * 0.07,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Icon(
                                      Icons.linear_scale_rounded,
                                      color: Color(0xFFD50066),
                                      size: 30,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 8, 0),
                                      child: TextFormField(
                                        controller: _model.textController,
                                        focusNode: _model.textFieldFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0,
                                          ),
                                          hintText: 'اكتب للبحث',
                                          hintStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                            fontFamily: 'Tajawal',
                                            fontSize: 18,
                                            letterSpacing: 0,
                                          ),
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                        ),
                                        style: FlutterFlowTheme.of(context)
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 30, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async{
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const ProductScreenWidget()),
                                            );
                                          },
                                          child: Container(
                                            width: 175,
                                            height: 280,
                                            decoration: BoxDecoration(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                              borderRadius:
                                              BorderRadius.circular(20),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          5, 0, 0, 0),
                                                      child: Icon(
                                                        Icons.favorite_sharp,
                                                        color:
                                                        Color(0xFFD60055),
                                                        size: 24,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 0, 20),
                                                      child: Container(
                                                        width: 50,
                                                        height: 20,
                                                        decoration:
                                                        BoxDecoration(
                                                          color:
                                                          Color(0xFFD50066),
                                                          borderRadius:
                                                          BorderRadius.only(
                                                            bottomLeft:
                                                            Radius.circular(
                                                                50),
                                                            bottomRight:
                                                            Radius.circular(
                                                                0),
                                                            topLeft:
                                                            Radius.circular(
                                                                0),
                                                            topRight:
                                                            Radius.circular(
                                                                50),
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
                                                                letterSpacing:
                                                                0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(builder: (context) => const ProductScreenWidget()),
                                                            );
                                                          },
                                                          child: Container(
                                                            width: 140,
                                                            height: 120,
                                                            decoration:
                                                            BoxDecoration(),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: double
                                                                  .infinity,
                                                              child: Stack(
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        40),
                                                                    child:
                                                                    PageView(
                                                                      controller: _model
                                                                          .pageViewController1 ??=
                                                                          PageController(
                                                                              initialPage: 0),
                                                                      scrollDirection:
                                                                      Axis.horizontal,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                          BorderRadius.circular(8),
                                                                          child:
                                                                          Image.asset(
                                                                            'assets/images/BAG.png',
                                                                            width:
                                                                            300,
                                                                            height:
                                                                            200,
                                                                            fit:
                                                                            BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                          BorderRadius.circular(8),
                                                                          child:
                                                                          Image.asset(
                                                                            'assets/images/BAG.png',
                                                                            width:
                                                                            300,
                                                                            height:
                                                                            200,
                                                                            fit:
                                                                            BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                          BorderRadius.circular(8),
                                                                          child:
                                                                          Image.asset(
                                                                            'assets/images/BAG.png',
                                                                            width:
                                                                            300,
                                                                            height:
                                                                            200,
                                                                            fit:
                                                                            BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        1),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          20),
                                                                      child: smooth_page_indicator
                                                                          .SmoothPageIndicator(
                                                                        controller:
                                                                        _model.pageViewController1 ??=
                                                                            PageController(initialPage: 0),
                                                                        count:
                                                                        3,
                                                                        axisDirection:
                                                                        Axis.horizontal,
                                                                        onDotClicked:
                                                                            (i) async {
                                                                          await _model
                                                                              .pageViewController1!
                                                                              .animateToPage(
                                                                            i,
                                                                            duration:
                                                                            Duration(milliseconds: 500),
                                                                            curve:
                                                                            Curves.ease,
                                                                          );
                                                                        },
                                                                        effect:
                                                                        smooth_page_indicator.SlideEffect(
                                                                          spacing:
                                                                          4,
                                                                          radius:
                                                                          10,
                                                                          dotWidth:
                                                                          5,
                                                                          dotHeight:
                                                                          5,
                                                                          dotColor:
                                                                          Color(0xFFEBD0D0),
                                                                          activeDotColor:
                                                                          Color(0xFFD50066),
                                                                          paintStyle:
                                                                          PaintingStyle.fill,
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
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          10, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          RatingBar.builder(
                                                            onRatingUpdate: (newValue) =>
                                                                setState(() =>
                                                                _model.ratingBarValue1 =
                                                                    newValue),
                                                            itemBuilder:
                                                                (context,
                                                                index) =>
                                                                Icon(
                                                                  Icons
                                                                      .star_rounded,
                                                                  color: FlutterFlowTheme
                                                                      .of(context)
                                                                      .tertiary,
                                                                ),
                                                            direction:
                                                            Axis.horizontal,
                                                            initialRating: _model
                                                                .ratingBarValue1 ??= 1,
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
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodyMedium
                                                                .override(
                                                              fontFamily:
                                                              'Readex Pro',
                                                              color: Color(
                                                                  0x9A888C8E),
                                                              fontSize: 12,
                                                              letterSpacing:
                                                              0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 10, 0),
                                                      child: Text(
                                                        'بنك باج',
                                                        style: FlutterFlowTheme
                                                            .of(context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Tajawal',
                                                          color: Color(
                                                              0xFF595D5F),
                                                          fontSize: 12,
                                                          letterSpacing: 0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 8, 0),
                                                      child: Text(
                                                        'حقيبة نسائية يدوية من\n الجلد الطبيعي',
                                                        textAlign:
                                                        TextAlign.end,
                                                        style: FlutterFlowTheme
                                                            .of(context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Tajawal',
                                                          letterSpacing: 0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Container(
                                                      width: 80,
                                                      height: 40,
                                                      decoration:
                                                      BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            children: [
                                                              Text(
                                                                '  20% وفر',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium
                                                                    .override(
                                                                  fontFamily:
                                                                  'Tajawal',
                                                                  color: Color(
                                                                      0xFFD50066),
                                                                  fontSize:
                                                                  14,
                                                                  letterSpacing:
                                                                  0,
                                                                ),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .sell_outlined,
                                                                color: Color(
                                                                    0xFFD50066),
                                                                size: 20,
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            '40.00 YER',
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodyMedium
                                                                .override(
                                                              fontFamily:
                                                              'Readex Pro',
                                                              fontSize: 12,
                                                              letterSpacing:
                                                              0,
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
                                                        color:
                                                        Color(0xFFD50066),
                                                        borderRadius:
                                                        BorderRadius.only(
                                                          bottomLeft:
                                                          Radius.circular(
                                                              50),
                                                          bottomRight:
                                                          Radius.circular(
                                                              0),
                                                          topLeft:
                                                          Radius.circular(
                                                              50),
                                                          topRight:
                                                          Radius.circular(
                                                              0),
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                        child: Text(
                                                          'افضل المنتجات',
                                                          textAlign:
                                                          TextAlign.end,
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Tajawal',
                                                            color: Colors
                                                                .white,
                                                            fontSize: 12,
                                                            letterSpacing:
                                                            0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Align(
                                                  alignment:
                                                  AlignmentDirectional(
                                                      0, 1),
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 5, 0, 0),
                                                    child: Container(
                                                      width: 175,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                        color:
                                                        Color(0xFFD50066),
                                                        borderRadius:
                                                        BorderRadius.only(
                                                          bottomLeft:
                                                          Radius.circular(
                                                              50),
                                                          bottomRight:
                                                          Radius.circular(
                                                              50),
                                                          topLeft:
                                                          Radius.circular(
                                                              0),
                                                          topRight:
                                                          Radius.circular(
                                                              0),
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
                                                            '40,000 YER',
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodyMedium
                                                                .override(
                                                              fontFamily:
                                                              'Readex Pro',
                                                              color: Colors
                                                                  .white,
                                                              letterSpacing:
                                                              0,
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Container(
                                          width: 175,
                                          height: 280,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
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
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        5, 0, 0, 0),
                                                    child: Icon(
                                                      Icons.favorite_sharp,
                                                      color: Color(0xFFD60055),
                                                      size: 24,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 0, 20),
                                                    child: Container(
                                                      width: 50,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                        color:
                                                        Color(0xFFD50066),
                                                        borderRadius:
                                                        BorderRadius.only(
                                                          bottomLeft:
                                                          Radius.circular(
                                                              50),
                                                          bottomRight:
                                                          Radius.circular(
                                                              0),
                                                          topLeft:
                                                          Radius.circular(
                                                              0),
                                                          topRight:
                                                          Radius.circular(
                                                              50),
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
                                                              letterSpacing:
                                                              0,
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
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(builder: (context) => const ProductScreenWidget()),
                                                          );
                                                        },
                                                        child: Container(
                                                          width: 140,
                                                          height: 120,
                                                          decoration:
                                                          BoxDecoration(),
                                                          child: Container(
                                                            width:
                                                            double.infinity,
                                                            height:
                                                            double.infinity,
                                                            child: Stack(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      40),
                                                                  child:
                                                                  PageView(
                                                                    controller: _model
                                                                        .pageViewController2 ??=
                                                                        PageController(
                                                                            initialPage:
                                                                            0),
                                                                    scrollDirection:
                                                                    Axis.horizontal,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                        BorderRadius.circular(8),
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
                                                                        BorderRadius.circular(8),
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
                                                                        BorderRadius.circular(8),
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
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        20),
                                                                    child: smooth_page_indicator
                                                                        .SmoothPageIndicator(
                                                                      controller: _model
                                                                          .pageViewController2 ??=
                                                                          PageController(
                                                                              initialPage: 0),
                                                                      count: 3,
                                                                      axisDirection:
                                                                      Axis.horizontal,
                                                                      onDotClicked:
                                                                          (i) async {
                                                                        await _model
                                                                            .pageViewController2!
                                                                            .animateToPage(
                                                                          i,
                                                                          duration:
                                                                          Duration(milliseconds: 500),
                                                                          curve:
                                                                          Curves.ease,
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
                                                                        Color(0xFFEBD0D0),
                                                                        activeDotColor:
                                                                        Color(0xFFD50066),
                                                                        paintStyle:
                                                                        PaintingStyle.fill,
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
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        10, 0, 0, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        RatingBar.builder(
                                                          onRatingUpdate: (newValue) =>
                                                              setState(() =>
                                                              _model.ratingBarValue2 =
                                                                  newValue),
                                                          itemBuilder: (context,
                                                              index) =>
                                                              Icon(
                                                                Icons.star_rounded,
                                                                color: FlutterFlowTheme
                                                                    .of(context)
                                                                    .tertiary,
                                                              ),
                                                          direction:
                                                          Axis.horizontal,
                                                          initialRating: _model
                                                              .ratingBarValue2 ??= 1,
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
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Readex Pro',
                                                            color: Color(
                                                                0x9A888C8E),
                                                            fontSize: 12,
                                                            letterSpacing:
                                                            0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 10, 0),
                                                    child: Text(
                                                      'بنك باج',
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Tajawal',
                                                        color: Color(
                                                            0xFF595D5F),
                                                        fontSize: 12,
                                                        letterSpacing: 0,
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
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 8, 0),
                                                    child: Text(
                                                      'حقيبة نسائية يدوية من\n الجلد الطبيعي',
                                                      textAlign: TextAlign.end,
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Tajawal',
                                                        letterSpacing: 0,
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
                                                    decoration: BoxDecoration(),
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
                                                                fontSize:
                                                                14,
                                                                letterSpacing:
                                                                0,
                                                              ),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .sell_outlined,
                                                              color: Color(
                                                                  0xFFD50066),
                                                              size: 20,
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          '40.00 YER',
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Readex Pro',
                                                            fontSize: 12,
                                                            letterSpacing:
                                                            0,
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
                                                        textAlign:
                                                        TextAlign.end,
                                                        style: FlutterFlowTheme
                                                            .of(context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Tajawal',
                                                          color:
                                                          Colors.white,
                                                          fontSize: 12,
                                                          letterSpacing: 0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Container(
                                                  width: 175,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFD50066),
                                                    borderRadius:
                                                    BorderRadius.only(
                                                      bottomLeft:
                                                      Radius.circular(50),
                                                      bottomRight:
                                                      Radius.circular(50),
                                                      topLeft:
                                                      Radius.circular(0),
                                                      topRight:
                                                      Radius.circular(0),
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
                                                        '40,000 YER',
                                                        style: FlutterFlowTheme
                                                            .of(context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Readex Pro',
                                                          color:
                                                          Colors.white,
                                                          letterSpacing: 0,
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
                              ],
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

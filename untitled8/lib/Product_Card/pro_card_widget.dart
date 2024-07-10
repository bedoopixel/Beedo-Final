import 'package:go_router/go_router.dart';
import 'package:untitled2/product_screen/product_screen_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'pro_card_model.dart';
export 'pro_card_model.dart';

class ProCardWidget extends StatefulWidget {
  const ProCardWidget({super.key});

  @override
  State<ProCardWidget> createState() => _ProCardWidgetState();
}

class _ProCardWidgetState extends State<ProCardWidget> {
  late ProCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreenWidget()));
        },
        child: Container(
          width: 175,
          height: 280,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_sharp,
                    color: Color(0xFFD60055),
                    size: 24,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: Container(
                      width: 50,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Color(0xFFD50066),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'جديد',
                            style:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Tajawal',
                              color: Colors.white,
                              letterSpacing: 0,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('product_screen');
                        },
                        child: Container(
                          width: 140,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                                  child: PageView(
                                    controller: _model.pageViewController ??=
                                        PageController(initialPage: 0),
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          'assets/images/BAG.png',
                                          width: 300,
                                          height: 200,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          'assets/images/BAG.png',
                                          width: 300,
                                          height: 200,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          'assets/images/BAG.png',
                                          width: 300,
                                          height: 200,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 20),
                                    child:
                                    smooth_page_indicator.SmoothPageIndicator(
                                      controller: _model.pageViewController ??=
                                          PageController(initialPage: 0),
                                      count: 3,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) async {
                                        await _model.pageViewController!
                                            .animateToPage(
                                          i,
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                        setState(() {});
                                      },
                                      effect: smooth_page_indicator.SlideEffect(
                                        spacing: 4,
                                        radius: 10,
                                        dotWidth: 5,
                                        dotHeight: 5,
                                        dotColor: Color(0xFFEBD0D0),
                                        activeDotColor: Color(0xFFD50066),
                                        paintStyle: PaintingStyle.fill,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        RatingBar.builder(
                          onRatingUpdate: (newValue) =>
                              setState(() => _model.ratingBarValue = newValue),
                          itemBuilder: (context, index) => Icon(
                            Icons.star_rounded,
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                          direction: Axis.horizontal,
                          initialRating: _model.ratingBarValue ??= 1,
                          unratedColor: FlutterFlowTheme.of(context).accent3,
                          itemCount: 1,
                          itemSize: 18,
                          glowColor: FlutterFlowTheme.of(context).tertiary,
                        ),
                        Text(
                          '4.9',
                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Color(0x9A888C8E),
                            fontSize: 12,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                    child: Text(
                      'بنك باج',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Tajawal',
                        color: Color(0xFF595D5F),
                        fontSize: 12,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                    child: Text(
                      'حقيبة نسائية يدوية من\n الجلد الطبيعي',
                      textAlign: TextAlign.end,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Tajawal',
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '  20% وفر',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                fontFamily: 'Tajawal',
                                color: Color(0xFFD50066),
                                fontSize: 14,
                                letterSpacing: 0,
                              ),
                            ),
                            Icon(
                              Icons.sell_outlined,
                              color: Color(0xFFD50066),
                              size: 20,
                            ),
                          ],
                        ),
                        Text(
                          '40.00 YER',
                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 12,
                            letterSpacing: 0,
                            decoration: TextDecoration.lineThrough,
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
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Text(
                        'افضل المنتجات',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Tajawal',
                          color: Colors.white,
                          fontSize: 12,
                          letterSpacing: 0,
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
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '40,000 YER',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

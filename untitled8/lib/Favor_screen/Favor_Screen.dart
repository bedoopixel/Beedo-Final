import 'package:go_router/go_router.dart';
import 'package:untitled2/Bar/bar_widget.dart';
import 'package:untitled2/Home_Screens/home_page_main.dart';
import 'package:untitled2/cart_screen/Cart_Screen.dart';
import 'package:untitled2/text.dart';
import '../Product_Card/pro_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(

      child: Scaffold(
        key: scaffoldKey,
        body: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 1,
          decoration: BoxDecoration(
            color: Color(0xFFD50066),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 64, 0, 0),
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
                          color: FlutterFlowTheme.of(context).accent1,
                          size: 28,
                        ),
                        onPressed: () async {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreenWidget()));
                        },
                      ),
                    ),
                    Text(
                      'المفضلة',
                      style:Appwidget.bodyMedium(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: FlutterFlowIconButton(
                        borderRadius: 20,
                        borderWidth: 1,
                        buttonSize: 45,
                        fillColor: Colors.white,
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          color: FlutterFlowTheme.of(context).accent1,
                          size: 28,
                        ),
                        onPressed: () async {
Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePageMainWidget()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 26, 0, 0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.84,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ProCardWidget(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      BarWidget(),
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

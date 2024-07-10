import 'package:untitled2/Bar/bar_widget.dart';
import 'package:untitled2/Cart_Card/cart_card_widget.dart';
import 'package:untitled2/text.dart';
import '../Home_Screens/home_page_main.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
                    color: FlutterFlowTheme.of(context).accent1,
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
                                borderColor: FlutterFlowTheme.of(context).accent1,
                                borderRadius: 20,
                                borderWidth: 1,
                                buttonSize: 45,
                                fillColor: Colors.white,
                                icon: Icon(
                                  Icons.done,
                                  color: FlutterFlowTheme.of(context).accent1,
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
                                  style:Appwidget.bodyMedium(),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: FlutterFlowIconButton(
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
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CartCardWidget(),
                              BarWidget(),
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

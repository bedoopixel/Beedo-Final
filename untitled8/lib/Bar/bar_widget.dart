import 'package:untitled2/Favor_screen/Favor_Screen.dart';
import 'package:untitled2/Home_Screens/home_page_main.dart';
import 'package:untitled2/cart_screen/Cart_Screen.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'bar_model.dart';
export 'bar_model.dart';

class BarWidget extends StatefulWidget {
  const BarWidget({super.key});

  @override
  State<BarWidget> createState() => _BarWidgetState();
}

class _BarWidgetState extends State<BarWidget> {
  late BarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.7,
          height: MediaQuery.sizeOf(context).height * 0.08,
          decoration: BoxDecoration(
            color: Color(0xFFD60066),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () async {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreenWidget()));
                },
                child: FaIcon(
                  FontAwesomeIcons.shoppingBag,
                  color: Color(0xFFF4F4F5),
                  size: 26,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.circle,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: InkWell(
                    onTap: () async {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePageMainWidget()));
                    },
                    child: FaIcon(
                      FontAwesomeIcons.magento,
                      color: Color(0xFFD60066),
                      size: 28,
                    ),
                  ),
                )
              ),
              InkWell(

                onTap: () async {
Navigator.push(context, MaterialPageRoute(builder: (context)=>FavorScreenWidget()));
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
    );
  }
}

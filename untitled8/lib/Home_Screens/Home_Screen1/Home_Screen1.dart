import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'Home_Screen1_Model.dart';



class HomeScreen1Widget extends StatefulWidget {
  const HomeScreen1Widget({Key? key}) : super(key: key);

  @override
  _HomeScreen1WidgetState createState() => _HomeScreen1WidgetState();
}

class _HomeScreen1WidgetState extends State<HomeScreen1Widget> {
  late HomeScreen1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeScreen1Model());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF880E4F),
          ),
          child: Stack(
            children: [
              Container(
                width: 2,
                height: 2,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                alignment: AlignmentDirectional(0.00, 0.00),
              ),
              Align(
                alignment: AlignmentDirectional(-0.19, -0.16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/hh.png',
                    height: 322,
                    fit: BoxFit.cover,
                    alignment: Alignment(0.00, 0.00),
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

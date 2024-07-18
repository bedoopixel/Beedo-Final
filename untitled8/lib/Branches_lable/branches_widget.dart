import '/flutter_flow/flutter_flow_theme.dart';

import 'package:flutter/material.dart';
class BranchesWidget extends StatefulWidget {
  const BranchesWidget({super.key});

  @override
  State<BranchesWidget> createState() => _BranchesWidgetState();
}

class _BranchesWidgetState extends State<BranchesWidget> {


  @override
  void setState(VoidCallback callback) {
    super.setState(callback);

  }

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
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 60,
            height: 60,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'assets/images/BAG.png',
              fit: BoxFit.scaleDown,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Text(
              'الصحة والجمال',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Tajawal',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 12,
                letterSpacing: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

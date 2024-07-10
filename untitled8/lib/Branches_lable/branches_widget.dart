import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'branches_model.dart';
export 'branches_model.dart';

class BranchesWidget extends StatefulWidget {
  const BranchesWidget({super.key});

  @override
  State<BranchesWidget> createState() => _BranchesWidgetState();
}

class _BranchesWidgetState extends State<BranchesWidget> {
  late BranchesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BranchesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

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

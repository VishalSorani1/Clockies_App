import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_error_snack_bar_model.dart';
export 'custom_error_snack_bar_model.dart';

class CustomErrorSnackBarWidget extends StatefulWidget {
  const CustomErrorSnackBarWidget({
    super.key,
    required this.message,
  });

  final String? message;

  @override
  State<CustomErrorSnackBarWidget> createState() =>
      _CustomErrorSnackBarWidgetState();
}

class _CustomErrorSnackBarWidgetState extends State<CustomErrorSnackBarWidget> {
  late CustomErrorSnackBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomErrorSnackBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: const AlignmentDirectional(1.0, -1.0),
              child: Icon(
                Icons.close,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.error_outline,
                  color: FlutterFlowTheme.of(context).error1,
                  size: 24.0,
                ),
                Text(
                  valueOrDefault<String>(
                    widget.message,
                    '-',
                  ),
                  maxLines: 3,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ].divide(const SizedBox(width: 12.0)),
            ),
          ],
        ),
      ),
    );
  }
}

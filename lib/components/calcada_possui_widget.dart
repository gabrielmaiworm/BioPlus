import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcadaPossuiWidget extends StatefulWidget {
  const CalcadaPossuiWidget({
    Key key,
    this.calcada,
  }) : super(key: key);

  final DocumentReference calcada;

  @override
  _CalcadaPossuiWidgetState createState() => _CalcadaPossuiWidgetState();
}

class _CalcadaPossuiWidgetState extends State<CalcadaPossuiWidget> {
  bool switchListTileValue1;
  bool switchListTileValue2;
  bool switchListTileValue3;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                    child: Text(
                      'A Calçada Possuí',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).darkBG,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SwitchListTile(
                  value: switchListTileValue1 ??= false,
                  onChanged: (newValue) =>
                      setState(() => switchListTileValue1 = newValue),
                  title: Text(
                    'Faixa de Serviço',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          fontSize: 16,
                        ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  activeColor: FlutterFlowTheme.of(context).secondaryColor,
                  activeTrackColor: FlutterFlowTheme.of(context).primaryColor,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: switchListTileValue2 ??= false,
                  onChanged: (newValue) =>
                      setState(() => switchListTileValue2 = newValue),
                  title: Text(
                    'Faixa Livre',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          fontSize: 16,
                        ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  activeColor: FlutterFlowTheme.of(context).secondaryColor,
                  activeTrackColor: FlutterFlowTheme.of(context).primaryColor,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: switchListTileValue3 ??= false,
                  onChanged: (newValue) =>
                      setState(() => switchListTileValue3 = newValue),
                  title: Text(
                    'Faixa de Acesso',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          fontSize: 16,
                        ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  activeColor: FlutterFlowTheme.of(context).secondaryColor,
                  activeTrackColor: FlutterFlowTheme.of(context).primaryColor,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 30),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    final calcadaPossuiCreateData =
                        createCalcadaPossuiRecordData(
                      faixaServico: switchListTileValue1,
                      faixaLivre: switchListTileValue2,
                      faixaAcesso: switchListTileValue3,
                    );
                    await CalcadaPossuiRecord.createDoc(widget.calcada)
                        .set(calcadaPossuiCreateData);
                    Navigator.pop(context);
                  },
                  text: 'Salvar',
                  options: FFButtonOptions(
                    width: 100,
                    height: 35,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

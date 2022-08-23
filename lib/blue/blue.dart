import 'dart:async';
import 'dart:convert';
import 'detalhe.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter/material.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';

Timer timer;
FlutterBluePlus flutterBlue = FlutterBluePlus.instance;
List _beacons = [];
List _uuids = [];
//4B:E3:C3:C6:13:B5
String dados =
    '[{"uuids":"C0:E8:EB:69:E5:81","infos":[{"nome":"Memorial Municipal de Muriaé","dsc":"O acervo do MEMORIAL MUNICIPAL DE MURIAÉ começou a ser reunido em 1972, pelo Doutor Francisco Rogério de Castro, a fim de formar um museu para a Prefeitura Municipal de Muriaé. Em 1981 este acêrvo foi transferido à FUNDAÇÃO HENRIQUE HASTENREITER, que fora criada em 1975 por José Henrique Hastenreiter e seus irmãos. Esta Fundação funcionou até os anos 90 com o acêrvo bastante aumentado com doações da família Hastenreiter e de várias outras famílias ilustres da cidade. Neste período foram lançados 7 volumes da REVISTA DE HISTORIOGRAFIA MURIAEENSE, com artigos de vários intelectuais de Muriaé, contando a história do município. No fim dos anos 90 todo acêrvo reunido até então, foi transferido à LOJA MAÇONICA LABOR, FORÇA E VIRTUDE que depois, em 2002, o transferiu à Prefeitura Municipal quando passou a ser denominado MEMORIAL MUNICIPAL DE MURIAÉ. O acerco foi reorganizado e, em 2009, a instituição foi oficialmente criada por lei passando a englobar dois setores: o Museu e o Arquivo.", "img":"https://www.fundartemuriae.com.br/wp-content/uploads/2019/08/Memorial-Municipal-foto-Google-768x528.jpg","video":"JunR81wr4h4","msg":"Você está chegando ao Memorial Municipal de Muriaé"}]},{"uuids":"F2:3A:90:F5:40:C6","infos":[{"nome":"Cristo Redentor","dsc":"O Cristo Redentor é o principal cartão-postal do Rio de Janeiro. Inaugurado em 12 de outubro de 1931, a estátua de braços abertos para a Baía de Guanabara fará seu aniversário de 90 anos em 2021. Com 38 metros de altura (incluindo o pedestal de 8 metros) e 1.145 toneladas, a atração turística está localizada no alto do morro do Corcovado e foi eleita uma das 7 maravilhas do mundo!", "img":"https://freewalkertours.com/wp-content/uploads/things-to-do-in-rio-de-janeiro-christ-the-redeemer-1.jpg","video":"sx4BGbyWzQY","msg":"Você está chegando ao Cristo"} ]}]';

class Blue extends StatefulWidget {
  @override
  _BlueState createState() => _BlueState();
}

class _BlueState extends State<Blue> {
  @override
  void initState() {
    _uuids = json.decode(dados);
    // flutterBlue.startScan(timeout: Duration(seconds: 5));
    _scan();
    timer = Timer.periodic(Duration(seconds: 8), (Timer t) {
      flutterBlue.stopScan();
      flutterBlue.startScan(timeout: Duration(seconds: 5));
      _scan();
      print("aaaaaaaa>>>>>>>   " + _beacons.length.toString());
    });

    super.initState();
  }

  void _scan() {
    _beacons.clear();
    // Listen to scan results
    var subscription = flutterBlue.scanResults.listen((results) {
      // do something with scan results
      for (ScanResult r in results) {
        print('${r.device.id} found! rssi: ${r.rssi}');
        _verificaBeaconList(r.device.id.toString());
      }
    });
  }

  void _verificaBeaconList(String uid) {
    if (_beacons.length == 0) {
      for (int a = 0; a <= _uuids.length - 1; a++) {
        if (_uuids[a]["uuids"] == uid) {
          var map = Map<String, dynamic>();
          map['uid'] = uid;
          map['img'] = _uuids[a]["infos"][0]["img"];
          map['nome'] = _uuids[a]["infos"][0]["nome"];

          _beacons.add(map);
        }
      }
    } else {
      //verifico se ja nao existe
      bool _existe = false;
      for (int a = 0; a <= _beacons.length - 1; a++) {
        if (_beacons[a]['uid'] == uid) {
          _existe = true;
          break;
        }
      }
      if (_existe == false) {
        //verifico se pertence a lista dos beacons que nós monitoramos
        for (int a = 0; a <= _uuids.length - 1; a++) {
          if (_uuids[a]["uuids"] == uid) {
            var map = Map<String, dynamic>();
            map['uid'] = uid;
            map['img'] = _uuids[a]["infos"][0]["img"];
            map['nome'] = _uuids[a]["infos"][0]["nome"];

            _beacons.add(map);
          }
        }
      }
    }
    // _beacons.sort();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Guia Interativo',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Outfit',
                color: FlutterFlowTheme.of(context).white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                const Color(0xFFf5f6f7),
                FlutterFlowTheme.of(context).primaryColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 1.0],
              tileMode: TileMode.clamp),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.asset(
                        'assets/images/waves@2x.png',
                      ).image,
                    ),
                  ),
                ),
              ),
              _beacons.length > 0
                  ? ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _beacons.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        new Detalhe(
                                          dados: dados,
                                          index: index,
                                        )));
                          },
                          child: Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * .3,
                                child: Image.network(
                                  _beacons[index]['img'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                color: Colors.black.withAlpha(150),
                                child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      _beacons[index]['nome'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.0),
                                    )),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * .3,
                                child: Container(
                                  //  color: Colors.red,
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 40),
                                          child: Icon(
                                            Icons.chevron_right,
                                            color: Colors.black.withAlpha(150),
                                            size: 50,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      })
                  : Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height - 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Buscando beacons..."),
                          SizedBox(
                            height: 5,
                          ),
                          CircularProgressIndicator(),
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

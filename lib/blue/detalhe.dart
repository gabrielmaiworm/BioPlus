import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

bool _isLoading = false;
List _info = new List();
String _tit = "";
Timer _timer;
Timer _timer1;

String _dsc;

class Detalhe extends StatefulWidget {
  final String dados;
  final int index;

  const Detalhe({Key key, this.dados, this.index}) : super(key: key);
  @override
  _DetalheState createState() => _DetalheState();
}

class _DetalheState extends State<Detalhe> {
  YoutubePlayerController _controller;
  @override
  void initState() {
    _info = json.decode(widget.dados);
    _tit = _info[widget.index]["infos"][0]['nome'];
    _dsc = _info[widget.index]["infos"][0]['dsc'];
    _controller = YoutubePlayerController(
      initialVideoId: _info[widget.index]["infos"][0]['video'],
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    _timer = new Timer(const Duration(milliseconds: 2000), () {
      setState(() {
        _controller.play();
      });
    });

    _timer = new Timer(const Duration(milliseconds: 3000), () {
      setState(() {
        _controller.play();
      });
    });

    _timer = new Timer(const Duration(milliseconds: 4000), () {
      setState(() {
        _controller.play();
      });
    });

    _timer1 = new Timer(const Duration(milliseconds: 10000), () {
      setState(() {
        _controller.play();
      });
    });

    _isLoading = false;
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading == false
        ? Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(_tit),
            ),
            body: Column(
              children: [
                YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.amber,
                  onReady: () {
                    _controller.play();
                  },
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.info,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Informações gerais",
                              style: TextStyle(
                                  color: Color(0xFF262626),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          _dsc,
                          style:
                              TextStyle(color: Color(0xFF262626), fontSize: 20),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.timer,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width -
                                  90, //color:Colors.red,
                              child: Text(
                                "Horários de funcionamento",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                    color: Color(0xFF262626),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "- Segunda-feira: 08:00 - 22:00",
                              style: TextStyle(
                                  color: Color(0xFF262626), fontSize: 20),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              "- Terça-feira: 08:00 - 22:00",
                              style: TextStyle(
                                  color: Color(0xFF262626), fontSize: 20),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              "- Quarta-feira: 08:00 - 22:00",
                              style: TextStyle(
                                  color: Color(0xFF262626), fontSize: 20),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              "- Quinta-feira: 08:00 - 22:00",
                              style: TextStyle(
                                  color: Color(0xFF262626), fontSize: 20),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          )
        : CircularProgressIndicator();
  }
}

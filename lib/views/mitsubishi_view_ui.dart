// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MitsubishiViewUI extends StatefulWidget {
  const MitsubishiViewUI({super.key});

  @override
  State<MitsubishiViewUI> createState() => _MitsubishiViewUIState();
}

class _MitsubishiViewUIState extends State<MitsubishiViewUI> {
  //create variable to use with ListView car
  List<String> _Mitsubishi = [
    'assets/images/MitsubishiLancer.jpg',
    'assets/images/MitsubishiLancer.jpg',
    'assets/images/MitsubishiLancer.jpg',
    'assets/images/MitsubishiLancer.jpg',
    'assets/images/MitsubishiLancer.jpg',
  ];
  List<String> _MitsubishiSUV = [
    'assets/images/MitsubishiPajero.jpg',
    'assets/images/MitsubishiPajero.jpg',
    'assets/images/MitsubishiPajero.jpg',
    'assets/images/MitsubishiPajero.jpg',
    'assets/images/MitsubishiPajero.jpg',
  ];
  List<String> _MitsubishiTruck = [
    'assets/images/MitsubishiTriton.jpg',
    'assets/images/MitsubishiTriton.jpg',
    'assets/images/MitsubishiTriton.jpg',
    'assets/images/MitsubishiTriton.jpg',
    'assets/images/MitsubishiTriton.jpg',
  ];
  List<String> _MitsubishiVan = [
    'assets/images/MitsubishiDecila.jpg',
    'assets/images/MitsubishiDecila.jpg',
    'assets/images/MitsubishiDecila.jpg',
    'assets/images/MitsubishiDecila.jpg',
    'assets/images/MitsubishiDecila.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mitsubishi',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.black,
            height: 1.0,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
            vertical: MediaQuery.of(context).size.height * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
//listview car
              Text(
                'รถเก๋ง',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _Mitsubishi.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  _Mitsubishi[index],
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  fit: BoxFit.cover,
                                ),
                                //title
                                Text(
                                  'Mitsubishi Lancer',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                                Text(
                                  '990,000 บาท',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
//listview SUV
              Text(
                'รถSUV & PPV',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _MitsubishiSUV.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  _MitsubishiSUV[index],
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  fit: BoxFit.cover,
                                ),
                                //title
                                Text(
                                  'Mitsubishi Pajero',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                                Text(
                                  '1,389,000 บาท',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              //listview truck
              Text(
                'รถกระบะ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _MitsubishiTruck.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  _MitsubishiTruck[index],
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  fit: BoxFit.cover,
                                ),
                                //title
                                Text(
                                  'Mitsubishi Triton',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                                Text(
                                  '1,125,000 บาท',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
//listview Van
              Text(
                'รถVan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _MitsubishiVan.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  _MitsubishiVan[index],
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  fit: BoxFit.cover,
                                ),
                                //title
                                Text(
                                  'Mitsubishi Decila',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                                Text(
                                  ' 1,814,000 บาท',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MazdaViewUI extends StatefulWidget {
  const MazdaViewUI({super.key});

  @override
  State<MazdaViewUI> createState() => _MazdaViewUIState();
}

class _MazdaViewUIState extends State<MazdaViewUI> {
  //create variable to use with ListView car
  List<String> _Mazda = [
    'assets/images/MazdaMx5.jpg',
    'assets/images/MazdaMx5.jpg',
    'assets/images/MazdaMx5.jpg',
    'assets/images/MazdaMx5.jpg',
    'assets/images/MazdaMx5.jpg',
  ];
  List<String> _MazdaSUV = [
    'assets/images/MazdaCx5.jpg',
    'assets/images/MazdaCx5.jpg',
    'assets/images/MazdaCx5.jpg',
    'assets/images/MazdaCx5.jpg',
    'assets/images/MazdaCx5.jpg',
  ];
  List<String> _MazdaTruck = [
    'assets/images/MazdaBt50.jpg',
    'assets/images/MazdaBt50.jpg',
    'assets/images/MazdaBt50.jpg',
    'assets/images/MazdaBt50.jpg',
    'assets/images/MazdaBt50.jpg',
  ];
  List<String> _MazdaVan = [
    'assets/images/MazdaFamiliaVan.jpg',
    'assets/images/MazdaFamiliaVan.jpg',
    'assets/images/MazdaFamiliaVan.jpg',
    'assets/images/MazdaFamiliaVan.jpg',
    'assets/images/MazdaFamiliaVan.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mazda',
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
                      itemCount: _Mazda.length,
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
                                  _Mazda[index],
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  fit: BoxFit.cover,
                                ),
                                //title
                                Text(
                                  'Mazda Mx5',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                                Text(
                                  '3,029,000 บาท',
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
                      itemCount: _MazdaSUV.length,
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
                                  _MazdaSUV[index],
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  fit: BoxFit.cover,
                                ),
                                //title
                                Text(
                                  'Mazda Cx5',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                                Text(
                                  '1,349,000 บาท',
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
                      itemCount: _MazdaTruck.length,
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
                                  _MazdaTruck[index],
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  fit: BoxFit.cover,
                                ),
                                //title
                                Text(
                                  'Mazda Bt50',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                                Text(
                                  '891,000 บาท ',
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
                      itemCount: _MazdaVan.length,
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
                                  _MazdaVan[index],
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  fit: BoxFit.cover,
                                ),
                                //title
                                Text(
                                  'Mazda Familiavan',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                                Text(
                                  '2,299,000 บาท',
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

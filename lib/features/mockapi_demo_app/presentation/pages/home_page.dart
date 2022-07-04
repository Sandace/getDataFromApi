import 'package:flutter/material.dart';
import 'package:mockapi_demo/features/mockapi_demo_app/data/data_sources/http_service.dart';
import 'package:mockapi_demo/features/mockapi_demo_app/data/data_sources/http_service_list.dart';
import 'package:mockapi_demo/features/mockapi_demo_app/data/models/item_data.dart';
import 'package:mockapi_demo/features/mockapi_demo_app/data/models/single_response.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final DioClient _client = DioClient();
  final DioClientList _clientList = DioClientList();

  @override
  void initState() {
    super.initState();
    // _clientList.getListTypeResponse();
  }

  @override
  Widget build(BuildContext context) {
    int typeIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Data from Api"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            FutureBuilder<SingleTypeResponse?>(
              // future: _client.getSingleTypeResponse(),

              future: _clientList.getListTypeResponse(typeIndex),
              builder: (context, dataResonse) {
                if (dataResonse.hasData) {
                  SingleTypeResponse? singleTypeResponseInfo = dataResonse.data;
                  if (singleTypeResponseInfo != null) {
                    List<DataItems> dataItems =
                        singleTypeResponseInfo.dataItems;
                    return Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 16),
                            Text(
                              singleTypeResponseInfo.type,
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Container(
                          height: 200,
                          padding: const EdgeInsets.all(8),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final dataitmes = dataItems[index];

                              return Container(
                                  height: 140,
                                  width: 140,
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      // Text("Banners"),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          dataitmes.image,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Text(
                                        dataitmes.label ?? " ",
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ));
                            },
                            itemCount: dataItems.length,
                          ),
                        ),
                      ],
                    );
                  }
                }
                return const CircularProgressIndicator();
              },
            ),
            FutureBuilder<SingleTypeResponse?>(
              // future: _client.getSingleTypeResponse(),
              future: _clientList.getListTypeResponse(1),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  SingleTypeResponse? singleTypeResponseInfo = snapshot.data;
                  if (singleTypeResponseInfo != null) {
                    List<DataItems> dataItems =
                        singleTypeResponseInfo.dataItems;
                    return Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 16),
                            Text(
                              singleTypeResponseInfo.type,
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Container(
                          height: 200,
                          padding: const EdgeInsets.all(8),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final dataitmes = dataItems[index];

                              return Container(
                                  height: 140,
                                  width: 140,
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      // Text("Banners"),
                                      Stack(children: [
                                        Image.network(dataitmes.image),
                                        Positioned(
                                          right: 0,
                                          // alignment: AlignmentDirectional.topEnd,
                                          child: Container(
                                            // alignment: Alignment.center,
                                            color:
                                                Colors.black.withOpacity(0.6),
                                            height: 150,
                                            width: 70,
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      Text(
                                        dataitmes.label ?? " ",
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ));
                            },
                            itemCount: dataItems.length,
                          ),
                        ),
                      ],
                    );
                  }
                }
                return const CircularProgressIndicator();
              },
            ),
            FutureBuilder<SingleTypeResponse?>(
              // future: _client.getSingleTypeResponse(),
              future: _clientList.getListTypeResponse(2),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  SingleTypeResponse? singleTypeResponseInfo = snapshot.data;
                  if (singleTypeResponseInfo != null) {
                    List<DataItems> dataItems =
                        singleTypeResponseInfo.dataItems;
                    return Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 16),
                            Text(
                              singleTypeResponseInfo.type,
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Container(
                          height: 200,
                          padding: const EdgeInsets.all(8),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final dataitmes = dataItems[index];

                              return Container(
                                height: 140,
                                width: 140,
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 65,
                                      backgroundImage:
                                          NetworkImage(dataitmes.image),
                                    ),
                                    Text(dataitmes.label ?? ""),
                                  ],
                                ),
                              );
                            },
                            itemCount: dataItems.length,
                          ),
                        ),
                      ],
                    );
                  }
                }
                return const CircularProgressIndicator();
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Data1"),
                Text("Data2"),
                Text("Data3"),
                Text("Data4"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer() {
    return Stack(children: [
      Image.network('https://picsum.photos/150'),
      Positioned(
        right: 0,
        // alignment: AlignmentDirectional.topEnd,
        child: Container(
          // alignment: Alignment.center,
          color: Colors.black.withOpacity(0.6),
          height: 150,
          width: 70,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ]);
  }

  Widget buildCircleAvatar() {
    return SingleChildScrollView(
      child: Column(
        children: const [
          CircleAvatar(
            radius: 65,
            backgroundImage: NetworkImage('https://picsum.photos/150/150'),
          ),
          Text("a"),
        ],
      ),
    );
  }
}

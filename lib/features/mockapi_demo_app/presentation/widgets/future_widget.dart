import 'package:flutter/material.dart';

import '../../data/data_sources/http_service_list.dart';
import '../../data/models/item_data.dart';
import '../../data/models/single_response.dart';

Widget buildViews(int typeIndex) {
  final DioClientList _clientList = DioClientList();
  return FutureBuilder<SingleTypeResponse?>(
    // future: _client.getSingleTypeResponse(),

    future: _clientList.getListTypeResponse(typeIndex),
    builder: (context, dataResonse) {
      if (dataResonse.hasData) {
        SingleTypeResponse? singleTypeResponseInfo = dataResonse.data;
        if (singleTypeResponseInfo != null) {
          List<DataItems> dataItems = singleTypeResponseInfo.dataItems;
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

                    return buildContainer(dataitmes, typeIndex);
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
  );
}

Widget buildContainer(DataItems dataitems, int typeIndex) {
  if (typeIndex == 0) {
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
                dataitems.image,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              dataitems.label ?? " ",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ));
  }
  if (typeIndex == 1) {
    return Container(
        height: 140,
        width: 140,
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            // Text("Banners"),
            Stack(children: [
              Image.network(dataitems.image),
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
            ]),
            Text(
              dataitems.label ?? " ",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ));
  }
  if (typeIndex == 2) {
    return Container(
      height: 140,
      width: 140,
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 65,
            backgroundImage: NetworkImage(dataitems.image),
          ),
          Text(dataitems.label ?? ""),
        ],
      ),
    );
  }
  return Text("");
}

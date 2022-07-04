import 'package:flutter/material.dart';
import 'package:mockapi_demo/features/mockapi_demo_app/data/data_sources/http_service.dart';
import 'package:mockapi_demo/features/mockapi_demo_app/data/data_sources/http_service_list.dart';
import 'package:mockapi_demo/features/mockapi_demo_app/data/models/item_data.dart';
import 'package:mockapi_demo/features/mockapi_demo_app/data/models/single_response.dart';
import 'package:mockapi_demo/features/mockapi_demo_app/presentation/widgets/future_widget.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Data from Api"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            buildViews(0),
            buildViews(1),
            buildViews(2),
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

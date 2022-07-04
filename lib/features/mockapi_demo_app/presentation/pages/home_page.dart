import 'package:flutter/material.dart';
import 'package:mockapi_demo/features/mockapi_demo_app/data/data_sources/http_service.dart';
import 'package:mockapi_demo/features/mockapi_demo_app/data/data_sources/http_service_list.dart';
import 'package:mockapi_demo/features/mockapi_demo_app/presentation/widgets/future_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final DioClient client = DioClient();
  final DioClientList clientList = DioClientList();

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
            const SizedBox(height: 10),
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
}

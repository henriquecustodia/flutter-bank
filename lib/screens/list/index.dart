import 'package:flutter/material.dart';
import 'package:my_app/models/transfer.dart';
import 'package:my_app/screens/list/item.dart';

class TransferList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransferListState();
  }
}

class TransferListState extends State<TransferList> {
  final List<Transfer> transfers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfers'),
      ),
      body: ListView.builder(
        itemCount: transfers.length,
        itemBuilder: (context, index) {
          return TransferItem(transfers[index]);
        },
      ),
      floatingActionButton: createButton(),
    );
  }

  createButton() {
    return FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          var future = Navigator.pushNamed(context, '/form');

          future.then((transfer) {
            if (transfer != null) {
              setState(() {
                transfers.add(transfer as Transfer);
              });
            }
          });
        });
  }
}

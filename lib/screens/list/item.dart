import 'package:flutter/material.dart';
import 'package:my_app/models/transfer.dart';

class TransferItem extends StatelessWidget {
  final Transfer transfer;

  const TransferItem(this.transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(transfer.value.toString()),
        subtitle: Text(transfer.accountNumber.toString()),
      ),
    );
  }
}
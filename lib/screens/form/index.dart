import 'package:flutter/material.dart';
import 'package:my_app/models/transfer.dart';
import 'package:my_app/screens/form/editor.dart';

class TransferForm extends StatelessWidget {
  final TextEditingController _valueController = TextEditingController();
  final TextEditingController _accountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('fewfwfwefewf'),
        ),
        body: createBody(context));
  }

  createBody(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Editor(
            controller: _accountController,
            label: 'Account',
            hint: '00000',
          ),
          Editor(
            controller: _valueController,
            label: 'Value',
            hint: '0.00',
            icon: Icons.monetization_on,
          ),
          ElevatedButton(
            child: const Text('Save'),
            onPressed: () {
              createTransfer(context);
            },
          )
        ],
      ),
    );
  }

  void createTransfer(BuildContext context) {
    final int? account = int.tryParse(_accountController.text);
    final double? value = double.tryParse(_valueController.text);

    if (account != null && value != null) {
      final transfer = Transfer(value, account);
      showSubmitSuccessSnackbar(context);
      Navigator.pop(context, transfer);
    } else {
      showInvalidValueSnackbar(context);
    }
  }

  showInvalidValueSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Type only numbers!'),
        action: SnackBarAction(
          label: 'Ok!',
          onPressed: () {},
        ),
      ),
    );
  }

  showSubmitSuccessSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Transfer created successfully!'),
        action: SnackBarAction(
          label: 'Yeeah!',
          onPressed: () {},
        ),
      ),
    );
  }
}

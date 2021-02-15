import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final textController = TextEditingController();
  final amountController = TextEditingController();
  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  void submitData () {
    final enterTitle = textController.text;
    final enterAmount = double.parse(amountController.text);
    
    if (enterTitle.isEmpty || enterAmount <= 0){
      return;
    }

    addNewTransaction(enterTitle, enterAmount);
  }

  @override
  Widget build(BuildContext context) {
    return  Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: textController,
                    onSubmitted: (_) => submitData,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    onSubmitted: (_) => submitData,
                  ),
                  FlatButton(
                    child: Text(
                      'Add Transaction  ',
                      style: TextStyle(color: Colors.purple),
                    ),
                    onPressed: submitData,
                  )
                ],
              ),
            ),
          );
  }
}
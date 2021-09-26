import 'package:flutter/material.dart';

class DetailsTable extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        
     
        border: TableBorder.all(),
        children: [
          TableRow(children: [
            Text('Date'),
            Text('canditate'),
            Text('Sms send'),
            Text('  Cost/massage'),
            Text('Total'),
          ]),
          TableRow(children: [
            TableCell(child: Text("1.")),
            TableCell(child: Text("Krishna Karki")),
            TableCell(child: Text("Nepal, Kathmandu")),
            TableCell(child: Text("Nepal")),
            Text('Total'),
          ]),
        ],
      ),
    );
  }
}

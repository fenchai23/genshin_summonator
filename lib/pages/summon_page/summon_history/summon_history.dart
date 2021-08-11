import 'package:flutter/material.dart';
import 'package:genshin_summonator/pages/summon_page/summon_history/summon_history_controller.dart';
import 'package:get/get.dart';

class SummonHistory extends StatelessWidget {
  const SummonHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SummonHistoryController>(
      init: SummonHistoryController(),
      builder: (summons) {
        if (summons.summonsDone.length > 0)
          return SingleChildScrollView(
            child: DataTable(
              headingRowColor: MaterialStateProperty.all(Colors.blueGrey[200]),
              // dataRowColor: MaterialStateProperty.all(Colors.black12),
              sortColumnIndex: 0,
              sortAscending: true,
              dividerThickness: 4,
              headingTextStyle: TextStyle(fontWeight: FontWeight.bold),
              columns: summonColumns(['#', 'SUMMON', 'PRIMOS', 'DOLLARS']),
              rows: summonRows(summons.summonsDone),
            ),
          );
        else
          return Container();
      },
    );
  }
}

List<DataColumn> summonColumns(List<String> columns) {
  List<DataColumn> dataColumns = [];

  for (String k in columns) {
    dataColumns.add(DataColumn(label: Text(k)));
  }

  return dataColumns;
}

List<DataRow> summonRows(Map<int, String> summons) {
  List<DataRow> dataRows = [];

  summons.forEach(
    (index, item) {
      dataRows.add(
        DataRow(
          cells: <DataCell>[
            DataCell(Text((index + 1).toString())),
            DataCell(Text(item)),
            DataCell(Text(((index + 1) * 160).toString())),
            DataCell(Text(((index + 1) * 1.98).toStringAsFixed(2))),
          ],
        ),
      );
    },
  );

  return dataRows;
}

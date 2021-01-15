import 'package:flutter/material.dart';

import 'package:tugas_app/models/ScheduleModel.dart';

import 'package:tugas_app/core/DateFormat.dart';
import 'package:tugas_app/screens/home/ScheduleDetail.dart';

import 'package:http/http.dart' as http;

class Schedule extends StatefulWidget {
  static const path = '/schedule';

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final snapshotSchedule = ScheduleModel.all();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              showCheckboxColumn: false,
              columns: <DataColumn>[
                DataColumn(label: Text('No')),
                DataColumn(label: Text('Tanggal')),
                DataColumn(label: Text('No Perkara')),
                DataColumn(label: Text('Ruang')),
              ],
              rows: List<DataRow>.generate(
                snapshotSchedule.length,
                (i) {
                  final s = snapshotSchedule[i];
                  return DataRow(
                      onSelectChanged: (bool selected) {
                        if (selected) {
                          Navigator.pushNamed(context, ScheduleDetail.path,
                              arguments: ScheduleDetailArgument(s));
                        }
                      },
                      cells: [
                        DataCell(Text('${i + 1}')),
                        DataCell(Text('${DateFormat.getDefDate(s.startDate)}')),
                        DataCell(Text('${s.caseId}')),
                        DataCell(Text('${s.room}')),
                      ]);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

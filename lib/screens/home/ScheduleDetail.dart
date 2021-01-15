import 'package:flutter/material.dart';

import 'package:tugas_app/models/ScheduleModel.dart';

import 'package:tugas_app/core/DateFormat.dart';
import 'package:tugas_app/screens/home/Schedule.dart';

class ScheduleDetailArgument {
  final ScheduleModel schedule;

  ScheduleDetailArgument(this.schedule);
}

class ScheduleDetail extends StatelessWidget {
  static const path = '/schedule/detail';

  @override
  Widget build(BuildContext context) {
    final ScheduleDetailArgument args =
        ModalRoute.of(context).settings.arguments;

    if (args == null) {
      print('args is null');
      print('route name ${ModalRoute.of(context).settings.name}');
      return Scaffold(
        appBar: AppBar(
          title: Text("Schedule Detail"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 15),
                Text(
                  'Tidak ada data',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Schedule.path);
                  },
                  child: Text('Kembali'),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      );
    }

    final schedule = args.schedule;

    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule Detail"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15),
            Card(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      '${schedule.agenda}',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      '${DateFormat.getDefDate(schedule.startDate)}',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      '${DateFormat.getDefTime(schedule.startDate)} - ${DateFormat.getDefTime(schedule.endDate)}',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ]),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

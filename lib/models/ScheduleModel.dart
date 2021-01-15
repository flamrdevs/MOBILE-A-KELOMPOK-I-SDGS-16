import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<ScheduleModel>> fetchSchedule(http.Client client) async {
  final response =
      await client.get('https://flamrdevs.github.io/peperia/schedule.json');
  return compute(parseSchedule, response.body);
}

List<ScheduleModel> parseSchedule(String resBody) {
  final parsed = jsonDecode(resBody).cast<Map<String, dynamic>>();

  return parsed
      .map<ScheduleModel>((json) => ScheduleModel.fromJson(json))
      .toList();
}

class ScheduleModel {
  String id;
  String caseId;
  DateTime startDate;
  DateTime endDate;
  String typeOfCase;
  String room;
  String agenda;

  ScheduleModel({
    this.id,
    this.caseId,
    this.startDate,
    this.endDate,
    this.typeOfCase,
    this.room,
    this.agenda,
  });

  factory ScheduleModel.fromJson(Map<String, dynamic> object) {
    return ScheduleModel(
      id: object['id'] as String,
      caseId: object['caseId'] as String,
      startDate: DateTime.parse(object['startDate'] as String),
      endDate: DateTime.parse(object['endDate'] as String),
      typeOfCase: object['typeOfCase'] as String,
      room: object['room'] as String,
      agenda: object['agenda'] as String,
    );
  }

  static List<ScheduleModel> all() {
    return [
      new ScheduleModel(
          id: '1',
          caseId: 'kasusno1',
          startDate: DateTime.parse('2020-12-23 09:00:00'),
          endDate: DateTime.parse('2020-12-23 10:00:00'),
          typeOfCase: 'jeniskasus1',
          room: '1',
          agenda: 'agenda1'),
      new ScheduleModel(
          id: '2',
          caseId: 'kasusno2',
          startDate: DateTime.parse('2020-12-23 09:00:00'),
          endDate: DateTime.parse('2020-12-23 10:00:00'),
          typeOfCase: 'jeniskasus2',
          room: '2',
          agenda: 'agenda2'),
      new ScheduleModel(
          id: '3',
          caseId: 'kasusno3',
          startDate: DateTime.parse('2020-12-23 09:00:00'),
          endDate: DateTime.parse('2020-12-23 10:00:00'),
          typeOfCase: 'jeniskasus3',
          room: '3',
          agenda: 'agenda3'),
      new ScheduleModel(
          id: '4',
          caseId: 'kasusno4',
          startDate: DateTime.parse('2020-12-23 09:00:00'),
          endDate: DateTime.parse('2020-12-23 10:00:00'),
          typeOfCase: 'jeniskasus4',
          room: '4',
          agenda: 'agenda4'),
    ];
  }
}

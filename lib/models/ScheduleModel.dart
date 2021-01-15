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
  
  static List<ScheduleModel> all() {
    return [
      new ScheduleModel(
        id: '1',
        caseId: 'kasusno1',
        startDate: DateTime.parse('2020-12-23 09:00:00'),
        endDate: DateTime.parse('2020-12-23 10:00:00'),
        typeOfCase: 'jeniskasus1',
        room: '1',
        agenda: 'agenda1'
      ),
      new ScheduleModel(
        id: '2',
        caseId: 'kasusno2',
        startDate: DateTime.parse('2020-12-23 09:00:00'),
        endDate: DateTime.parse('2020-12-23 10:00:00'),
        typeOfCase: 'jeniskasus2',
        room: '2',
        agenda: 'agenda2'
      ),
      new ScheduleModel(
        id: '3',
        caseId: 'kasusno3',
        startDate: DateTime.parse('2020-12-23 09:00:00'),
        endDate: DateTime.parse('2020-12-23 10:00:00'),
        typeOfCase: 'jeniskasus3',
        room: '3',
        agenda: 'agenda3'
      ),
      new ScheduleModel(
        id: '4',
        caseId: 'kasusno4',
        startDate: DateTime.parse('2020-12-23 09:00:00'),
        endDate: DateTime.parse('2020-12-23 10:00:00'),
        typeOfCase: 'jeniskasus4',
        room: '4',
        agenda: 'agenda4'
      ),
    ];
  }
}
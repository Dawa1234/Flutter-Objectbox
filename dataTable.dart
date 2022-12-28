import 'package:flutter/material.dart';

class DataTableScreen extends StatefulWidget {
  const DataTableScreen({Key? key}) : super(key: key);

  @override
  State<DataTableScreen> createState() => _DataTableScreenState();
}

class _DataTableScreenState extends State<DataTableScreen> {
  List<Student> studentData = [
    Student(
      name: "Bhupraj",
      age: "21",
      rollNo: "1",
      gender: "Male",
    ),
    Student(
      name: "Sins",
      age: "19",
      rollNo: "2",
      gender: "Others",
    ),
    Student(
      name: "Sinatra",
      age: "24",
      rollNo: "3",
      gender: "Others",
    ),
  ];

  DataColumn _dataColumn(String text) {
    return DataColumn(
        label: Expanded(
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    ));
  }

  DataCell _datacell(String text) {
    return DataCell(Center(
      child: Text(
        text,
      ),
    ));
  }

  // Row
  DataRow _dataRow(
    BuildContext context,
    String name,
    String age,
    String gender,
    String rollNo,
  ) {
    return DataRow(cells: [
      _datacell(name),
      _datacell(age),
      _datacell(rollNo),
      _datacell(gender),
      _datacellIcon(context, rollNo)
    ]);
  }

// Cell
  DataCell _datacellIcon(BuildContext context, String rollNo) {
    return DataCell(Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        title: const Text("Row Deleted"),
                        content: Text("Row $rollNo is successfully deleted!"),
                        actions: <Widget>[
                          TextButton(
                              onPressed: () {
                                List<Student> student = studentData
                                    .where((element) =>
                                        element.rollNo!.contains(rollNo))
                                    .toList();
                                setState(() {
                                  studentData.remove(student[0]);
                                });
                                Navigator.pop(context);
                              },
                              child: const Text("Delete")),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("No")),
                        ]);
                  });
            },
            icon: const Icon(Icons.delete)),
        const Icon(Icons.edit),
      ],
    ));
  }

  // Table
  Widget _dataTable(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                dataRowColor: MaterialStateColor.resolveWith(
                    (states) => const Color.fromARGB(255, 224, 125, 118)),
                headingRowColor: MaterialStateColor.resolveWith(
                    (states) => const Color.fromARGB(255, 75, 127, 238)),
                border: TableBorder.all(
                    color: const Color.fromARGB(255, 85, 58, 58),
                    style: BorderStyle.solid),
                columns: [
                  _dataColumn("Name"),
                  _dataColumn("Age"),
                  _dataColumn("Roll No."),
                  _dataColumn("Gender"),
                  _dataColumn("Actions"),
                ],
                rows: [
                  // studentData.forEach((element) {
                  //   _dataRow(context, element.name!, element.age!,
                  //       element.gender!, element.rollNo!);
                  // })
                  for (Student s in studentData) ...{
                    _dataRow(context, s.name!, s.age!, s.gender!, s.rollNo!)
                  }
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _dataTable(context),
    );
  }
}

class Student {
  String? name;
  String? age;
  String? rollNo;
  String? gender;

  Student({this.name, this.age, this.rollNo, this.gender});
}

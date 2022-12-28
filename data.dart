// import 'package:first_app/Model/student.dart';
// import 'package:flutter/material.dart';

// class Data extends StatefulWidget {
//   Student studentData;
//   List<Student> lstStudentData;
//   Data({Key? key, required this.studentData, required this.lstStudentData})
//       : super(key: key);

//   @override
//   State<Data> createState() => _DataState();
// }

// class _DataState extends State<Data> {
//   Student? studentData;
//   List<Student>? lstStudentData;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     studentData = widget.studentData;
//     lstStudentData = widget.lstStudentData;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: const Padding(
//         padding: EdgeInsets.only(top: 5),
//         child: Icon(
//           Icons.person,
//           color: Colors.blue,
//         ),
//       ),
//       title: Text(
//           "${widget.studentData.fname.toString()} ${widget.studentData.lname.toString()}"),
//       subtitle: Text(widget.studentData.city.toString()),
//       trailing: Wrap(
//         children: [
//           const Icon(
//             Icons.edit,
//             color: Colors.blue,
//           ),
//           const SizedBox(
//             width: 20,
//           ),
//           InkWell(
//             onTap: () {
//               print(lstStudentData!.length);
//               lstStudentData!.remove(studentData);
//               setState(() {});
//               print(lstStudentData!.length);
//             },
//             child: const Icon(
//               Icons.delete,
//               color: Colors.blue,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

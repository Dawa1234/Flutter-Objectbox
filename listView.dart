// import 'package:first_app/Model/student.dart';
// import 'package:flutter/material.dart';

// class StudentData extends StatefulWidget {
//   List<Student>? studentData;
//   StudentData({Key? key, this.studentData}) : super(key: key);

//   @override
//   State<StudentData> createState() => _StudentDataState();
// }

// class _StudentDataState extends State<StudentData> {
//   List<Student> studentData = [];
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     studentData = widget.studentData!;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: widget.studentData!.isEmpty
//           ? const Center(child: Text("No data found"))
//           : ListView.builder(
//               itemCount: widget.studentData!.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: const Padding(
//                     padding: EdgeInsets.only(top: 5),
//                     child: Icon(
//                       Icons.person,
//                       color: Colors.blue,
//                     ),
//                   ),
//                   title: Text(widget.studentData![index].fname!),
//                   subtitle: Text(widget.studentData![index].city!),
//                   trailing: Wrap(
//                     children: [
//                       const Icon(
//                         Icons.edit,
//                         color: Colors.blue,
//                       ),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       InkWell(
//                         onTap: () {
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return AlertDialog(
//                                 title: const Text("Delete"),
//                                 content: const Text("Do you want to delete"),
//                                 actions: <Widget>[
//                                   TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           studentData
//                                               .remove(studentData[index]);
//                                         });
//                                         Navigator.pop(context);
//                                       },
//                                       child: const Text("Delete")),
//                                   TextButton(
//                                       onPressed: () {
//                                         Navigator.pop(context);
//                                       },
//                                       child: const Text("No")),
//                                 ],
//                               );
//                             },
//                           );

//                           // setState(() {
//                           //   studentData.remove(studentData[index]);
//                           // });
//                         },
//                         child: const Icon(
//                           Icons.delete,
//                           color: Colors.blue,
//                         ),
//                       )
//                     ],
//                   ),
//                 );
//               }),
//     );
//   }
// }

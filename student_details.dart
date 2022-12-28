// import 'package:dropdown_plus/dropdown_plus.dart';
// import 'package:first_app/Model/student.dart';
// import 'package:first_app/listView.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:motion_toast/motion_toast.dart';

// class Student_Detials extends StatefulWidget {
//   const Student_Detials({Key? key}) : super(key: key);

//   @override
//   _Student_DetialsState createState() => _Student_DetialsState();
// }

// class _Student_DetialsState extends State<Student_Detials> {
//   TextEditingController firstNameController =
//       TextEditingController(text: "Dawa");
//   TextEditingController lastNameController =
//       TextEditingController(text: "Sherpa");
//   TextEditingController ageController = TextEditingController(text: "20");
//   TextEditingController addressController = TextEditingController(text: "KTM");
//   final _formKey = GlobalKey<FormState>();
//   final _gap = const SizedBox(
//     height: 10,
//   );
//   int radio_value = 0;
//   String gender = "Male";
//   List<DropdownMenuItem<String>> items = [
//     const DropdownMenuItem(
//       value: "Kathmandu",
//       child: Text("Kathmandu"),
//     ),
//     const DropdownMenuItem(
//       value: "Pokhara",
//       child: Text("Pokhara"),
//     ),
//   ];
//   String selectedValue = "Kathmandu";

//   final _dropDownController = DropdownEditingController(value: "KTM");

// // Motion Toast
//   _showSuccessMotionToast() {
//     MotionToast.success(
//       description: const Text("Successfully Added!"),
//       animationDuration: Duration.zero,
//     ).show(context);
//   }

//   _showErrorMotionToast() {
//     MotionToast.error(
//       description: const Text("Error"),
//       animationDuration: Duration.zero,
//     ).show(context);
//   }

//   // Snack Bar
//   _showSnackbar() {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       backgroundColor: const Color.fromARGB(255, 0, 46, 83),
//       content: const Text("Student Saved"),
//       duration: const Duration(seconds: 2),
//       action: SnackBarAction(label: "Ok", onPressed: () {}),
//     ));
//   }

// // Flutter Toast
//   _showFlutterToast() {
//     return Fluttertoast.showToast(
//       msg: "Display Student",
//       toastLength: Toast.LENGTH_SHORT,
//       backgroundColor: Colors.white,
//       textColor: Colors.black,
//     );
//   }

//   void _addStudent(Student student) {
//     lstStudents.add(student);
//   }

//   // TextDropDownItems
//   var cities = ["KTM", "POKHARA", "MUSTANG"];

//   List<Student> lstStudents = [];

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Student Details"),
//         centerTitle: true,
//       ),
//       body: GestureDetector(
//         onTap: () => FocusScope.of(context).unfocus(),
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 10),
//           height: height,
//           width: width,
//           color: Colors.white,
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Column(
//               children: [
//                 _gap,
//                 TextFormField(
//                   controller: firstNameController,
//                   decoration: const InputDecoration(
//                       labelText: "First Name",
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(width: 1, color: Colors.grey),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(width: 1, color: Colors.blue),
//                       )),
//                 ),
//                 _gap,
//                 TextFormField(
//                   controller: lastNameController,
//                   decoration: const InputDecoration(
//                       labelText: "Last Name",
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(width: 1, color: Colors.grey),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(width: 1, color: Colors.blue),
//                       )),
//                 ),
//                 _gap,
//                 TextFormField(
//                   controller: ageController,
//                   decoration: const InputDecoration(
//                       labelText: "Age Name",
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(width: 1, color: Colors.grey),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(width: 1, color: Colors.blue),
//                       )),
//                 ),
//                 _gap,
//                 const Text("Select Gender"),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       width: width * 0.4,
//                       height: 60,
//                       child: ListTile(
//                         leading: Radio(
//                             value: radio_value,
//                             groupValue: 0,
//                             onChanged: (value) {
//                               setState(() {
//                                 radio_value = 0;
//                                 gender = "Male";
//                               });
//                             }),
//                         title: const Text("Male"),
//                       ),
//                     ),
//                     SizedBox(
//                       width: width * 0.4,
//                       height: 60,
//                       child: ListTile(
//                         leading: Radio(
//                             value: radio_value,
//                             groupValue: 1,
//                             onChanged: (value) {
//                               setState(() {
//                                 radio_value = 1;
//                                 gender = "Female";
//                               });
//                             }),
//                         title: const Text("Female"),
//                       ),
//                     ),
//                   ],
//                 ),
//                 TextFormField(
//                   maxLines: 3,
//                   controller: addressController,
//                   decoration: const InputDecoration(
//                       labelText: "Address",
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(width: 1, color: Colors.grey),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(width: 1, color: Colors.blue),
//                       )),
//                 ),
//                 _gap,
//                 SizedBox(
//                   height: 60,
//                   width: width,
//                   child: TextDropdownFormField(
//                       controller: _dropDownController,
//                       options: cities,
//                       decoration: const InputDecoration(
//                           border: OutlineInputBorder(),
//                           suffixIcon: Icon(Icons.arrow_downward),
//                           labelText: "Select cities"
//                           // hintText: "asd",
//                           ),
//                       onChanged: (value) {
//                         setState(() {
//                           selectedValue = value.toString();
//                         });
//                       }),
//                 ),
//                 SizedBox(
//                   width: width,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Student student = Student(
//                         fname: firstNameController.text,
//                         lname: lastNameController.text,
//                         city: _dropDownController.value.toString(),
//                         gender: gender,
//                         address: addressController.text,
//                         age: int.parse(ageController.text),
//                       );
//                       _showSuccessMotionToast();
//                       _addStudent(student);
//                       // debugPrint(lstStudents.length.toString());
//                     },
//                     child: const Text("Save Student"),
//                   ),
//                 ),
//                 SizedBox(
//                   width: width,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => StudentData(
//                                 studentData: lstStudents,
//                               )));
//                       // _showFlutterToast();
//                     },
//                     child: const Text("Display Student"),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

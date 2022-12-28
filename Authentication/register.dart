// import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:first_app/Model/batch.dart';
import 'package:first_app/Model/student.dart';
import 'package:first_app/State/objectBax_state.dart';
import 'package:first_app/data_source/local_data_source/batch_data_source.dart';
import 'package:first_app/data_source/local_data_source/student_data_source.dart';
import 'package:first_app/helper/objectBox.dart';
import 'package:first_app/repository/batch_repo.dart';
import 'package:first_app/repository/student_repo.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // Object of the current state
  final StudentDataSource _studentDataSource = StudentDataSource();
  // Object of the current state.
  ObjectBoxInstance get _objectBoxInstance => ObjectBoxState.objectBoxInstance!;

  // Object of the current state
  final ObjectBoxInstance _batchDataSource =
      BatchDataSource().objectBoxInstance;

  final SizedBox _gap10 = const SizedBox(
    height: 10,
  );
  // To validate the form.
  final _formKey = GlobalKey<FormState>();
  // To store the data from the table of the database.
  final List _dropDownList = [];
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Initial value for dropdown field.

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBatch();

    // var datas = StudentRepositoryImpl().getStudents();
    var datas = StudentRepositoryImpl().getStudents().then((value) {
      for (var data in value) {
        print(data.batch.targetId);
        print(data.studentId);
        print(data.fname);
      }
    });
  }

  // List of Batch object [batchName, batchId]
  List<Batch> _lst_BATCH = [];

  // Get batch
  getBatch() async {
    _lst_BATCH = await BatchRepoIml().getAllBatch();
    _dropDownValue = _lst_BATCH[0].batchName;
    // print(_dropDownValue);
  }

  deleteAllStudent() async {
    int status = await StudentRepositoryImpl().deleteAllStudents();
    print(status);
    _showSuccess(status);
  }

  // Save student in the store.
  _saveStudent() async {
    Student student = Student(_fnameController.text, _lnameController.text,
        _usernameController.text, _passwordController.text);

    final batch = _lst_BATCH.firstWhere((element) {
      // print(element.batchName == _dropDownValue);
      return element.batchName == _dropDownValue;
    });
    print(batch.batchId);
    student.batch.targetId = batch.batchId;
    int status = await StudentRepositoryImpl().addStudents(student);
    _showSuccess(status);
  }

  // Success/Error bar
  _showSuccess(int status) {
    if (status > 0) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Wrap(
          alignment: WrapAlignment.center,
          children: const [Icon(Icons.check), Text("Success")],
        ),
        backgroundColor: Colors.green,
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Wrap(
          alignment: WrapAlignment.center,
          children: const [Icon(Icons.close), Text("error")],
        ),
        backgroundColor: Colors.red,
      ));
    }
  }

  String? _dropDownValue;
  // ignore: non_constant_identifier_names

  Future<bool> deleteStudentById(int studentId) async {
    return await _studentDataSource.deleteStudent(studentId);
  }

  TextStyle style = const TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
          style: style,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  _gap10,
                  TextFormField(
                    controller: _fnameController,
                    validator: (value) {
                      if (value!.isEmpty) return "First name is empty.";
                      return null;
                    },
                    decoration: const InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.red)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.red)),
                      label: Text("First name"),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.orange)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.orange)),
                    ),
                  ),
                  _gap10,
                  TextFormField(
                    controller: _lnameController,
                    validator: (value) {
                      if (value!.isEmpty) return "Last name is empty.";
                      return null;
                    },
                    decoration: const InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.red)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.red)),
                      label: Text("Last name"),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.orange)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.orange)),
                    ),
                  ),
                  _gap10,
                  FutureBuilder(
                    future: BatchRepoIml().getAllBatch(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return DropdownButtonFormField(
                          value: _dropDownValue,
                          items: snapshot.data!
                              .map((e) => DropdownMenuItem(
                                  value: e.batchName, child: Text(e.batchName)))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              print(value);
                              _dropDownValue = value!;
                            });
                          },
                          decoration: const InputDecoration(
                            errorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.red)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.red)),
                            label: Text("Select Batch"),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.orange)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.orange)),
                          ),
                        );
                      } else {
                        return const Text("Wait....");
                      }
                    },
                  ),
                  _gap10,
                  TextFormField(
                    controller: _usernameController,
                    validator: (value) {
                      if (value!.isEmpty) return "Username is empty.";
                      return null;
                    },
                    decoration: const InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.red)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.red)),
                      label: Text("Username"),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.orange)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.orange)),
                    ),
                  ),
                  _gap10,
                  TextFormField(
                    controller: _passwordController,
                    validator: (value) {
                      if (value!.isEmpty) return "Password is empty.";
                      if (value.length < 8) return "Password too short";
                      return null;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.red)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.red)),
                      label: Text("Password"),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.orange)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.orange)),
                    ),
                  ),
                  _gap10,
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        // if (_formKey.currentState!.validate()) {
                        _saveStudent();
                        // deleteAllStudent();
                        // print("working");
                        // addNewStudent().then((value) {});
                        // deleteStudentById(1).then((value) {});
                        // for (var student
                        //     in _objectBoxInstance.getAllStudent()) {
                        //   print("------ User ------");
                        //   print(student.studentId);
                        //   print(student.fname);
                        //   print(student.lname);
                        //   print(student.username);
                        //   print(student.password);
                        // }

                        // }
                      },
                      child: Text("Register", style: style),
                    ),
                  ),
                  _gap10,
                  _gap10,
                  _gap10,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:first_app/Model/student.dart';
import 'package:first_app/State/objectBax_state.dart';
import 'package:first_app/helper/objectBox.dart';

class StudentDataSource {
  ObjectBoxInstance get objectBoxInstance => ObjectBoxState.objectBoxInstance!;
  // OR
  ObjectBoxInstance objectBoxInstance2 = ObjectBoxState.objectBoxInstance!;

  Future<int> addStudent(Student student) async {
    try {
      return objectBoxInstance.addStudent(student);
    } catch (e) {
      return 0;
    }
  }

  Future<int> deleteAllStudent() async {
    try {
      return objectBoxInstance.deleteAllStudent();
    } catch (e) {
      return -1;
    }
  }

  Future<bool> deleteStudent(int studentId) async {
    try {
      return objectBoxInstance.deleteStudent(studentId);
    } catch (e) {
      return false;
    }
  }

  Future<List<Student>> getStudents() {
    try {
      return Future.value(objectBoxInstance.getAllStudent());
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Student?> loginStudents(String username, String password) {
    try {
      return Future.value(objectBoxInstance.loginStudent(username, password));
    } catch (e) {
      return Future.value(null);
    }
  }
}

import 'package:first_app/Model/student.dart';
import 'package:first_app/data_source/local_data_source/student_data_source.dart';

// Abstract calss of student repository.
abstract class StudentRepository {
  Future<List<Student>> getStudents();
  Future<int> deleteAllStudents();
  Future<int> addStudents(Student student);
  Future<Student?> loginStudents(String username, String password);
}

class StudentRepositoryImpl extends StudentRepository {
  @override
  Future<int> addStudents(Student student) {
    return StudentDataSource().addStudent(student);
  }

  @override
  Future<List<Student>> getStudents() {
    return StudentDataSource().getStudents();
  }

  @override
  Future<Student?> loginStudents(String username, String password) {
    return StudentDataSource().loginStudents(username, password);
  }

  @override
  Future<int> deleteAllStudents() {
    return StudentDataSource().deleteAllStudent();
  }
}

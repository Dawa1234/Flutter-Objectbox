import 'package:first_app/Model/batch.dart';
import 'package:first_app/Model/student.dart';
import 'package:path_provider/path_provider.dart';
import 'package:first_app/objectbox.g.dart';

class ObjectBoxInstance {
  // Database
  late final Store _store;
  // Table
  late final Box<Batch> _batch;
  late final Box<Student> _student;

  ObjectBoxInstance(this._store) {
    _batch = Box<Batch>(_store);
    _student = Box<Student>(_store);

    insertBatches();
  }

  static Future<ObjectBoxInstance> init() async {
    var dir = await getApplicationDocumentsDirectory();
    final store =
        Store(getObjectBoxModel(), directory: '${dir.path}/student_course');

    return ObjectBoxInstance(store);
  }

  // Queries
  int addBatch(Batch batch) {
    return _batch.put(batch);
  }

  int addStudent(Student student) {
    return _student.put(student);
  }

  bool deleteStudent(int studentId) {
    return _student.remove(studentId);
  }

  int deleteAllStudent() {
    return _student.removeAll();
  }

  // Get Batches
  List<Batch> getAllBatch() {
    return _batch.getAll();
  }

  // Get Student
  List<Student> getAllStudent() {
    return _student.getAll();
  }

  int deleteBatch() {
    return _batch.removeAll();
  }

  // Get Student
  Student? loginStudent(String username, String password) {
    return _student
        .query(Student_.username.equals(username) &
            Student_.password.equals(password))
        .build()
        .findFirst();
  }

  void insertBatches() {
    // deleteBatch();
    List<Batch> lstBatches = getAllBatch();
    if (lstBatches.isEmpty) {
      addBatch(Batch('29-A'));
      addBatch(Batch('29-B'));
    }
    for (int i = 0; i < lstBatches.length; i++) {
      print(lstBatches[i].batchName);
    }
  }
}

import 'package:first_app/Model/batch.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Student {
  @Id(assignable: true)
  int studentId;
  String fname;
  String lname;
  String username;
  String password;

  final batch = ToOne<Batch>();

  Student(this.fname, this.lname, this.username, this.password,
      {this.studentId = 0});
}

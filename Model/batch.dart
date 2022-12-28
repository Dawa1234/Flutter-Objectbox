import 'package:first_app/Model/student.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Batch {
  @Id(assignable: true)
  int batchId;
  String batchName;

  @Backlink()
  final student = ToMany<Student>();

  Batch(this.batchName, {this.batchId = 0});
}

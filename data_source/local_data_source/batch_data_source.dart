import 'package:first_app/Model/batch.dart';
import 'package:first_app/State/objectBax_state.dart';
import 'package:first_app/helper/objectBox.dart';

class BatchDataSource {
  ObjectBoxInstance get objectBoxInstance => ObjectBoxState.objectBoxInstance!;
  // OR
  // ObjectBoxInstance objectBoxInstance2 = ObjectBoxState.objectBoxInstance!;

  Future<int> addBatch(Batch batch) async {
    try {
      return objectBoxInstance.addBatch(batch);
    } catch (e) {
      return 0;
    }
  }

  Future<List<Batch>> getAllBatch() async {
    try {
      return objectBoxInstance.getAllBatch();
    } catch (e) {
      return [];
    }
  }
}

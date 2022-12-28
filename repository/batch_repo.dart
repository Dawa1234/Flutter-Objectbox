import 'package:first_app/Model/batch.dart';
import 'package:first_app/data_source/local_data_source/batch_data_source.dart';

abstract class BatchRepository {
  Future<List<Batch>> getAllBatch();
}

class BatchRepoIml extends BatchRepository {
  @override
  Future<List<Batch>> getAllBatch() {
    return BatchDataSource().getAllBatch();
  }
}

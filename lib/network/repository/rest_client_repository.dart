
import 'package:oke_oce_app/model/task_model.dart';

import '../rest_client_service.dart';

class RestClientRepo {
  final RestClientService _restClient;

  RestClientRepo(this._restClient);

  Future<List<TaskModel>> getTask() async {
    final response = await _restClient.getTasks();
    return response;
  }
}
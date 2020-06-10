import 'package:meta/meta.dart';
import 'package:oke_oce_app/model/task_model.dart';

@immutable
abstract class ApiBlocState {}

class InitialApiBlocState extends ApiBlocState {}

class GetTaskSuccess extends ApiBlocState {
  final List<TaskModel> listTask;

  GetTaskSuccess(this.listTask);


}

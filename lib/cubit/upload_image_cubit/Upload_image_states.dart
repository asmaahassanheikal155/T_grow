import 'package:t_grow/plant_model/plant_model.dart';

class UploadImageState{}
class UploadImageSuccessState extends UploadImageState{}
class UploadImageInitial extends UploadImageState{}
class UploadImageLoadingState extends UploadImageState{}
class UploadImageErrorState extends UploadImageState{
  final String errorMessage;

  UploadImageErrorState(this.errorMessage);
}
class TakePhotoSuccess extends UploadImageState {}
class TakePhotoLoading extends UploadImageState {}
class TakePhotoError extends UploadImageState {
  final String errorMessage;

  TakePhotoError(this.errorMessage);
}
class ModelSuccess extends UploadImageState{
  final AIModel aiModel;
  ModelSuccess(this.aiModel);
}
class ModelLoading extends UploadImageState{}
class ModelError extends UploadImageState{
  final String errorMessage;

  ModelError(this.errorMessage);
}

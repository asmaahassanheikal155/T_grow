import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:t_grow/cubit/login_cubit/state_cubit.dart';

import 'Upload_image_states.dart';


class UploadImageCubit extends Cubit<UploadImageState>{
  UploadImageCubit():super(UploadImageInitial());
  static UploadImageCubit  get(context) {
    return BlocProvider.of(context);
  }
  String? image;
  final imagePicker = ImagePicker();
  uploadImage() async {
    emit(UploadImageLoadingState());
    try {
      var pickedImage =
      await imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        image = pickedImage.path;
      } else {}
      emit(UploadImageSuccessState());
    } catch (error) {
      emit(UploadImageErrorState(error.toString()));}}

  takePhoto() async {
        emit(TakePhotoLoading());
        try {
          var pickedImage =
          await imagePicker.pickImage(source: ImageSource.camera);
          if (pickedImage != null) {
            image = pickedImage.path;
          } else {}
          emit(TakePhotoSuccess());
        } catch (error) {
          emit(TakePhotoError(error.toString()));
        }}

  Future getPlantData( {required String image}) async {
    var token ="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI3NWRjYWVjZi1hMzBlLTQyYTQtOTM1ZS1lYTExMmNkMzYyYjIiLCJuYW1lIjoiQXNtYWEiLCJlbWFpbCI6IkFzbWFhQGdtYWlsLmNvbSIsIm5iZiI6MTcxODczNTI5NSwiZXhwIjoxNzE4NzcxMjk1LCJpYXQiOjE3MTg3MzUyOTUsImlzcyI6IlNlY3VyZUFwaSIsImF1ZCI6IlNlY3VyZUFwaVVzZXIifQ.5K1VjYdEpJkVMPxh_QRjStKaVGZ7kN9p_BqzHGfy6mU";
    var dio = Dio(BaseOptions(
      headers: {
        'accept': 'application/json',
        'Content-Type': 'multipart/form-data',
        'Authorization':"Bearer$token",},));
    const url = 'https://graduation-project-api.runasp.net/Inspections/AddInspection';
    var formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(image),});
    emit(ModelLoading());
    try {
      final response = await dio.post(
        url,
        data: formData,);
      emit(ModelSuccess(response.data));}
    catch(e){
      e.toString();
      emit(ModelError(e.toString()));}}

}



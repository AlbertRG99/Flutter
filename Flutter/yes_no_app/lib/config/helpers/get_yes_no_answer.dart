import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/mensaje.dart';
import 'package:dio/dio.dart';

// Petición HTTP

import 'package:dio/dio.dart';

class ObtenerRespuestaSiNo {
  final _dio = Dio();

  Future<Mensaje> getRespuesta() async {
    final response = await _dio.get('https://yesno.wtf/api');

    return Mensaje(
      deQuien: DeQuien.otro,
      text: response.data['answer'],
      imageUrl: response.data['image'],
    );
  }
}
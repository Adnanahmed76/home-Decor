import 'dart:convert';
import 'dart:io';

import 'package:homedecor/data/app_exceptions.dart';
import 'package:homedecor/data/network/baseapiservices.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
class Networkapiservices  extends Baseapiservices{
  @override
  Future getApiResponse(String url)async{
    dynamic responsejson;
    try{
      final response=await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responsejson=returnReponse(response);
    }on SocketException
    {
      throw FetchDataException("No internet Connection");
    }
    return responsejson;
  }
  @override
  Future getPostApiResponse (String url,dynamic data)async{
    dynamic responsejson;
    try{
      Response response=await http.post(Uri.parse(url),
      body:data
      ).timeout(Duration(seconds: 10));

    }on SocketException{
      throw FetchDataException("No internet Connection");
    }
    return responsejson;
  }
}

dynamic returnReponse (http.Response response){
  switch(response.statusCode){
    case 200:
    dynamic responsejson=jsonDecode(response.body);
    return responsejson;
    case 400:
    throw BadRequestException(response.body.toString());
    case 404:
    throw UnauthorizedException(response.body.toString());
    default :
    throw FetchDataException("Error accorded while comunicate");
  }
}


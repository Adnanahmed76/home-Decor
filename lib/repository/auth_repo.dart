import 'package:homedecor/data/app_url.dart';
import 'package:homedecor/data/network/baseapiservices.dart';
import 'package:homedecor/data/network/networkapiservices.dart';

class AuthRepository{
  Baseapiservices _apiServices=Networkapiservices();
Future<dynamic> loginApi(dynamic data)async{
  try{
    dynamic response=await _apiServices.getPostApiResponse(EndPoint.loginEndPoint, data);
    return response;
  }catch(e){
    throw Exception("Logic Api failed $e");
  }
}
Future<dynamic> RegisterApi(dynamic data)async{
  try{
    dynamic response=await _apiServices.getPostApiResponse(EndPoint.registeredApiEndPnt, data);
    return response;
  }catch(e){
    throw Exception("Error ");
  }
}
Future<List<dynamic>> fetchUsers()async{
  try{
    dynamic response=await _apiServices.getApiResponse(EndPoint.Userget);
    return response as List<dynamic>;

  }catch(e){
    throw Exception("Fetch user failed");
  }
}
}
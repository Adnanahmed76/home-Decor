import 'package:flutter/material.dart';
import 'package:homedecor/repository/auth_repo.dart';
import 'package:homedecor/utilis/utils.dart';

class AuthView with ChangeNotifier{
  final _authRepo=AuthRepository();
  bool _loading=false;

  bool get loading=>_loading;

  void setLoading(bool value){
    _loading=value;
    notifyListeners();
  }
  Future<void> loginUser(dynamic data,BuildContext context)async{
    setLoading(true);
  try{
    final response=await _authRepo.loginApi(data);
    Utils.toastMessage("Login Successfully", context);
  }catch(e){
    Utils.toastMessage("Logic failed", context);
  }
  setLoading(false);
  
  }


}
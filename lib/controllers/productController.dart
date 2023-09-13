import 'package:get/get.dart';

import 'package:webviewwithgetx/models/product.dart';
import 'package:webviewwithgetx/services/ProductApi.dart';
class productController extends GetxController{
  
 RxList productList = [].obs;
 RxBool isFavorite=false.obs;
RxBool isLoad=true.obs;
 void toggle(){
   isFavorite.value=!isFavorite.value;
 }
 @override
 void onInit() {
    fetchData();
    super.onInit();
  }
 void fetchData() async{
 var products=await RemoteServices.fetchProducts();
 try{
 if(products!=null){
   print("uuuuuuuuuuuuuuuuuuu");
    isLoad(true);
   productList.value=products;
 }}
 finally{
   isLoad(false);
 }
 }
}
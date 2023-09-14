import 'package:get/get.dart';

import 'package:webviewwithgetx/models/product.dart';
import 'package:webviewwithgetx/services/ProductApi.dart';
class productController extends GetxController{
  
 RxList productList = [].obs;
 RxBool isFavorite=false.obs;
 late RxList<bool> staticArray=RxList<bool>.generate(5, (index) => false);
RxBool isLoad=true.obs;
 void toggle(index){
   staticArray[index]=!staticArray[index];
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
   staticArray=RxList<bool>.generate(products.length, (index) => false);
 }}
 finally{
   isLoad(false);
 }
 }
}
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:webviewwithgetx/controllers/productController.dart';
import 'package:webviewwithgetx/views/product_tile.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    productController controller=Get.put(productController());
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.white,
        leading:Icon(Icons.arrow_circle_right),
        actions: [
          Icon(Icons.shopping_cart)
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                 child:Text("ShopX",style:TextStyle(
                   fontFamily: "avenir",
                   fontSize:32,
                   fontWeight: FontWeight.w900
                 ),), 
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.view_list_rounded)),
                IconButton(onPressed: (){}, icon: Icon(Icons.grid_view))
              ],
            ),
          ),
          Flexible(
         
            child:
            Obx((){
               if (controller.isLoad.value)
                return Center(child: CircularProgressIndicator());
              else
                return
            StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              itemCount: controller.productList.length,
              
             crossAxisSpacing:16,
              mainAxisSpacing:16,
      
              
             itemBuilder: (context,index){
               return ProductTile(controller.productList[index]);
             },
             staggeredTileBuilder:(index)=>StaggeredTile.fit(1));}))
          
        ],
      ),
    );
  }
}
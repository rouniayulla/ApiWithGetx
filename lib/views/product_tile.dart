import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webviewwithgetx/controllers/productController.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webviewwithgetx/models/product.dart';

class ProductTile extends StatelessWidget {
  productController controller=Get.put(productController());
  final Product product;
  final int index;
   ProductTile(this.product,this.index);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding:EdgeInsets.all(10.w),
         child:Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 150.h,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(12.r),
                  ),
                  child: Image.network(
                    product.imageLink,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Obx(() => CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: controller.staticArray[index]
                              ? Icon(Icons.favorite_rounded)
                              : Icon(Icons.favorite_border),
                          onPressed: () {
                            controller.toggle(index);
                            // controller.staticArray[index].to
                          },
                        ),
                      )),
                )
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              product.name,
              maxLines: 2,
              style:
                  TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8.h),
            if (product.rating != null)
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                padding:  EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      product.rating.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.star,
                      size: 16.w,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            SizedBox(height: 8.h),
            Text('\$${product.price}',
                style: TextStyle(fontSize: 32.sp, fontFamily: 'avenir')),
          ],
        ),
      ),
    );
  }
}
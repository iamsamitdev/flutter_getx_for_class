
import 'package:flutter_getx/models/cart_item.dart';
import 'package:flutter_getx/models/data.dart';
import 'package:flutter_getx/models/product.dart';
import 'package:get/get.dart';

class AppController extends GetxController {

  // Counter
  RxInt counter = 0.obs;

  // Navigation
  RxInt navIndex = 0.obs;

  // Increment counter
  increment() => counter++;

  // listCartItem
  RxList<CartItem> listCartItem = <CartItem>[].obs;

  // add to cart
  addToCart({required CartItem item}) {
    // check if item is already in cart
    if(listCartItem.where((element) => (element.productId == item.productId)).isEmpty) {
      // if item is not in cart, add it
      listCartItem.add(item);
    // if item is already in cart, increase quantity
    } else {
      listCartItem.firstWhere((element) => (element.productId == item.productId)).quantity++;
    }
    update(); // update UI
  }

  // get product by id
  Product getProduct({required String productId}) {
    return listProduct.firstWhere((element) => (element.id == productId));  
  }

  // delete item from cart
  deleteItemFfromCart({required String productId}) {
    listCartItem.removeWhere((element) => (element.productId == productId));
    update(); // update UI
  }
  

}
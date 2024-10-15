
import 'package:everything/models/CategoryModel/pagination.dart';
import 'package:everything/models/Prodcut_Model/ProductFilter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductFiltersNotifier extends StateNotifier {

  // initalstare of Products fistsly
  ProductFiltersNotifier(): super (ProductfilterModel(paginationmodel: pagination(page: 1, pagesize: 10)));

  void SetProductFilter(ProductfilterModel model){
    state = model ;
  }
// ye notifier jab kisi dusri categoruyy me tab ho ga tab ye yuekse profuct dikhaye tume

}
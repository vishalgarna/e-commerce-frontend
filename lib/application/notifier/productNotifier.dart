import 'package:everything/Application/State/product_state.dart';
import 'package:everything/Services/Api_Services.dart';
import 'package:everything/models/CategoryModel/pagination.dart';
import 'package:everything/models/Prodcut_Model/ProductFilter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductNotifier extends StateNotifier<ProductState> {
  final ProductfilterModel _productfilterModel;

  final CategoriesServices _apiservices;

  ProductNotifier(this._productfilterModel, this._apiservices)
      : super (ProductState());

  int _page = 1;

  Future<void> getProducts() async {
    if (state.isloading || !state.hasnext) {
      return;
    }

    state = state.copyWith(isloading: true);
    var filterModel = _productfilterModel.copyWith(
        paginationmodel: pagination
          (page: _page, pagesize: 10));

    final products = await _apiservices.GetAllCategories(1, 10);

    final newproducts = [...state.products, ...products!];

    if (products.length % 10 != 0 || products.isEmpty) {
      state = state.copyWith(hasnext: false);
    }

    state = state.copyWith(products: newproducts);
    _page++;

    state = state.copyWith(isloading: true);
  }


// Refresh page funtion when sort the producte wiht any type 0 to 1 and soon

Future<void> refreshProductPage () async {

    state = state.copyWith(products: [] , hasnext: false);

    _page = 1 ;
}

}
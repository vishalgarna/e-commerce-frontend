import 'package:everything/Application/notifier/productNotifier.dart';
import 'package:everything/Application/notifier/product_filter.notifier.dart';
import 'package:everything/Services/Api_Services.dart';
import 'package:everything/models/CategoryModel/category.dart';
import 'package:everything/models/CategoryModel/pagination.dart';
import 'package:everything/models/Prodcut_Model/ProductFilter.dart';
import 'package:everything/models/Prodcut_Model/ProductModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


final categoriesProvider = FutureProvider.family<List<CategoryModel>? , pagination>( (ref , pagination){
      final apirrepositary = ref.watch(apiservice);

      return apirrepositary.GetAllCategories(pagination.page, pagination.pagesize);
}
);

// final homeProductProvider = FutureProvider.family<List<Product>?,ProductfilterModel>((ref , productfilterModel ){
//       final apirespository = ref.watch(apiservice);
//
//       return apirespository.getProduct(productfilterModel);
// });
//
// //provider for filtering prroducts and sorting
//
// final productdfilterprovider = StateNotifierProvider<ProductFiltersNotifier,ProductfilterModel((ref){
//
//       return ProductFiltersNotifier();
// })
//
// final productnotifierprovider = StateNotifierProvider((ref) => ProductNotifier(
//       ref.watch(apiservice),
//       ref.watch(productdfilterprovider)
// ));

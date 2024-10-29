

import 'package:riverpod/riverpod.dart';
import 'package:two_o/Models/category.model/category.dart';
import 'package:two_o/Services/ApiServices.dart';

final CategoryProvider = FutureProvider<List<CategoryModel>?>((ref){

    final repo = ref.watch(apiservice);
    return repo.GetCategories();
});
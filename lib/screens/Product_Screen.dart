import 'package:everything/models/Prodcut_Model/Product_Sort.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String? Categoryid;
  String? CategoryName;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final Map<String, dynamic>? arguments = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    if (arguments != null) {
      Categoryid = arguments['id'];
      CategoryName = arguments['name'];
      print(Categoryid);
      print(CategoryName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Container(
        child: Column(
          children: [
            _ProductFilter(CategorieID: Categoryid, CategoriesName: CategoryName)
          ],
        ),
      ),
    );
  }
}

class _ProductFilter extends ConsumerWidget{


  // Just Creating  Filter_Option For PopButton
  final _sortByOptions = [
    ProductSortModel(value: 'CreatedAt' , label: 'Latest'),
    ProductSortModel(value: '-productPrice' , label: 'Price High to low'),
    ProductSortModel(value: 'productPrice' , label: 'Price Low To High')
  ];

  _ProductFilter({
    required this.CategorieID,
    required this.CategoriesName,
});

  String ? CategorieID;
  String ? CategoriesName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(CategoriesName! ,style: TextStyle(fontSize:20 ),),
          Container(
            child: PopupMenuButton(
              onSelected: (sortby){
                
              },
              icon: Icon(Icons.filter_list_alt),
                itemBuilder: (BuildContext context){
                  return _sortByOptions.map((items) => PopupMenuItem
                    ( onTap: (){
                      
                  },
                      value :items.value ,child: Text(items.label!))
                  ).toList();
                }) ,
          )
        ],
      ),
    );
  }

}

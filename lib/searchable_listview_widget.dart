import 'package:custom_search_listview/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:searchable_listview/searchable_listview.dart';

class SearchableListViewWidget extends StatefulWidget {
  const SearchableListViewWidget({Key? key, required this.itemWidget, required this.listItems, required this.onSelected}) : super(key: key);

  final Function itemWidget;
  final List<dynamic> listItems;
  final Function onSelected;

  @override
  State<SearchableListViewWidget> createState() =>
      _SearchableListViewWidgetState();
}

class _SearchableListViewWidgetState extends State<SearchableListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return SearchableList(
      //Builder
      builder: (dynamic listChildModel)=> widget.itemWidget(listChildModel),

      //List and Filtering
      asyncListCallback: () async {
        return widget.listItems;
      },
      asyncListFilter: (searchText, list) {
        return list
            .where((element) => element.name.contains(searchText))
            .toList();
      },

      //Other Widgets
      loadingWidget: Container(),
      errorWidget: const Center(
        child: Text("Error fetching list")
      ),

      //functions
      onRefresh: ()async{},
      onItemSelected: (dynamic item){
        widget.onSelected(item);
      },
      onPaginate: () async{},

      //Search textField
      autoFocusOnSearch: false,
      style: text_1F2024_14_Regular_w400,
      inputDecoration: InputDecoration(
        isCollapsed: false,
        suffix: const SizedBox(width:0,height:0),
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(
              start: 16, end: 16),
          child: Image.asset(
            IC_SEARCH,
            width: 8,
            height: 8,
            color: black_rgba_8F9098,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        hintText: "Search",
        hintStyle: text_8f9098_14_Normal_w400,
        filled: true,
        fillColor: const Color.fromRGBO(255, 255, 255, 1),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromRGBO(197, 198, 204, 1)),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Color(0xFF006FFD)),
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

import 'package:getx_template/app/core/values/values.dart';

class PagingController<T> {
  List<T> listItems = [];
  int pageNumber = AppValues.defaultPageNumber;
  int pageSize = 10;
  bool isLoadingPage = false;
  bool endOfList = false;

  initRefresh() {
    listItems = [];
    pageNumber = AppValues.defaultPageNumber;
    pageSize = 10;
    isLoadingPage = false;
    endOfList = false;
  }

  bool canLoadNextPage() {
    return !isLoadingPage && !endOfList;
  }

  appendPage(List<T> items) {
    listItems.addAll(items);
    pageNumber++;
  }

  appendLastPage(List<T> items) {
    listItems.addAll(items);
    endOfList = true;
  }
}

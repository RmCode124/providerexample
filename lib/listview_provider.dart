import 'package:flutter/cupertino.dart';

class ListDataProvider extends ChangeNotifier {

  List<Map<String, dynamic>> _mData = [];

  List<Map<String, dynamic>> getMyListData() {
    return _mData;
  }

  //actions(Events)

  addData(Map<String, dynamic>newData) {
    _mData.add(newData);
    notifyListeners();
  }

  updateData(Map<String, dynamic> DataToBeUpdated, int index) {
    _mData[index] = DataToBeUpdated;
    notifyListeners();
  }

  removeData(int index) {
    _mData.removeAt(index);
    notifyListeners();
  }


}
/*

 removeDataMap(Map<String,dynamic> DataToBeUpdaate){
    _mData.removeWhere((element) => element==DataToBeUpdaate);
 }
}*/

class ElementList {
  List<String> list = [];
  ElementList(this.list);

  getList() {
    return list;
  }

  addElement(String element) {
    list.add(element);
  }

  deleteElement(String element) {
    list.remove(element);
  }

  editElement(String oldElement, String newElement) {
    print("LLega aqui");
    int index = list.indexOf(oldElement);
    list[index] = newElement;
    //if (index != -1) {
    //  list[index] = newElement;
    //}
  }

  String firstElement() {
    return list[0];
  }

  String lastElement() {
    return list[list.length - 1];
  }
}

List<String> list = ["a"];
ElementList listedElements = ElementList(list);
String selectedValue = listedElements.firstElement();
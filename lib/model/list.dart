class ElementList {
  List<String> list = [];
  ElementList(this.list);

  getList(){
    return list;
  }

  addElement(String element) {
    list.add(element);
  }

  deleteElement(String element) {
    list.remove(element);
  }

  editElement(String element, String newElement) {
    list[list.indexOf(element)] = newElement;
  }

  String firstElement() {
    return list[0];
  }

  String lastElement() {
    return list[list.length - 1];
  }

}

List<String> list = ["Hola", "Mundo", "Como", "Estas"];
ElementList listedElements = ElementList(list);

List<int> mergesorting(List<int> array) {
  if (array.length <= 1) {
    return array;
  }
  var mid = array.length / 2.toInt();
  List<int> firsthalf = array.sublist(0, mid.toInt());
  List<int> secondhalf = array.sublist(mid.toInt(), array.length);
  return join(mergesorting(firsthalf), mergesorting(secondhalf));
}

List<int> join(List<int> firsthalf, List<int> secondhalf) {
  List<int> newarr = List<int>.filled(firsthalf.length + secondhalf.length, 0);
  int i = 0;
  int j = 0;
  int k = 0;
  while (i < firsthalf.length && j < secondhalf.length) {
    if (firsthalf[i] <= secondhalf[j]) {
      newarr[k++] = firsthalf[i++];
    } else {
      newarr[k++] = secondhalf[j++];
    }
  }
  while (i < firsthalf.length) {
    newarr[k++] = firsthalf[i++];
  }
  while (j < secondhalf.length) {
    newarr[k++] = secondhalf[j++];
  }
  return newarr;
}

void main(List<String> args) {
  List<int> array = [1, 55, 22, 12, 33, 4, 7];
  List<int> add = mergesorting(array);
  print(add);
}

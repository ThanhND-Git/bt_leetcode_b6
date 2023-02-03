// https://leetcode.com/problems/add-to-array-form-of-integer/
void main(List<String> args) {
  print(addToArrayForm([1, 2, 0, 0], 34));
  print(addToArrayForm([2,7,4], 181));
  print(addToArrayForm([2,1,5], 806));
}
// ý tưởng là lấy phần tử cuối cùng của mảng cộng với k 
// được bao nhiêu thì giữ lại phần đơn vị, còn các phần còn lại của kết quả thì cộng tiếp với số tiếp theo ...
// vd1: 0 + 34 = 34; giữ lại 4, nhớ 3
// 3 + 0 = 3 ; giữ lại 3
// 2 + 0 = 2;
// 1 + 0  = 1
List<int> addToArrayForm(List<int> num, int k) {
  int cur = k;
  List<int> ans = []; 
  int i = num.length;
  while (--i >= 0 || cur > 0) {
    if (i >= 0) {
      cur += num[i];
    }
    ans.add(cur % 10);
    cur ~/= 10;
  }
  final res = ans.reversed; // đảo ngược mảng
  return res.toList();
}

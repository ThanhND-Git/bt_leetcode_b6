// https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/description/
void main(List<String> args) {
  print(removeDuplicates("abbaca"));
  print(removeDuplicates("azxxzy"));
}

String removeDuplicates(String s) {
  List<String> res = s.split('');
  for (int i = 0; i < res.length - 1; i++) {
    if (res[i] == res[i + 1]) {
      res.removeRange(i, i + 2);
      i= -1;
      // break;
    }
    // return res.join();
  }
  return res.join("");
  // int i = 0;
  // int j = 1;
  // res = rec(res, j, i);
  // return res.join();
}

// List<String> rec(List<String> res, int j, int i) {
//   if (i >= res.length || j >= res.length) {
//     return res;
//   }

//   if (res[i] == res[j]) {
//     res.removeRange(i, i + 2); // xoá
//     i = 0;
//     j = 1;

//     return rec(res, j, i); // sau đó bắt đầu lại
//   }
//   // ngược lại tăng i và j

//   j += 1;
//   i += 1;

//   return rec(res, j, i);
// }

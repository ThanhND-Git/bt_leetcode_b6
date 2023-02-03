//  https://leetcode.com/problems/divisor-game/
void main(List<String> args) {
  print(divisorGame(2));
  print(divisorGame(3));
  print(divisorGame(5));
  print(divisorGame(6));
  print(divisorGame(16));
  print(divisorGame(7));
}

//1 <= n <=1000
//n = 5     alice chọn 1; còn 4 bob chọn 2; còn 2 alice chọn 1 ; 1
//n = 6     alice chọn 2; còn 4 ...
//n = 6     alice chọn 3; còn 3 bob chọn 1; còn 2 alice chọn 1 ; 1
//n = 7     alice chọn 1; còn 6
// nếu n là số chẵn thì alice luôn thắng và ngược lại
bool divisorGame(int n) {
  if (n % 2 == 0) {
    return true;
  }
  return false;
}

// bool divisorGame(int n) {
//   List<bool> dg = List.filled(n + 1, true);
//   if (n == 1) return false; // 0 < x < n
//   if (n == 2) return true;
//   if (n > 2) {
//     dg[1] = false;
//     dg[2] = true;
//   }

//   for (int i = 3; i <= n; i++) {
//     dg[i] = !dg[i - 1];
//   }

//   return dg[n];
// }

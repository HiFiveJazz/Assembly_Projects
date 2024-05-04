struct S1 {
  char c; // aligned to 1-byte
  int i[2]; // aligned to 4-bytes
  double v; //aligned to 4(8 in Linux-64)
}*p;
// (Linux-32)k = max(1,4,4) = 4
// (Linux-64)k = max(1,4,8) = 8

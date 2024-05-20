# Define N 3
int Operation Mat(int Matrix[N][N], int jump) {
// @Mat is @ 8[ebp]
// jump is @ 12[ebp]
int j; //@ -12[ebp]
int i; //@ -8[ebp]
int res; //@ -4[ebp]
res = 0;
for (i=0, i<3, i+=jump) {
    for (j=0; j<3; j++){
      res -= Matrix[i][j]+i;
    }
  }
return res;
}


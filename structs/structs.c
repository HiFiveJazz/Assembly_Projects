typedef struct {
  int i;
  int a[3];
  int *p;
} X;
X S;

Init(&S)

// Example

void init (X *S) {
  (*S).i = 1;
  S->a[2] = 0;
  S->p = &(*S).a[0];
}

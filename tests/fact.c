int a = 12;
int b = a;
int c = b+1;
int PARAM = 6;

int fact(int n) {
	if (n < 2) {
		return 1;
	} else {
		return n * fact(n - 1);
	}
}



void main() {
	putchar(fact(PARAM));
}

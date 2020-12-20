int a = 12;
int b = a;
int c = b+1;

int fact(int n) {
	if (a < 2) {
		return 1;
	} else {
		return n * fact(n - 1);
	}
}



void main() {

	putchar(fact(PARAM));
}

#define _CRT_SECURE_NO_WARNINGS
#include <conio.h>
#include <stdio.h>
extern "C" int pruklad(int, int, char);
extern "C" {
	short B = 0, D = 0;
	char E = 0; }
int main() {
	int K = 0x6DD02316;
	printf("X = K + B2 / 4 - D2 * 4 - E1   where K = 6DD02316");
	printf("\n");
	printf("Char(E) from 0 to 255\n");
	printf("Enter numbers:\n");
	printf("Enter B = ");
	scanf("%d", &B);
	printf("Enter D = ");
	scanf("%d", &D);
	printf("Enter E = ");
	scanf("%d", &E);
	printf("Result in C(from_C): %d ", K + B / 4 - D * 4 - E);
	printf("\n");
	int X = pruklad(B, D, E);
	printf("Result in C from ASM(from_C) %d", X);
	printf("\n");
	_getch();
	return 0;
}
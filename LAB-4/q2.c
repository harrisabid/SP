#include <stdio.h>
#include <sys/types.h>
main(){

printf("sbrk(0) before malloc(): 0x%x\n", sbrk(0));
int *i1, *i2 , *i3, *i4;

i1 = (int *) malloc(4);
printf("sbrk(0) after `i1 = (int *) malloc(2)': 0x%x\n",
sbrk(0));
i2 = (int *) malloc(4);
printf("sbrk(0) after `i2 = (int *) malloc(3)': 0x%x\n",
sbrk(0));
printf("sbrk(0) after `i3 = (int *) malloc(4)': 0x%x\n",
sbrk(0));
printf("sbrk(0) after `i4 = (int *) malloc(5)': 0x%x\n",
sbrk(0));
printf("i1 = 0x%x, i2 = 0x%x,i3 = 0x%x,i4 = 0x%x\n", i1, i2, i3, i4);
}

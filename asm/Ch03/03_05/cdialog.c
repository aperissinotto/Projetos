#include <stdio.h>
void call_dialog1(void);
void call_dialog2(void);
void call_dialog3(void);

int main() {
    call_dialog1();
    printf("C: I'm a mid-level language\n");
    call_dialog2();
    printf("C: I'm a kind of fast\n");
    call_dialog3();
    printf("C: My development cycle is good\n");    
    return 0;
}

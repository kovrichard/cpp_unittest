#include <iostream>

using namespace std;

int main(void)
{
    printf("Hello World!\n");
    int* buffer = new int[10];
    delete buffer;
    return 0;
}

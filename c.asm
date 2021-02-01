#include <reg51.h>
void MSDelay(unsigned int);
void main(void)
{
unsigned char mybyte;
P1=0xFF; //make P1 input port
while (1)
{
mybyte=P1; //get a byte from P1
MSDelay(500);
P2=mybyte; //send it to P2
}
}
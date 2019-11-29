#include "alt_types.h"
#include "altera_avalon_pio_regs.h"
#include "sys/alt_irq.h"
#include "system.h"
#include <stdio.h>
#include <unistd.h>



int sw_value;

#define SWITCH_BASE 0x00011020
#define LED_BASE 0x00011030
#define demo_iord(addr) (*(volatile int *)(addr))
#define demo_iowr(addr, data) (*(int *)(addr) = (data))


static void initial_message()
{

    printf("\n\n**************************\n");
    printf("* Hello from Nios II!    *\n");
    printf("* SW and LEDGs           *\n");
    printf("**************************\n");
}

int main(void)
{
	initial_message();

	while(1){

//		TESTE INICIAL
//		sw_value = (*(volatile alt_u8 *)(0x00011020));
//		(*( alt_u8 *)(0x00011030)) = sw_value;

//		Utilizando as MACROS
		sw_value = demo_iord(SWITCH_BASE);
		demo_iowr(LED_BASE, sw_value);


		usleep(100000);		//Sleep 0.1s
	}

}

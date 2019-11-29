	first_nios2_system u0 (
		.clk_clk                            (<connected-to-clk_clk>),                            //                         clk.clk
		.led_pio_external_connection_export (<connected-to-led_pio_external_connection_export>), // led_pio_external_connection.export
		.reset_reset_n                      (<connected-to-reset_reset_n>),                      //                       reset.reset_n
		.sw_pio_external_connection_export  (<connected-to-sw_pio_external_connection_export>),  //  sw_pio_external_connection.export
		.lcd_external_RS                    (<connected-to-lcd_external_RS>),                    //                lcd_external.RS
		.lcd_external_RW                    (<connected-to-lcd_external_RW>),                    //                            .RW
		.lcd_external_data                  (<connected-to-lcd_external_data>),                  //                            .data
		.lcd_external_E                     (<connected-to-lcd_external_E>)                      //                            .E
	);


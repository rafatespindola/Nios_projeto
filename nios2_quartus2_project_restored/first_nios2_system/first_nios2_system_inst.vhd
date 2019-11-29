	component first_nios2_system is
		port (
			clk_clk                            : in    std_logic                    := 'X';             -- clk
			led_pio_external_connection_export : out   std_logic_vector(7 downto 0);                    -- export
			reset_reset_n                      : in    std_logic                    := 'X';             -- reset_n
			sw_pio_external_connection_export  : in    std_logic_vector(7 downto 0) := (others => 'X'); -- export
			lcd_external_RS                    : out   std_logic;                                       -- RS
			lcd_external_RW                    : out   std_logic;                                       -- RW
			lcd_external_data                  : inout std_logic_vector(7 downto 0) := (others => 'X'); -- data
			lcd_external_E                     : out   std_logic                                        -- E
		);
	end component first_nios2_system;

	u0 : component first_nios2_system
		port map (
			clk_clk                            => CONNECTED_TO_clk_clk,                            --                         clk.clk
			led_pio_external_connection_export => CONNECTED_TO_led_pio_external_connection_export, -- led_pio_external_connection.export
			reset_reset_n                      => CONNECTED_TO_reset_reset_n,                      --                       reset.reset_n
			sw_pio_external_connection_export  => CONNECTED_TO_sw_pio_external_connection_export,  --  sw_pio_external_connection.export
			lcd_external_RS                    => CONNECTED_TO_lcd_external_RS,                    --                lcd_external.RS
			lcd_external_RW                    => CONNECTED_TO_lcd_external_RW,                    --                            .RW
			lcd_external_data                  => CONNECTED_TO_lcd_external_data,                  --                            .data
			lcd_external_E                     => CONNECTED_TO_lcd_external_E                      --                            .E
		);


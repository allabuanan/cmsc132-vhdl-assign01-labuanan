library IEEE; use IEEE.std_logic_1164.all;
	
	alarm is
		port (buzzer : out std_logic;
				result: out std_logic_vector(1 downto 0);
				bean_out, bean_in, bunce_out, bunce_in, boggis_out, boggis_in: in std_logic);
	end entity;

	architecture priority of alarm is
	begin
		process (bean_out, bean_in, bunce_out, bunce_in, boggis_out, boggis_in) is
			begin
				if (((bean_out = '1') and (bean_in = '1')) or ((bunce_out = '1') and (bunce_in = '1')) or ((boggis_out = '1') and (boggis_in = '1')) 
				or ((bean_out = '1') and (bunce_in = '1')) or ((bean_out = '1') and (boggis_in = '1')) 
				or ((bean_in = '1') and (bunce_out = '1')) or ((bean_in = '1') and (boggis_out = '1'))
				or ((boggis_out = '1') and (bunce_in = '1')) or ((boggis_out = '1') and (bean_in = '1'))
				or ((boggis_in = '1') and (bunce_out = '1')) or ((boggis_in = '1') and (bean_out = '1'))
				or ((bunce_out = '1') and (boggis_in = '1')) or ((bunce_out = '1') and (bean_in = '1'))
				or ((bunce_in = '1') and (boggis_out = '1')) or ((bunce_in = '1') and (bean_out = '1'))
					then buzzer <= '1';
					else buzzer <= '0';
				end if;
				
		end process;
	end architecture priority;
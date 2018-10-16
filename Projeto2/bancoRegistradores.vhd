library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).
entity bancoRegistradores is
    generic
    (
        larguraDados        : natural := 32;
        larguraEndBancoRegs : natural := 5
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk        : in std_logic;
--
        enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoC   : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
--
        dadoEscritaC    : in std_logic_vector((larguraDados-1) downto 0);
--
        escreveC      : in std_logic := '1';
--
        saidaA          : out std_logic_vector((larguraDados -1) downto 0);
        saidaB          : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;


architecture arch of bancoRegistradores is

component mux32way is
	 Port ( 
	 i0, i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31: in std_logic_vector(31 downto 0);
	 sel: in std_logic_vector(4 downto 0);
	 selected : out std_logic_vector(31 downto 0));
end component;

component dmux32way is
	 Port ( 
	 sel: in std_logic_vector(4 downto 0);
	 input : in std_logic_vector(31 downto 0);
	 o0, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,o17,o18,o19,o20,o21,o22,o23,o24,o25,o26,o27,o28,o29,o30,o31: out std_logic_vector(31 downto 0) 
	 );	 
end component;

component Registrador is
 generic (
	  larguraDados : natural := 32
 );
	port (DIN : in    std_logic_vector(larguraDados-1 downto 0);
		  DOUT : out   std_logic_vector(larguraDados-1 downto 0);
		  ENABLE : in  std_logic_vector(4 downto 0);
		  CLK,RST : in std_logic);
end component;


--sinais
signal i0, i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31: std_logic_vector(31 downto 0);
signal o0, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,o17,o18,o19,o20,o21,o22,o23,o24,o25,o26,o27,o28,o29,o30,o31: std_logic_vector(31 downto 0);
signal c_extendido: std_logic_vector(4 downto 0);
begin
	
	c_extendido <= escreveC & escreveC & escreveC & escreveC & escreveC;
	--registradore
	add1to1: Registrador port map(DIN => i0,DOUT => o0,ENABLE => (enderecoC xnor "00000") 	  and c_extendido ,CLK => clk,RST => '0');
	add1to2: Registrador port map(DIN => i1,DOUT => o1,ENABLE => (enderecoC xnor "00001")    and c_extendido ,CLK => clk,RST => '0');
	add1to3: Registrador port map(DIN => i2,DOUT => o2,ENABLE => (enderecoC xnor "00010")    and c_extendido ,CLK => clk,RST => '0');
	add1to4: Registrador port map(DIN => i3,DOUT => o3,ENABLE => (enderecoC xnor "00011")    and c_extendido ,CLK => clk,RST => '0');
	add1to5: Registrador port map(DIN => i4,DOUT => o4,ENABLE => (enderecoC xnor "00100")    and c_extendido ,CLK => clk,RST => '0');
	add1to6: Registrador port map(DIN => i5,DOUT => o5,ENABLE => (enderecoC xnor "00101")    and c_extendido ,CLK => clk,RST => '0');
	add1to7: Registrador port map(DIN => i6,DOUT => o6,ENABLE => (enderecoC xnor "00110")    and c_extendido ,CLK => clk,RST => '0');
	add1to8: Registrador port map(DIN => i7,DOUT => o7,ENABLE => (enderecoC xnor "00111")    and c_extendido ,CLK => clk,RST => '0');
	add1to9: Registrador port map(DIN => i8,DOUT => o8,ENABLE => (enderecoC xnor "01000")    and c_extendido ,CLK => clk,RST => '0');
	add1to10: Registrador port map(DIN => i9,DOUT => o9,ENABLE => (enderecoC xnor "01001")   and c_extendido ,CLK => clk,RST => '0');
	add1to11: Registrador port map(DIN => i10,DOUT => o10,ENABLE => (enderecoC xnor "01010") and c_extendido ,CLK => clk,RST => '0');
	add1to12: Registrador port map(DIN => i11,DOUT => o11,ENABLE => (enderecoC xnor "01011") and c_extendido ,CLK => clk,RST => '0');
	add1to13: Registrador port map(DIN => i12,DOUT => o12,ENABLE => (enderecoC xnor "01100") and c_extendido ,CLK => clk,RST => '0');
	add1to14: Registrador port map(DIN => i13,DOUT => o13,ENABLE => (enderecoC xnor "01101") and c_extendido ,CLK => clk,RST => '0');
	add1to15: Registrador port map(DIN => i14,DOUT => o14,ENABLE => (enderecoC xnor "01110") and c_extendido ,CLK => clk,RST => '0');
	add1to16: Registrador port map(DIN => i15,DOUT => o15,ENABLE => (enderecoC xnor "01111") and c_extendido ,CLK => clk,RST => '0');
	add1to17: Registrador port map(DIN => i16,DOUT => o16,ENABLE => (enderecoC xnor "10000") and c_extendido ,CLK => clk,RST => '0');
	add1to18: Registrador port map(DIN => i17,DOUT => o17,ENABLE => (enderecoC xnor "10001") and c_extendido ,CLK => clk,RST => '0');
	add1to19: Registrador port map(DIN => i18,DOUT => o18,ENABLE => (enderecoC xnor "10010") and c_extendido ,CLK => clk,RST => '0');
	add1to20: Registrador port map(DIN => i19,DOUT => o19,ENABLE => (enderecoC xnor "10011") and c_extendido ,CLK => clk,RST => '0');
	add1to21: Registrador port map(DIN => i20,DOUT => o20,ENABLE => (enderecoC xnor "10100") and c_extendido ,CLK => clk,RST => '0');
	add1to22: Registrador port map(DIN => i21,DOUT => o21,ENABLE => (enderecoC xnor "10101") and c_extendido ,CLK => clk,RST => '0');
	add1to23: Registrador port map(DIN => i22,DOUT => o22,ENABLE =>(enderecoC xnor "10110")  and c_extendido ,CLK => clk,RST => '0');
	add1to24: Registrador port map(DIN => i23,DOUT => o23,ENABLE =>(enderecoC xnor "10111")  and c_extendido ,CLK => clk,RST => '0');
	add1to25: Registrador port map(DIN => i24,DOUT => o24,ENABLE =>(enderecoC xnor "11000")  and c_extendido ,CLK => clk,RST => '0');
	add1to26: Registrador port map(DIN => i25,DOUT => o25,ENABLE =>(enderecoC xnor "11001")  and c_extendido ,CLK => clk,RST => '0');
	add1to27: Registrador port map(DIN => i26,DOUT => o26,ENABLE =>(enderecoC xnor "11010")  and c_extendido ,CLK => clk,RST => '0');
	add1to28: Registrador port map(DIN => i27,DOUT => o27,ENABLE => (enderecoC xnor "11011") and c_extendido ,CLK => clk,RST => '0');
	add1to29: Registrador port map(DIN => i28,DOUT => o28,ENABLE => (enderecoC xnor "11100") and c_extendido ,CLK => clk,RST => '0');
	add1to30: Registrador port map(DIN => i29,DOUT => o29,ENABLE => (enderecoC xnor "11101") and c_extendido ,CLK => clk,RST => '0');
	add1to31: Registrador port map(DIN => i30,DOUT => o30,ENABLE =>(enderecoC xnor "11110")  and c_extendido ,CLK => clk,RST => '0');
	add1to32: Registrador port map(DIN => i31,DOUT => o31,ENABLE =>(enderecoC xnor "11111")  and c_extendido ,CLK => clk,RST => '0');

	--muxes
	muxA: mux32way port map(o0, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,o17,o18,o19,o20,o21,o22,o23,o24,o25,o26,o27,o28,o29,o30,o31,sel => enderecoA, selected => saidaA);
	muxB: mux32way port map(o0, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,o17,o18,o19,o20,o21,o22,o23,o24,o25,o26,o27,o28,o29,o30,o31,sel => enderecoB, selected => saidaB);

	--demux
	dmuxC: dmux32way port map(enderecoC, dadoEscritaC, i0, i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31);
	
end architecture; 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity alu is
	 Port ( 
	 A : in std_logic_vector(31 downto 0);
	 B : in std_logic_vector(31 downto 0);
	 cin: in std_logic;
	 invA: in std_logic;
	 invB: in std_logic;
	 func : in std_logic_vector(1 downto 0);
	 output : out std_logic_vector(31 downto 0);
	 zero: out std_logic;
	 cout: out std_logic;
	 resultadoSoma : out std_logic_vector(31 downto 0);
	 overflow: out STD_LOGIC);
	 
	 
end alu;
 
architecture alu_arch of alu is

component mux2way is
	 Port ( 
	 i1 : in std_logic_vector(31 downto 0);
	 i2 : in std_logic_vector(31 downto 0);
	 sel : in std_logic;
	 selected : out std_logic_vector(31 downto 0));
end component;

component or32 is
	 Port ( 
	 input : in std_logic_vector(31 downto 0);
	 output : out std_logic);
end component;

component mux4way is
	 Port ( 
	 i1 : in std_logic_vector(31 downto 0);
	 i2 : in std_logic_vector(31 downto 0);
	 i3 : in std_logic_vector(31 downto 0);
	 i4 : in std_logic_vector(31 downto 0);
	 sel : in std_logic_vector(1 downto 0);
	 selected : out std_logic_vector(31 downto 0));
end component;

component FullAdder32 is
	port(
		a,b:      in STD_LOGIC_vector(31 downto 0);   -- entradas
		c: in  std_logic;
		soma: out STD_LOGIC_vector(31 downto 0);  
		vaium, v: out STD_LOGIC   -- sum e carry
	);
end component;

signal out1, out2, out3, out4, fa, fb, tempOutput : std_logic_vector(31 downto 0);
signal v: std_logic;
signal tempFlag: std_logic;
	
begin

	choiceA: mux2way port map(i1 => A, i2 => (not A), sel => invA, selected => fa);
	choiceB: mux2way port map(i1 => B, i2 => (not B), sel => invB, selected => fb);


	out1 <= fa and fb;
	out2 <= fa or  fb;
	adder: FullAdder32 port map(a => fa, b => fb, c => cin, soma => out3, vaium => cout, v => v);
	out4(0) <= out3(31) xor v;
	overflow <= v;
	resultadoSoma <= out3;
	
	final: mux4way port map(
		i1 => out1, i2 => out2, i3 => out3, i4 => out4, sel => func, selected => tempOutput
	);
	
	output <=  tempOutput;
	
	flag: or32 port map( input => tempOutput, output => tempFlag);
	zero <= not tempFlag;
  
end architecture;
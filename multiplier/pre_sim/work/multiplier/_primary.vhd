library verilog;
use verilog.vl_types.all;
entity multiplier is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        a               : in     vl_logic_vector(11 downto 0);
        b               : in     vl_logic_vector(11 downto 0);
        c               : out    vl_logic_vector(23 downto 0)
    );
end multiplier;

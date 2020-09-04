library verilog;
use verilog.vl_types.all;
entity storeNumbers is
    port(
        n               : in     vl_logic_vector(31 downto 0);
        d               : in     vl_logic_vector(31 downto 0);
        c               : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic
    );
end storeNumbers;

module numbers_to_string_large(
    //This module will transform a number between 0 to 9999 to string
    input          [14:0]       number,
    output  wire    [31:0]      string
    );
    wire    [7:0]       thousand;
    wire    [7:0]       hundred;
    wire    [7:0]       ten;
    wire    [7:0]       one;
    assign thousand = number / 1000 ;
    assign hundred = (number - 1000 * thousand)/ 100;
    assign ten     = (number - 1000 * thousand - 100 * hundred) / 10;
    assign one     = (number - 1000 * thousand - 100 * hundred - 10 * ten);

    assign string = (number < 10000 && number >= 0) ? {thousand +8'd48, hundred+8'd48, ten+8'd48, one+8'd48} : {8'd48, 8'd48, 8'd48, 8'd48};
endmodule
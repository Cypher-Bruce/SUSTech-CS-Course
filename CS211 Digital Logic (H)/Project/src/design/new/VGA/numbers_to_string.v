module numbers_to_string(
   //This will transform a number between 0~100 to string. 
    input          [7:0]       number,
    output  reg    [23:0]      string
    );
    
    always @* begin
        if(number < 10 && number >= 0) begin
           string = {8'd48, 8'd48, number + 8'd48};
        end
        else if(number < 100 && number >= 10) begin
           string = {8'd48, (number / 8'd10) + 8'd48, number - 8'd10 * (number / 8'd10) + 8'd48}; 
        end
        else if(number == 100) begin
           string = {8'd49, 8'd48, 8'd48};
        end
        else begin
           string = {8'd48, 8'd48, 8'd48};
        end
    end
endmodule
// HDLBits - Vectors: Replication operator (Sign extension, 8bit -> 32bit)
module top_module (
    input  [7:0]  in,
    output [31:0] out );

    // 要点：{24{in[7]}} 是一个完整的复制表达式（自带两层花括号），
    // 再和 in 拼接时，外面还要套一层 —— 所以总共三层花括号。
    assign out = {{24{in[7]}}, in};

endmodule

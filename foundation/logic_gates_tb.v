`timescale 1ns/1ps

module logic_gates_tb;

    reg a;
    reg b;
    wire y_and;
    wire y_or;
    wire y_not;

    // Instantiate modules
    and_gate uut1 (
        .a(a),
        .b(b),
        .y(y_and)
    );

    or_gate uut2 (
        .a(a),
        .b(b),
        .y(y_or)
    );

    not_gate uut3 (
        .a(a),
        .y(y_not)
    );

    initial begin
        $display("a b | AND OR NOT(a)");
        $monitor("%b %b |  %b   %b   %b", a, b, y_and, y_or, y_not);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

endmodule

/* Generated by Yosys 0.9+4052 (git sha1 5c1e6a0e, clang 7.0.1 -fPIC -Os) */

/* This test makes sure that we keep track of any outputs that aren't directly
on the logic cone, but are driven by cell that are. If we were to destory these
cells we need to make sure any pins they drive are primary outputs in ABC to
preserve correctness.
*/

module top(clk, a, b, c, d);
  input clk;
  input a;
  input b;
  output c;
  output d;
  
  wire flop_net;
  wire _unconnected_;

  AND2_X1 _403_ (
    .A1(a),
    .A2(b),
    .ZN(flop_net)
  );

  DFF_X1 output_flop (
    .CK(clk),
    .D(flop_net),
    .Q(c),
    .QN(_unconnected_)
  );

  DFF_X1 output_flop2 (
    .CK(clk),
    .D(flop_net),
    .Q(d),
    .QN(_unconnected_)
  );

endmodule
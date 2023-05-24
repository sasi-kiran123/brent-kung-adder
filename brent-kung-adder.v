module BrentKungAdder(input [31:0] a, b, input cin, output [31:0] sum, output cout);
  wire [31:0] p, g;
  wire [31:0] p_prefix, g_prefix;
  
  assign p = a ^ b;
  assign g = a & b;
  
  // Generate prefix wires
  assign p_prefix[0] = p[0];
  assign g_prefix[0] = g[0];
  
  genvar i;
  generate
    for (i = 1; i < 32; i = i + 1) begin
      assign p_prefix[i] = p_prefix[i-1] & p[i];
      assign g_prefix[i] = g_prefix[i-1] | (p_prefix[i-1] & g[i]);
    end
  endgenerate
  
  assign sum[0] = p[0] ^ cin;
  assign cout = g[0] | (p[0] & cin);
  
  assign sum[1] = p[1] ^ p_prefix[0];
  assign sum[2] = p[2] ^ p_prefix[1];
  assign sum[3] = p[3] ^ p_prefix[2];
  assign sum[4] = p[4] ^ p_prefix[3];
  assign sum[5] = p[5] ^ p_prefix[4];
  assign sum[6] = p[6] ^ p_prefix[5];
  assign sum[7] = p[7] ^ p_prefix[6];
  assign sum[8] = p[8] ^ p_prefix[7];
  assign sum[9] = p[9] ^ p_prefix[8];
  assign sum[10] = p[10] ^ p_prefix[9];
  assign sum[11] = p[11] ^ p_prefix[10];
  assign sum[12] = p[12] ^ p_prefix[11];
  assign sum[13] = p[13] ^ p_prefix[12];
  assign sum[14] = p[14] ^ p_prefix[13];
  assign sum[15] = p[15] ^ p_prefix[14];
  assign sum[16] = p[16] ^ p_prefix[15];
  assign sum[17] = p[17] ^ p_prefix[16];
  assign sum[18] = p[18] ^ p_prefix[17];
  assign sum[19] = p[19] ^ p_prefix[18];
  assign sum[20] = p[20] ^ p_prefix[19];
  assign sum[21] = p[21] ^ p_prefix[20];
  assign sum[22] = p[22] ^ p_prefix[21];
  assign sum[23] = p[23] ^ p_prefix[22];
  assign sum[24] = p[24] ^ p_prefix[23];
  assign sum[25] = p[25] ^ p_prefix[24];
  assign sum[26] = p[26] ^ p_prefix[25];
  assign sum[27] = p[27] ^ p_prefix[26];
  assign sum[28] = p[28] ^ p_prefix[27];
  assign sum[29] = p[29] ^ p_prefix[28];
  assign sum[30] = p[30] ^ p_prefix[29];
  assign sum[31] = p[31] ^ p_prefix[30];
  
  assign cout = cout | (g[1] & g_prefix[0]);
  assign cout = cout | (g[2] & g_prefix[1]);
  assign cout = cout | (g[3] & g_prefix[2]);
  assign cout = cout | (g[4] & g_prefix[3]);
  assign cout = cout | (g[5] & g_prefix[4]);
  assign cout = cout | (g[6] & g_prefix[5]);
  assign cout = cout | (g[7] & g_prefix[6]);
  assign cout = cout | (g[8] & g_prefix[7]);
  assign cout = cout | (g[9] & g_prefix[8]);
  assign cout = cout | (g[10] & g_prefix[9]);
  assign cout = cout | (g[11] & g_prefix[10]);
  assign cout = cout | (g[12] & g_prefix[11]);
  assign cout = cout | (g[13] & g_prefix[12]);
  assign cout = cout | (g[14] & g_prefix[13]);
  assign cout = cout | (g[15] & g_prefix[14]);
  assign cout = cout | (g[16] & g_prefix[15]);
  assign cout = cout | (g[17] & g_prefix[16]);
  assign cout = cout | (g[18] & g_prefix[17]);
  assign cout = cout | (g[19] & g_prefix[18]);
  assign cout = cout | (g[20] & g_prefix[19]);
  assign cout = cout | (g[21] & g_prefix[20]);
  assign cout = cout | (g[22] & g_prefix[21]);
  assign cout = cout | (g[23] & g_prefix[22]);
  assign cout = cout | (g[24] & g_prefix[23]);
  assign cout = cout | (g[25] & g_prefix[24]);
  assign cout = cout | (g[26] & g_prefix[25]);
  assign cout = cout | (g[27] & g_prefix[26]);
  assign cout = cout | (g[28] & g_prefix[27]);
  assign cout = cout | (g[29] & g_prefix[28]);
  assign cout = cout | (g[30] & g_prefix[29]);
  assign cout = cout | (g[31] & g_prefix[30]);
endmodule

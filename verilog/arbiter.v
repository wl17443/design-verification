module arbiter (
  //This is a comment btw
  clock , //clock
  reset , //Active high, syn reset
  req_0 , //Request0
  req_1 , //Request1
  gnt_0 , //Grant0
  gnt_1   //Grant1
  );

// Input Ports
input clock ;
input reset ;
input req_0 ;
input req_1 ;

// Output Ports
output gnt_0 ;
output gnt_1 ;

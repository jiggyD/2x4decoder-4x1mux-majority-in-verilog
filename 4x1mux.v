//Name : Jidnyasa Dhavale
//Programming assignment 1
// mux4x1 


module MuxMod(s1, s0, d0, d1, d2, d3, o);		//input output ports
   input s1,s0, d0, d1, d2, d3;
   output o;

   wire s1_inv,s0_inv, and0, and1,and2,and3;   // additional  wires

   not(s1_inv, s1);                            //using built in gates
   assign and0=d0 & s0_inv & s1_inv;   
   assign and1=d1 & s0 & s1_inv;       
   assign and2=d2 & s0_inv & s1 ;
   assign and3=d3 & s0 & s1;
   assign o=and0 | and1 | and2 | and3 ;
  
endmodule

module TestMod;									// module to test-run
   reg s1, s0, d0, d1, d2, d3;
   wire o;

   MuxMod my_mux(s1, s0, d0, d1, d2, d3, o);



   initial begin
      $display("\tTime\ts1\ts0\td0\td1\td2\td3\to");
      $display("-----------------------------------------------------------------------");
      $monitor("\t%0d\t%b\t%b\t%b\t%b\t%b\t%b\t%b", $time, s1, s0, d0, d1, d2, d3, o);	// use $monitor
   end

   initial begin
   
      s1= 0; s0 = 0; d0 = 0; d1 = 0; d2 = 0; d3 = 0;	// using bit pattern counting
	  #1;
	  s1= 0; s0 = 0; d0 = 0; d1 = 0; d2 = 0; d3 = 1;
	  #1;
	  s1= 0; s0 = 0; d0 = 0; d1 = 0; d2 = 1; d3 = 0;
	  #1;
	  s1= 0; s0 = 0; d0 = 0; d1 = 0; d2 = 1; d3 = 1;
	  #1;
	  s1= 0; s0 = 0; d0 = 0; d1 = 1; d2 = 0; d3 = 0;
	  #1;
	  s1= 0; s0 = 0; d0 = 0; d1 = 1; d2 = 0; d3 = 1;
	  #1;
	  s1= 0; s0 = 0; d0 = 0; d1 = 1; d2 = 1; d3 = 0;
	  #1;
	  s1= 0; s0 = 0; d0 = 0; d1 = 1; d2 = 1; d3 = 1;
	  #1;
	  s1= 0; s0 = 0; d0 = 1; d1 = 0; d2 = 0; d3 = 0;
	  #1;
	  s1= 0; s0 = 0; d0 = 1; d1 = 0; d2 = 0; d3 = 1;
	  #1;
	  s1= 0; s0 = 0; d0 = 1; d1 = 0; d2 = 1; d3 = 0;
	  #1;
	  s1= 0; s0 = 0; d0 = 1; d1 = 0; d2 = 1; d3 = 1;
	  #1;
	  s1= 0; s0 = 0; d0 = 1; d1 = 1; d2 = 0; d3 = 0;
	  #1;
	  s1= 0; s0 = 0; d0 = 1; d1 = 1; d2 = 0; d3 = 1;
	  #1;
	  s1= 0; s0 = 0; d0 = 1; d1 = 1; d2 = 1; d3 = 0;
	  #1;
	  s1= 0; s0 = 0; d0 = 1; d1 = 1; d2 = 1; d3 = 1;
	  #1;


	  s1= 0; s0 = 1; d0 = 0; d1 = 0; d2 = 0; d3 = 0;
	  #1;
	  s1= 0; s0 = 1; d0 = 0; d1 = 0; d2 = 0; d3 = 1;
	  #1;
	  s1= 0; s0 = 1; d0 = 0; d1 = 0; d2 = 1; d3 = 0;
	  #1;
	  s1= 0; s0 = 1; d0 = 0; d1 = 0; d2 = 1; d3 = 1;
	  #1;
	  s1= 0; s0 = 1; d0 = 0; d1 = 1; d2 = 0; d3 = 0;
	  #1;
	  s1= 0; s0 = 1; d0 = 0; d1 = 1; d2 = 0; d3 = 1;
	  #1;
	  s1= 0; s0 = 1; d0 = 0; d1 = 1; d2 = 1; d3 = 0;
	  #1;
	  s1= 0; s0 = 1; d0 = 0; d1 = 1; d2 = 1; d3 = 1;
	  #1;
	  s1= 0; s0 = 1; d0 = 1; d1 = 0; d2 = 0; d3 = 0;
	  #1;
	  s1= 0; s0 = 1; d0 = 1; d1 = 0; d2 = 0; d3 = 1;
	  #1;
	  s1= 0; s0 = 1; d0 = 1; d1 = 0; d2 = 1; d3 = 0;
	  #1;
	  s1= 0; s0 = 1; d0 = 1; d1 = 0; d2 = 1; d3 = 1;
	  #1;
	  s1= 0; s0 = 1; d0 = 1; d1 = 1; d2 = 0; d3 = 0;
	  #1;
	  s1= 0; s0 = 1; d0 = 1; d1 = 1; d2 = 0; d3 = 1;
	  #1;
	  s1= 0; s0 = 1; d0 = 1; d1 = 1; d2 = 1; d3 = 0;
	  #1;
	  s1= 0; s0 = 1; d0 = 1; d1 = 1; d2 = 1; d3 = 1;
	  #1;
	  
	  
	  s1= 1; s0 = 0; d0 = 0; d1 = 0; d2 = 0; d3 = 0;
	  #1;
	  s1= 1; s0 = 0; d0 = 0; d1 = 0; d2 = 0; d3 = 1;
	  #1;
	  s1= 1; s0 = 0; d0 = 0; d1 = 0; d2 = 1; d3 = 0;
	  #1;
	  s1= 1; s0 = 0; d0 = 0; d1 = 0; d2 = 1; d3 = 1;
	  #1;
	  s1= 1; s0 = 0; d0 = 0; d1 = 1; d2 = 0; d3 = 0;
	  #1;
	  s1= 1; s0 = 0; d0 = 0; d1 = 1; d2 = 0; d3 = 1;
	  #1;
	  s1= 1; s0 = 0; d0 = 0; d1 = 1; d2 = 1; d3 = 0;
	  #1;
	  s1= 1; s0 = 0; d0 = 0; d1 = 1; d2 = 1; d3 = 1;
	  #1;
	  s1= 1; s0 = 0; d0 = 1; d1 = 0; d2 = 0; d3 = 0;
	  #1;
	  s1= 1; s0 = 0; d0 = 1; d1 = 0; d2 = 0; d3 = 1;
	  #1;
	  s1= 1; s0 = 0; d0 = 1; d1 = 0; d2 = 1; d3 = 0;
	  #1;
	  s1= 1; s0 = 0; d0 = 1; d1 = 0; d2 = 1; d3 = 1;
	  #1;
	  s1= 1; s0 = 0; d0 = 1; d1 = 1; d2 = 0; d3 = 0;
	  #1;
	  s1= 1; s0 = 0; d0 = 1; d1 = 1; d2 = 0; d3 = 1;
	  #1;
	  s1= 1; s0 = 0; d0 = 1; d1 = 1; d2 = 1; d3 = 0;
	  #1;
	  s1= 1; s0 = 0; d0 = 1; d1 = 1; d2 = 1; d3 = 1;
	  #1;



	  s1= 1; s0 = 1; d0 = 0; d1 = 0; d2 = 0; d3 = 0;
	  #1;
	  s1= 1; s0 = 1; d0 = 0; d1 = 0; d2 = 0; d3 = 1;
	  #1;
	  s1= 1; s0 = 1; d0 = 0; d1 = 0; d2 = 1; d3 = 0;
	  #1;
	  s1= 1; s0 = 1; d0 = 0; d1 = 0; d2 = 1; d3 = 1;
	  #1;
	  s1= 1; s0 = 1; d0 = 0; d1 = 1; d2 = 0; d3 = 0;
	  #1;
	  s1= 1; s0 = 1; d0 = 0; d1 = 1; d2 = 0; d3 = 1;
	  #1;
	  s1= 1; s0 = 1; d0 = 0; d1 = 1; d2 = 1; d3 = 0;
	  #1;
	  s1= 1; s0 = 1; d0 = 0; d1 = 1; d2 = 1; d3 = 1;
	  #1;
	  s1= 1; s0 = 1; d0 = 1; d1 = 0; d2 = 0; d3 = 0;
	  #1;
	  s1= 1; s0 = 1; d0 = 1; d1 = 0; d2 = 0; d3 = 1;
	  #1;
	  s1= 1; s0 = 1; d0 = 1; d1 = 0; d2 = 1; d3 = 0;
	  #1;
	  s1= 1; s0 = 1; d0 = 1; d1 = 0; d2 = 1; d3 = 1;
	  #1;
	  s1= 1; s0 = 1; d0 = 1; d1 = 1; d2 = 0; d3 = 0;
	  #1;
	  s1= 1; s0 = 1; d0 = 1; d1 = 1; d2 = 0; d3 = 1;
	  #1;
	  s1= 1; s0 = 1; d0 = 1; d1 = 1; d2 = 1; d3 = 0;
	  #1;
	  s1= 1; s0 = 1; d0 = 1; d1 = 1; d2 = 1; d3 = 1;
	  #1;
    
   end
endmodule

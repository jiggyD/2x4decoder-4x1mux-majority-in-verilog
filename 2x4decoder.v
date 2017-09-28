//Name : Jidnyasa Dhavale
//Programming assignment 1
// 2x4 decoder  

module DecoderMod( s1, s0, o0, o1, o2, o3);  // module definition
 
   input s1, s0;
   output o0, o1, o2, o3;
   wire s1_inv, s0_inv; 	
   
   not(s1_inv, s1);			// using bit pattern counting
   not(s0_inv, s0); 
     
   and(o0, s1_inv, s0_inv);
   and(o1, s1_inv, s0);
   and(o2, s1, s0_inv);
   and(o3, s1, s0);
   
    
endmodule

module TestMod;   			// module to test-run
   reg s1, s0;         
   wire o0, o1, o2, o3;   // additional wires

   DecoderMod my_decoder( s1, s0, o0, o1, o2, o3); // create instance

   initial begin
     
      $display("Time\ts1\ts0\to0\to1\to2\to3");
      $display("------------------------------------------------------------");
      $monitor("%0d\t%b\t%b\t%b\t%b\t%b\t%b", $time,  s1, s0, o0, o1, o2, o3);     
	 
     end

   initial begin   // infinite loop
      s1 = 0; 
      s0 = 0;  
       #1;         // wait 1 simulation time unit/cycle
      s1 = 0;      
      s0 = 1;  
      #1;
      s1 = 1;  
      s0 = 0;      
      #1;         
      s1 = 1; 
      s0 = 1;      
      #1;
   end
endmodule


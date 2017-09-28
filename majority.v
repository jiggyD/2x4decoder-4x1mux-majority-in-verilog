//Name : Jidnyasa Dhavale
//Programming assignment 1
// majority  


module Majority(a,b,c,f);		//input output ports
input a,b,c;
output f;
wire inva, invb, o1, o2, o3;	//additional wires

not(inva,a);					//using built in gates
not(invb,b);

and(o1, inva, b, c);
and(o2, a, invb, c);
and(o3, a, b);

or(f,o1, o2, o3);
endmodule

module majority_test;				// module to test-run
reg a,b,c;
wire f;
		
	Majority my_majority(a,b,c,f);
		
initial begin
      $display("Time\tA\tB\tC\tF");
      $display("---------------------------------");
      $monitor("%0d\t%b\t%b\t%b\t%b", $time, a, b, c, f);	// use $monitor
   end
   
initial begin

a = 0; b = 0; c = 0;	// using bit pattern counting
#1;
a = 0; b = 0; c = 1;
#1;
a = 0; b = 1; c = 0;
#1;
a = 0; b = 1; c = 1;
#1;
a = 1; b = 0; c = 0;
#1;
a = 1; b = 0; c = 1;
#1;
a = 1; b = 1; c = 0;
#1;
a = 1; b = 1; c = 1;
#1;

end
endmodule
   

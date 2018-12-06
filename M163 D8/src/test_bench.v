
//Design:           SystolicMUL_163_8_digits
//
//File:             test_bench.v
//
//Use:              test bench for SystolicMUL
//
//Author:           Cheng Ruijiao
//
//Version           Date                Note
//  1.0             2014/12/20          Original created
//
//----------------------------------------------------------
`timescale 1ns/1ns  
    module test_bench;
  
    // Inputs
    reg [7:0] a_in,b_in,g_in;
    reg clk;
    reg rstn;
    reg ctr;
  
    // Outputs
    wire [7:0] p_out;
    wire ctro;
  
    reg [167 : 0]   a,P;
    reg [167 : 0]   b;           
    reg [167 : 0]   g,tmp_g; 
    integer i,j,cnt; 
    integer  fid;                 
    // Instantiate the Unit Under Test
    top mul_163(
        .clk(clk),
        .ctr(ctr),
        .rstn(rstn),
        .a_in(a_in),
        .g_in(g_in),
        .b_in(b_in),
        .po(p_out),
        .ctro(ctro));
        
        
        initial
begin
  fid = $fopen(".\result.log");
end
  
    initial 
      begin
      // Initialize Inputs
      a_in = 0;
      a=0;
      b=0;
      b_in = 0;
      g_in = 0;
      clk = 0;
      rstn = 0;
      ctr = 0;
  
           
  
 
   

  
      // Wait 40 ns for global reset to finish
      #40;//1
          
      // Add stimulus here
      rstn =1'b1;		
 
    for(j=0;j<=1000;j=j+1)
    begin
      g[167:0]=168'h1920;
      tmp_g = g;
      for(i=1;i<=23;i=i+1)
        begin
         #10 
          if(i==1)begin
           ctr = 1'b0;
           b_in={$random } % 256;
           b[7:0] = b_in;
           b = b << 8;
           g_in=8'b0;	
           a_in =8'b0;	
           g = g << 8;
                  end
          else if(i > 1 & i <21) begin
           ctr = 1'b1;
           b_in = {$random } % 256;
           g_in = g[167:160];
           a_in = {$random } % 256;
           b[7:0] = b_in;
           b = b << 8;
           a[7:0] = a_in;
           a = a << 8;
           g = g << 8;
                                 end
         else if(i==21)begin
           b_in = {$random } % 256;
           g_in = g[167:160];
           a_in = {$random } % 256;
           b[7:0] = b_in;
           a[7:0] = a_in;
           a = a << 8;
           g = g << 8;
                        end
         else if(i==22)begin
           b_in = 8'b0;
           g_in = g[167:160];
           a_in = {$random } % 256;
           a[7:0] = a_in;
           
           g = g << 8;
                        end
        else if(i==23)begin
           b_in = 8'b0;
           g_in = 8'b0;
           a_in = 8'b0;
          
                      end
    end
#500;
end
  $fclose(fid);    
      end
    
    always #5 clk = ~clk;
    
    
    always @ ( posedge clk or negedge rstn)
begin
	if(!rstn | ! ctro)
	  begin
		cnt = 0;
		P=0;
		end
	else
	begin
	
		cnt = cnt + 1'b1;	
		if( cnt == 22) begin
		$fdisplay(fid," A = %h, B = %h, G = %h,P = %h",a,b,tmp_g,P);
		               end		
		if( cnt >=0 & cnt <21) begin
			P[7:0] = p_out;
			P = P << 8;			
		                        end	
			if( cnt == 21) begin
			P[7:0] = p_out;
					
		                 end	                        
	end	
	
end
  
  endmodule





  
  
  
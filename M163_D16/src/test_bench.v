//Author:           Cheng Ruijiao
//
//Version           Date                Note
//  1.0             2014/12/21          Original created   
`timescale 1ns/1ns  
    module test_bench;
  
    // Inputs
    reg [15:0] a_in,b_in,g_in;
    reg clk;
    reg rstn;
    reg ctr;
  
    // Outputs
    wire [15:0] p_out;
    wire ctro;
  
    reg [175 : 0]   a,P;
    reg [175 : 0]   b;           
    reg [175 : 0]   g,tmp_g; 
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
      g[175:0]=168'h1920;
      tmp_g = 168'h1920;
  
           
  
 
   

  
      // Wait 40 ns for global reset to finish
      #40;//1
          
      // Add stimulus here
      rstn =1'b1;		
 
    for(j=0;j<=1000;j=j+1)
    begin
    g[167:0]=168'h1920;
      tmp_g = 168'h1920;
      for(i=1;i<=13;i=i+1)
        begin
         #10 
          if(i==1)begin
           ctr = 1'b0;
           b_in={$random } % 65536;
           b[15:0] = b_in;
           b = b << 16;
           g_in=16'b0;	
           a_in =16'b0;	
           g = g << 16;
                  end
          else if(i > 1 & i <21) begin
           ctr = 1'b1;
           b_in = {$random } % 65536;
           g_in = g[175:161];
           a_in = {$random } % 65536;
           b[15:0] = b_in;
           b = b << 16;
           a[15:0] = a_in;
           a = a << 16;
           g = g << 16;
                                 end
         else if(i==11)begin
           b_in = {$random } % 65536;
           g_in = g[176:161];
           a_in = {$random } % 65536;
           b[15:0] = b_in;
           a[15:0] = a_in;
           a = a << 16;
           g = g << 16;
                        end
         else if(i==12)begin
           b_in = 16'b0;
           g_in = g[176:161];
           a_in = {$random } % 65536;
           a[15:0] = a_in;
           
           g = g << 16;
                        end
        else if(i==13)begin
           b_in = 16'b0;
           g_in = 16'b0;
           a_in = 16'b0;
          
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
		if( cnt == 12) begin
		$fdisplay(fid," A = %h, B = %h, G = %h,P = %h",a,b,tmp_g,P);
		               end		
		if( cnt >=0 & cnt <11) begin
			P[15:0] = p_out;
			P = P << 16;			
		                        end	
			if( cnt ==11) begin
			P[15:0] = p_out;
					
		                        end		                        
	end	
	
end
  
  endmodule

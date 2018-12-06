//Author:           Cheng Ruijiao
//
//Version           Date                Note
//  1.0             2014/12/21          Original created
`timescale 1ns/1ns  
    module test_bench;
  
    // Inputs
    reg [31:0] a_in,b_in,g_in;
    reg clk;
    reg rstn;
    reg ctr;
  
    // Outputs
    wire [31:0] p_out;
    wire ctro;
  
    reg [191 : 0]   a,P;
    reg [191 : 0]   b;           
    reg [191 : 0]   g,tmp_g; 
    integer i,j,cnt,k; 
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
  fid = $fopen("result.txt");
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
      k=0;
  
           
  
 
   

  
      // Wait 40 ns for global reset to finish
      #40;//1
          
      // Add stimulus here
      rstn =1'b1;		
 
    for(j=0;j<10000;j=j+1)
    begin
      g[191:0]=192'h1920;
      tmp_g = g;
      for(i=1;i<=8;i=i+1)
        begin
         #10 
          if(i==1)begin
           ctr = 1'b0;
           b_in={$random } % 32'hFF;
           b[31:0] = b_in;
           b = b << 32;
           g_in=32'b0;	
           a_in =32'b0;	
           g = g << 32;
                  end
          else if(i > 1 & i <6) begin
           ctr = 1'b1;
           b_in = {$random } % 32'hFF;
           g_in = g[191:160];
           a_in = {$random } % 32'hFF;
           b[31:0] = b_in;
           b = b << 32;
           a[31:0] = a_in;
           a = a << 32;
           g = g << 32;
                                 end
         else if(i==6)begin
           b_in = {$random } % 32'hFF;
           g_in = g[191:160];
           a_in = {$random } % 32'hFF;
           b[31:0] = b_in;
           a[31:0] = a_in;
           a = a << 32;
           g = g << 32;
                        end
         else if(i==7)begin
           b_in = 32'b0;
           g_in = g[191:160];
           a_in = {$random } % 32'hFF;
           a[7:0] = a_in;
           
           g = g << 8;
                        end
        else if(i==8)begin
           b_in = 32'b0;
           g_in = 32'b0;
           a_in = 32'b0;
          
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
		if( cnt == 7) begin
		  k=k+1;
		$fdisplay(fid,"num %d\nA =\n%b\nB =\n%b\nP =\n%b",k,a[167:5],b[167:5],P[167:5]);
		               end		
		if( cnt >=0 & cnt <6) begin
			P[31:0] = p_out;
			P = P << 32;			
		                        end	
		if( cnt == 6) begin
			P[31:0] = p_out;
					
		                        end
	end	
	
end
  
  endmodule





  
  
  
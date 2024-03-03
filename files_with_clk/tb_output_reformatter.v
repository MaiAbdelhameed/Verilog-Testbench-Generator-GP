
`timescale 1ns/1ns

module tb_output_reformatter();
	reg clk;
	reg [383:0]rgb_input;
	reg rgb_valid;
	wire [127:0]yuv_data;
	wire is_yuv_valid;
	reg line_valid;
	reg frame_sync;
	reg out_clock;
	wire [31:0]data_out;

rgb_to_yuv rgb_to_yuv1(.clk_i(clk),
					   .rgb_i(rgb_input),
					   .rgb_valid_i(rgb_valid),
					   .yuv_o(yuv_data),
					   .yuv_valid_o(is_yuv_valid));
					   
output_reformatter out_reformat1(
								 .clk_i(clk),
								 .line_sync_i(line_valid),
								 .output_clk_i(out_clock),
								 .data_i(yuv_data),
								 .data_in_valid_i(is_yuv_valid),
								 .output_o(data_out),
								 .output_valid_o(lsync_out),
								 .frame_sync_i(frame_sync));
								 
					   


task sendclock;
	begin
	clk = 1'b0;
	#10;
	clk = 1'b1;
	#10;
	clk = 1'b0;
	#10;
	clk = 1'b1;
	#10;
	end
endtask

task sendrgb;
	input [383:0]rgb;
	begin
	rgb_input = rgb;
	clk = 1'b0;
	out_clock = 1'b0;
	#10
	out_clock = 1'b1;
	#10
	$fwrite(write_fd, "%u", {data_out[7:0], data_out[15:8], data_out[23:16], data_out[31:24]});
	$display("%h", data_out);
	out_clock = 1'b0;
	#10
	out_clock = 1'b1;
	#10
	$fwrite(write_fd, "%u", {data_out[7:0], data_out[15:8], data_out[23:16], data_out[31:24]});
	$display("%h", data_out);	
	out_clock = 1'b0;
	#10
	out_clock = 1'b1;
	#10
	$fwrite(write_fd, "%u", {data_out[7:0], data_out[15:8], data_out[23:16], data_out[31:24]});
	$display("%h", data_out);	
	out_clock = 1'b0;
	clk = 1'b1;
	#10
	out_clock = 1'b1;
	#10;
	$fwrite(write_fd, "%u", {data_out[7:0], data_out[15:8], data_out[23:16], data_out[31:24]});
	$display("%h", data_out);		
	end
endtask



integer i;
integer j;
integer read_fd;
integer write_fd;		 
integer write_yuv_fd;
reg[383:0] read_bytes;
reg[383:0] send_read_bytes;
initial begin
	clk = 0;
	out_clock = 0;
	rgb_valid = 0;
	read_fd = $fopen("C:\\Users\\gaurav\\Documents\\FPGA\\Lattice\\MIPI_CSI_Parallel_16_nx\\csi_16_nx\\source\\csi_16_nx\\image_file_240_rgb48be.rgb","rb");
	write_fd = $fopen("C:\\Users\\gaurav\\Documents\\FPGA\\Lattice\\MIPI_CSI_Parallel_16_nx\\csi_16_nx\\source\\csi_16_nx\\image_file_240_reformat.yuv","wb");
	write_yuv_fd = $fopen("C:\\Users\\gaurav\\Documents\\FPGA\\Lattice\\MIPI_CSI_Parallel_16_nx\\csi_16_nx\\source\\csi_16_nx\\image_file_240_yuv.yuv","wb");
	
	$display("read_fd=%d",read_fd);
 	$display("write_fd=%d",write_fd);
	
	rgb_input = 0;
	frame_sync = 1; //active low
	sendclock();
	
	frame_sync = 0; //active low
		
    for (i = 0; i <240; i = i + 1)		
	begin		 
	rgb_valid = 1;
	line_valid = 1;
		for (j=0; j <30; j = j + 1)
		begin
		$fread(read_bytes, read_fd);
		send_read_bytes ={read_bytes[383:336], read_bytes[335:288], read_bytes[287:240], read_bytes[239:192], read_bytes[191:144], read_bytes[143:96], read_bytes[95:48], read_bytes[47:0]};
		sendrgb(send_read_bytes);
		
		$fwrite(write_yuv_fd, "%u", { {   yuv_data[7:0],     yuv_data[15:8]},   {yuv_data[23:16],    yuv_data[31:24]}, 
									  { yuv_data[39:32],    yuv_data[47:40]},   {yuv_data[55:48],	 yuv_data[63:56]}, 
									  { yuv_data[71:64],    yuv_data[79:72]},   {yuv_data[87:80], 	 yuv_data[95:88]}, 
									  {yuv_data[103:96],  yuv_data[111:104]}, {yuv_data[119:112],  yuv_data[127:120]}});
		end	  
		rgb_valid = 0;	  
		line_valid = 0;
		sendclock();
		sendclock();
		sendclock();
		sendclock();
	end
	/*
	  rgb_valid = 1;
	while (!$feof(read_fd)) begin 
		
		$fread(read_bytes, read_fd);

		send_read_bytes ={read_bytes[383:336], read_bytes[335:288], read_bytes[287:240], read_bytes[239:192], read_bytes[191:144], read_bytes[143:96], read_bytes[95:48], read_bytes[47:0]};
		sendrgb(send_read_bytes);		
		
		$fwrite(write_fd, "%u", { {yuv_data[7:0], yuv_data[15:8]} , {yuv_data[23:16], yuv_data[31:24]}, 
		{yuv_data[39:32], yuv_data[47:40]}, { yuv_data[55:48] ,yuv_data[63:56]}, 
		{yuv_data[71:64], yuv_data[79:72]}, {yuv_data[87:80], yuv_data[95:88]}, 
		{yuv_data[103:96], yuv_data[111:104]}, {yuv_data[119:112], yuv_data[127:120]} } );
		 #10;
		//$fwrite(write_fd, "%u", {{yuv_data[119:112], yuv_data[127:120]}, {yuv_data[103:96], yuv_data[111:104]},{yuv_data[87:80], yuv_data[95:88]},{yuv_data[71:64], yuv_data[79:72]},{ yuv_data[55:48] ,yuv_data[63:56]}, 			{yuv_data[39:32], yuv_data[47:40]},			  {yuv_data[23:16], yuv_data[31:24]},{yuv_data[7:0], yuv_data[15:8]}} );
	end
	*/
	frame_sync = 1; //active low
	sendclock();
	sendclock();
	sendclock();
	sendclock();
	rgb_valid = 0;
	$fclose(read_fd);
	$fclose(write_fd);	 
	$fclose(write_yuv_fd);
end


					   
endmodule
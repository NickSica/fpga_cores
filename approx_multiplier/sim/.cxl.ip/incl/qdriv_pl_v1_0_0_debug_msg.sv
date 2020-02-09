// Status[15:0] 
always@(status[0]) begin
   if(status[0] == 1'b1)
      $display("RTL_INFO:: %t BISC PASSED",$time);
end

always@(status[1]) begin
   if(status[1] == 1'b1)
      $display("RTL_INFO:: %t Power up PASSED",$time);
end

always@(status[2]) begin
   if(status[2] == 1'b1)
      $display("RTL_INFO:: %t ADDR Calibration PASSED",$time);
end

always@(status[3]) begin
   if(status[3] == 1'b1)
      $display("RTL_INFO:: %t CK to DK calibration PASSED",$time);
end

always@(status[4]) begin
   if(status[4] == 1'b1)
      $display("RTL_INFO:: %t Read Data Calibration PASSED",$time);
end

always@(status[5]) begin
   if(status[5] == 1'b1)
      $display("RTL_INFO:: %t Write Data Calibration PASSED",$time);
end

always@(status[6]) begin
   if(status[6] == 1'b1)
      $display("RTL_INFO:: %t Write Bit Slip calibration PASSED",$time);
end

always@(status[7]) begin
   if(status[7] == 1'b1)
      $display("RTL_INFO:: %t Read Bit Slip calibration PASSED",$time);
end

always@(status[8]) begin
   if(status[8] == 1'b1)
      $display("RTL_INFO:: %t Read Valid Calculation PASSED",$time);
end

always@(status[9]) begin
   if(status[9] == 1'b1)
      $display("RTL_INFO:: %t Address Centering Correction PASSED",$time);
end

always@(status[10]) begin
   if(status[10] == 1'b1)
      $display("RTL_INFO:: %t Read Data Centering Correction PASSED",$time);
end

always@(status[11]) begin
   if(status[11] == 1'b1)
      $display("RTL_INFO:: %t Write Data Centering Correction PASSED",$time);
end

always@(status[12]) begin
   if(status[12] == 1'b1)
      $display("RTL_INFO:: %t Calibration Sanity Check PASSED",$time);
end

always@(status[13]) begin
   if(status[13] == 1'b1)
      $display("RTL_INFO:: %t Addres Margin Check PASSED",$time);
end

always@(status[14]) begin
   if(status[14] == 1'b1)
      $display("RTL_INFO:: %t Write Data Margin Check PASSED",$time);
end

always@(status[15]) begin
   if(status[15] == 1'b1)
      $display("RTL_INFO:: %t Read Data Margin Check PASSED",$time);
end


//Status[31:16]
always@(status[16]) begin
   if(status[16] == 1'b1) begin
      $display("RTL_INFO:: %t BISC FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end

always@(status[17]) begin
   if(status[17] == 1'b1) begin
      $display("RTL_INFO:: %t Power up FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end

always@(status[18]) begin
   if(status[18] == 1'b1) begin
      $display("RTL_INFO:: %t ADDR Calibration FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end

always@(status[19]) begin
   if(status[19] == 1'b1) begin
      $display("RTL_INFO:: %t CK to DK calibration FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end

always@(status[20]) begin
   if(status[20] == 1'b1) begin
      $display("RTL_INFO:: %t Read Data Calibration FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end

always@(status[21]) begin
   if(status[21] == 1'b1) begin
      $display("RTL_INFO:: %t Write Data Calibration FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end

always@(status[22]) begin
   if(status[22] == 1'b1) begin
      $display("RTL_INFO:: %t Write Bit Slip calibration FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end

always@(status[23]) begin
   if(status[23] == 1'b1) begin
      $display("RTL_INFO:: %t Read Bit Slip calibration FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end

always@(status[24]) begin
   if(status[24] == 1'b1) begin
      $display("RTL_INFO:: %t Read Valid Calculation FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end

always@(status[25]) begin
   if(status[25] == 1'b1) begin
      $display("RTL_INFO:: %t Address Centering Correction FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end

always@(status[26]) begin
   if(status[26] == 1'b1) begin
      $display("RTL_INFO:: %t Read Data Centering Correction FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end

always@(status[27]) begin
   if(status[27] == 1'b1) begin
      $display("RTL_INFO:: %t Write Data Centering Correction FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end

always@(status[28]) begin
   if(status[28] == 1'b1) begin
      $display("RTL_INFO:: %t Calibration Sanity Check FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end

always@(status[29]) begin
   if(status[29] == 1'b1) begin
      $display("RTL_INFO:: %t Addres Margin Check FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end

always@(status[30]) begin
   if(status[30] == 1'b1) begin
      $display("RTL_INFO:: %t Write Data Margin Check FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end

always@(status[31]) begin
   if(status[31] == 1'b1) begin
      $display("RTL_INFO:: %t Read Data Margin Check FAILED",$time);
      $display("RTL_INFO:: CALIBRATION FAILED :: %h",status[31:16]);
      $display("RTL_INFO:: Current time is %0dns",$time/1000);
      $finish();
   end
end


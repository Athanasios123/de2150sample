//Legal Notice: (C)2009 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_ic_data_module (
                            // inputs:
                             clock,
                             data,
                             rdaddress,
                             rden,
                             wraddress,
                             wren,

                            // outputs:
                             q
                          )
;

  parameter lpm_file = "UNUSED";


  output  [ 31: 0] q;
  input            clock;
  input   [ 31: 0] data;
  input   [  9: 0] rdaddress;
  input            rden;
  input   [  9: 0] wraddress;
  input            wren;

  wire    [ 31: 0] q;
  wire    [ 31: 0] ram_q;
  assign q = ram_q;
  altsyncram the_altsyncram
    (
      .address_a (wraddress),
      .address_b (rdaddress),
      .clock0 (clock),
      .data_a (data),
      .q_b (ram_q),
      .rden_b (rden),
      .wren_a (wren)
    );

  defparam the_altsyncram.address_reg_b = "CLOCK0",
           the_altsyncram.maximum_depth = 0,
           the_altsyncram.numwords_a = 1024,
           the_altsyncram.numwords_b = 1024,
           the_altsyncram.operation_mode = "DUAL_PORT",
           the_altsyncram.outdata_reg_b = "UNREGISTERED",
           the_altsyncram.ram_block_type = "AUTO",
           the_altsyncram.rdcontrol_reg_b = "CLOCK0",
           the_altsyncram.read_during_write_mode_mixed_ports = "DONT_CARE",
           the_altsyncram.width_a = 32,
           the_altsyncram.width_b = 32,
           the_altsyncram.widthad_a = 10,
           the_altsyncram.widthad_b = 10;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_ic_tag_module (
                           // inputs:
                            clock,
                            data,
                            rdaddress,
                            rden,
                            wraddress,
                            wren,

                           // outputs:
                            q
                         )
;

  parameter lpm_file = "UNUSED";


  output  [ 11: 0] q;
  input            clock;
  input   [ 11: 0] data;
  input   [  6: 0] rdaddress;
  input            rden;
  input   [  6: 0] wraddress;
  input            wren;

  wire    [ 11: 0] q;
  wire    [ 11: 0] ram_q;
  assign q = ram_q;
  altsyncram the_altsyncram
    (
      .address_a (wraddress),
      .address_b (rdaddress),
      .clock0 (clock),
      .data_a (data),
      .q_b (ram_q),
      .rden_b (rden),
      .wren_a (wren)
    );

  defparam the_altsyncram.address_reg_b = "CLOCK0",
           the_altsyncram.init_file = lpm_file,
           the_altsyncram.maximum_depth = 0,
           the_altsyncram.numwords_a = 128,
           the_altsyncram.numwords_b = 128,
           the_altsyncram.operation_mode = "DUAL_PORT",
           the_altsyncram.outdata_reg_b = "UNREGISTERED",
           the_altsyncram.ram_block_type = "AUTO",
           the_altsyncram.rdcontrol_reg_b = "CLOCK0",
           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
           the_altsyncram.width_a = 12,
           the_altsyncram.width_b = 12,
           the_altsyncram.widthad_a = 7,
           the_altsyncram.widthad_b = 7;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_bht_module (
                        // inputs:
                         clock,
                         data,
                         rdaddress,
                         rden,
                         wraddress,
                         wren,

                        // outputs:
                         q
                      )
;

  parameter lpm_file = "UNUSED";


  output  [  1: 0] q;
  input            clock;
  input   [  1: 0] data;
  input   [  7: 0] rdaddress;
  input            rden;
  input   [  7: 0] wraddress;
  input            wren;

  wire    [  1: 0] q;
  wire    [  1: 0] ram_q;
  assign q = ram_q;
  altsyncram the_altsyncram
    (
      .address_a (wraddress),
      .address_b (rdaddress),
      .clock0 (clock),
      .data_a (data),
      .q_b (ram_q),
      .rden_b (rden),
      .wren_a (wren)
    );

  defparam the_altsyncram.address_reg_b = "CLOCK0",
           the_altsyncram.init_file = lpm_file,
           the_altsyncram.maximum_depth = 0,
           the_altsyncram.numwords_a = 256,
           the_altsyncram.numwords_b = 256,
           the_altsyncram.operation_mode = "DUAL_PORT",
           the_altsyncram.outdata_reg_b = "UNREGISTERED",
           the_altsyncram.ram_block_type = "AUTO",
           the_altsyncram.rdcontrol_reg_b = "CLOCK0",
           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
           the_altsyncram.width_a = 2,
           the_altsyncram.width_b = 2,
           the_altsyncram.widthad_a = 8,
           the_altsyncram.widthad_b = 8;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_register_bank_a_module (
                                    // inputs:
                                     clock,
                                     data,
                                     rdaddress,
                                     wraddress,
                                     wren,

                                    // outputs:
                                     q
                                  )
;

  parameter lpm_file = "UNUSED";


  output  [ 31: 0] q;
  input            clock;
  input   [ 31: 0] data;
  input   [  4: 0] rdaddress;
  input   [  4: 0] wraddress;
  input            wren;

  wire    [ 31: 0] q;
  wire    [ 31: 0] ram_q;
  assign q = ram_q;
  altsyncram the_altsyncram
    (
      .address_a (wraddress),
      .address_b (rdaddress),
      .clock0 (clock),
      .data_a (data),
      .q_b (ram_q),
      .wren_a (wren)
    );

  defparam the_altsyncram.address_reg_b = "CLOCK0",
           the_altsyncram.init_file = lpm_file,
           the_altsyncram.maximum_depth = 0,
           the_altsyncram.numwords_a = 32,
           the_altsyncram.numwords_b = 32,
           the_altsyncram.operation_mode = "DUAL_PORT",
           the_altsyncram.outdata_reg_b = "UNREGISTERED",
           the_altsyncram.ram_block_type = "AUTO",
           the_altsyncram.rdcontrol_reg_b = "CLOCK0",
           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
           the_altsyncram.width_a = 32,
           the_altsyncram.width_b = 32,
           the_altsyncram.widthad_a = 5,
           the_altsyncram.widthad_b = 5;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_register_bank_b_module (
                                    // inputs:
                                     clock,
                                     data,
                                     rdaddress,
                                     wraddress,
                                     wren,

                                    // outputs:
                                     q
                                  )
;

  parameter lpm_file = "UNUSED";


  output  [ 31: 0] q;
  input            clock;
  input   [ 31: 0] data;
  input   [  4: 0] rdaddress;
  input   [  4: 0] wraddress;
  input            wren;

  wire    [ 31: 0] q;
  wire    [ 31: 0] ram_q;
  assign q = ram_q;
  altsyncram the_altsyncram
    (
      .address_a (wraddress),
      .address_b (rdaddress),
      .clock0 (clock),
      .data_a (data),
      .q_b (ram_q),
      .wren_a (wren)
    );

  defparam the_altsyncram.address_reg_b = "CLOCK0",
           the_altsyncram.init_file = lpm_file,
           the_altsyncram.maximum_depth = 0,
           the_altsyncram.numwords_a = 32,
           the_altsyncram.numwords_b = 32,
           the_altsyncram.operation_mode = "DUAL_PORT",
           the_altsyncram.outdata_reg_b = "UNREGISTERED",
           the_altsyncram.ram_block_type = "AUTO",
           the_altsyncram.rdcontrol_reg_b = "CLOCK0",
           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
           the_altsyncram.width_a = 32,
           the_altsyncram.width_b = 32,
           the_altsyncram.widthad_a = 5,
           the_altsyncram.widthad_b = 5;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_dc_tag_module (
                           // inputs:
                            address_a,
                            address_b,
                            clock0,
                            clock1,
                            clocken0,
                            clocken1,
                            data_b,
                            wren_b,

                           // outputs:
                            q_a,
                            q_b
                         )
;

  parameter lpm_file = "UNUSED";


  output  [  5: 0] q_a;
  output  [  5: 0] q_b;
  input   [  9: 0] address_a;
  input   [  9: 0] address_b;
  input            clock0;
  input            clock1;
  input            clocken0;
  input            clocken1;
  input   [  5: 0] data_b;
  input            wren_b;

  wire    [  5: 0] data_a;
  wire    [  5: 0] q_a;
  wire    [  5: 0] q_b;
  wire             wren_a;
  assign wren_a = 1'b0;
  assign data_a = 6'b0;
  altsyncram the_altsyncram
    (
      .address_a (address_a),
      .address_b (address_b),
      .clock0 (clock0),
      .clock1 (clock1),
      .clocken0 (clocken0),
      .clocken1 (clocken1),
      .data_a (data_a),
      .data_b (data_b),
      .q_a (q_a),
      .q_b (q_b),
      .wren_a (wren_a),
      .wren_b (wren_b)
    );

  defparam the_altsyncram.address_aclr_a = "NONE",
           the_altsyncram.address_aclr_b = "NONE",
           the_altsyncram.address_reg_b = "CLOCK1",
           the_altsyncram.indata_aclr_a = "NONE",
           the_altsyncram.indata_aclr_b = "NONE",
           the_altsyncram.init_file = lpm_file,
           the_altsyncram.intended_device_family = "Stratix",
           the_altsyncram.lpm_type = "altsyncram",
           the_altsyncram.numwords_a = 1024,
           the_altsyncram.numwords_b = 1024,
           the_altsyncram.operation_mode = "BIDIR_DUAL_PORT",
           the_altsyncram.outdata_aclr_a = "NONE",
           the_altsyncram.outdata_aclr_b = "NONE",
           the_altsyncram.outdata_reg_a = "UNREGISTERED",
           the_altsyncram.outdata_reg_b = "UNREGISTERED",
           the_altsyncram.ram_block_type = "AUTO",
           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
           the_altsyncram.width_a = 6,
           the_altsyncram.width_b = 6,
           the_altsyncram.widthad_a = 10,
           the_altsyncram.widthad_b = 10,
           the_altsyncram.wrcontrol_aclr_a = "NONE",
           the_altsyncram.wrcontrol_aclr_b = "NONE";


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_dc_data_module (
                            // inputs:
                             address_a,
                             address_b,
                             byteena_b,
                             clock0,
                             clock1,
                             clocken0,
                             clocken1,
                             data_b,
                             wren_b,

                            // outputs:
                             q_a,
                             q_b
                          )
;

  parameter lpm_file = "UNUSED";


  output  [ 31: 0] q_a;
  output  [ 31: 0] q_b;
  input   [  9: 0] address_a;
  input   [  9: 0] address_b;
  input   [  3: 0] byteena_b;
  input            clock0;
  input            clock1;
  input            clocken0;
  input            clocken1;
  input   [ 31: 0] data_b;
  input            wren_b;

  wire    [ 31: 0] data_a;
  wire    [ 31: 0] q_a;
  wire    [ 31: 0] q_b;
  wire             wren_a;
  assign wren_a = 1'b0;
  assign data_a = 32'b0;
  altsyncram the_altsyncram
    (
      .address_a (address_a),
      .address_b (address_b),
      .byteena_b (byteena_b),
      .clock0 (clock0),
      .clock1 (clock1),
      .clocken0 (clocken0),
      .clocken1 (clocken1),
      .data_a (data_a),
      .data_b (data_b),
      .q_a (q_a),
      .q_b (q_b),
      .wren_a (wren_a),
      .wren_b (wren_b)
    );

  defparam the_altsyncram.address_aclr_a = "NONE",
           the_altsyncram.address_aclr_b = "NONE",
           the_altsyncram.address_reg_b = "CLOCK1",
           the_altsyncram.indata_aclr_a = "NONE",
           the_altsyncram.indata_aclr_b = "NONE",
           the_altsyncram.init_file = lpm_file,
           the_altsyncram.intended_device_family = "Stratix",
           the_altsyncram.lpm_type = "altsyncram",
           the_altsyncram.numwords_a = 1024,
           the_altsyncram.numwords_b = 1024,
           the_altsyncram.operation_mode = "BIDIR_DUAL_PORT",
           the_altsyncram.outdata_aclr_a = "NONE",
           the_altsyncram.outdata_aclr_b = "NONE",
           the_altsyncram.outdata_reg_a = "UNREGISTERED",
           the_altsyncram.outdata_reg_b = "UNREGISTERED",
           the_altsyncram.ram_block_type = "AUTO",
           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
           the_altsyncram.width_a = 32,
           the_altsyncram.width_b = 32,
           the_altsyncram.width_byteena_b = 4,
           the_altsyncram.widthad_a = 10,
           the_altsyncram.widthad_b = 10,
           the_altsyncram.wrcontrol_aclr_a = "NONE",
           the_altsyncram.wrcontrol_aclr_b = "NONE";


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_debug (
                             // inputs:
                              clk,
                              dbrk_break,
                              debugreq,
                              hbreak_enabled,
                              jdo,
                              jrst_n,
                              ocireg_ers,
                              ocireg_mrs,
                              reset,
                              st_ready_test_idle,
                              take_action_ocimem_a,
                              take_action_ocireg,
                              xbrk_break,

                             // outputs:
                              debugack,
                              monitor_error,
                              monitor_go,
                              monitor_ready,
                              oci_hbreak_req,
                              resetlatch,
                              resetrequest
                           )
;

  output           debugack;
  output           monitor_error;
  output           monitor_go;
  output           monitor_ready;
  output           oci_hbreak_req;
  output           resetlatch;
  output           resetrequest;
  input            clk;
  input            dbrk_break;
  input            debugreq;
  input            hbreak_enabled;
  input   [ 37: 0] jdo;
  input            jrst_n;
  input            ocireg_ers;
  input            ocireg_mrs;
  input            reset;
  input            st_ready_test_idle;
  input            take_action_ocimem_a;
  input            take_action_ocireg;
  input            xbrk_break;

  wire             debugack;
  reg              jtag_break /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg              monitor_error /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  reg              monitor_go /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  reg              monitor_ready /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  wire             oci_hbreak_req;
  reg              probepresent /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg              resetlatch /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg              resetrequest /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          probepresent <= 1'b0;
          resetrequest <= 1'b0;
          jtag_break <= 1'b0;
        end
      else if (take_action_ocimem_a)
        begin
          resetrequest <= jdo[22];
          jtag_break <= jdo[21]     ? 1 
                    : jdo[20]  ? 0 
                    : jtag_break;

          probepresent <= jdo[19]     ? 1
                    : jdo[18]  ? 0
                    :  probepresent;

          resetlatch <= jdo[24] ? 0 : resetlatch;
        end
      else if (reset)
        begin
          jtag_break <= probepresent;
          resetlatch <= 1;
        end
      else if (~debugack & debugreq & probepresent)
          jtag_break <= 1'b1;
    end


  always @(posedge clk)
    begin
      if (take_action_ocimem_a && jdo[25])
          monitor_ready <= 1'b0;
      else if (take_action_ocireg && ocireg_mrs)
          monitor_ready <= 1'b1;
      if (take_action_ocimem_a && jdo[25])
          monitor_error <= 1'b0;
      else if (take_action_ocireg && ocireg_ers)
          monitor_error <= 1'b1;
      if (take_action_ocimem_a && jdo[23])
          monitor_go <= 1'b1;
      else if (st_ready_test_idle)
          monitor_go <= 1'b0;
    end


  assign oci_hbreak_req = jtag_break | dbrk_break | xbrk_break | debugreq;
  assign debugack = ~hbreak_enabled;

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_ociram_lpm_dram_bdp_component_module (
                                                  // inputs:
                                                   address_a,
                                                   address_b,
                                                   byteena_a,
                                                   clock0,
                                                   clock1,
                                                   clocken0,
                                                   clocken1,
                                                   data_a,
                                                   data_b,
                                                   wren_a,
                                                   wren_b,

                                                  // outputs:
                                                   q_a,
                                                   q_b
                                                )
;

  parameter lpm_file = "UNUSED";


  output  [ 31: 0] q_a;
  output  [ 31: 0] q_b;
  input   [  7: 0] address_a;
  input   [  7: 0] address_b;
  input   [  3: 0] byteena_a;
  input            clock0;
  input            clock1;
  input            clocken0;
  input            clocken1;
  input   [ 31: 0] data_a;
  input   [ 31: 0] data_b;
  input            wren_a;
  input            wren_b;

  wire    [ 31: 0] q_a;
  wire    [ 31: 0] q_b;
  altsyncram the_altsyncram
    (
      .address_a (address_a),
      .address_b (address_b),
      .byteena_a (byteena_a),
      .clock0 (clock0),
      .clock1 (clock1),
      .clocken0 (clocken0),
      .clocken1 (clocken1),
      .data_a (data_a),
      .data_b (data_b),
      .q_a (q_a),
      .q_b (q_b),
      .wren_a (wren_a),
      .wren_b (wren_b)
    );

  defparam the_altsyncram.address_aclr_a = "NONE",
           the_altsyncram.address_aclr_b = "NONE",
           the_altsyncram.address_reg_b = "CLOCK1",
           the_altsyncram.indata_aclr_a = "NONE",
           the_altsyncram.indata_aclr_b = "NONE",
           the_altsyncram.init_file = lpm_file,
           the_altsyncram.intended_device_family = "Stratix",
           the_altsyncram.lpm_type = "altsyncram",
           the_altsyncram.numwords_a = 256,
           the_altsyncram.numwords_b = 256,
           the_altsyncram.operation_mode = "BIDIR_DUAL_PORT",
           the_altsyncram.outdata_aclr_a = "NONE",
           the_altsyncram.outdata_aclr_b = "NONE",
           the_altsyncram.outdata_reg_a = "UNREGISTERED",
           the_altsyncram.outdata_reg_b = "UNREGISTERED",
           the_altsyncram.ram_block_type = "AUTO",
           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
           the_altsyncram.width_a = 32,
           the_altsyncram.width_b = 32,
           the_altsyncram.width_byteena_a = 4,
           the_altsyncram.widthad_a = 8,
           the_altsyncram.widthad_b = 8,
           the_altsyncram.wrcontrol_aclr_a = "NONE",
           the_altsyncram.wrcontrol_aclr_b = "NONE";


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_ocimem (
                          // inputs:
                           address,
                           begintransfer,
                           byteenable,
                           chipselect,
                           clk,
                           debugaccess,
                           jdo,
                           jrst_n,
                           resetrequest,
                           take_action_ocimem_a,
                           take_action_ocimem_b,
                           take_no_action_ocimem_a,
                           write,
                           writedata,

                          // outputs:
                           MonDReg,
                           oci_ram_readdata
                        )
;

  output  [ 31: 0] MonDReg;
  output  [ 31: 0] oci_ram_readdata;
  input   [  8: 0] address;
  input            begintransfer;
  input   [  3: 0] byteenable;
  input            chipselect;
  input            clk;
  input            debugaccess;
  input   [ 37: 0] jdo;
  input            jrst_n;
  input            resetrequest;
  input            take_action_ocimem_a;
  input            take_action_ocimem_b;
  input            take_no_action_ocimem_a;
  input            write;
  input   [ 31: 0] writedata;

  reg     [ 10: 0] MonAReg /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  reg     [ 31: 0] MonDReg /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  reg              MonRd /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  reg              MonRd1 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  reg              MonWr /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  wire             avalon;
  wire    [ 31: 0] cfgdout;
  wire    [ 31: 0] oci_ram_readdata;
  wire    [ 31: 0] sramdout;
  assign avalon = begintransfer & ~resetrequest;
  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          MonWr <= 1'b0;
          MonRd <= 1'b0;
          MonRd1 <= 1'b0;
          MonAReg <= 0;
          MonDReg <= 0;
        end
      else 
        begin
          if (take_no_action_ocimem_a)
            begin
              MonAReg[10 : 2] <= MonAReg[10 : 2]+1;
              MonRd <= 1'b1;
            end
          else if (take_action_ocimem_a)
            begin
              MonAReg[10 : 2] <= { jdo[17],
                            jdo[33 : 26] };

              MonRd <= 1'b1;
            end
          else if (take_action_ocimem_b)
            begin
              MonAReg[10 : 2] <= MonAReg[10 : 2]+1;
              MonDReg <= jdo[34 : 3];
              MonWr <= 1'b1;
            end
          else 
            begin
              if (~avalon)
                begin
                  MonWr <= 0;
                  MonRd <= 0;
                end
              if (MonRd1)
                  MonDReg <= MonAReg[10] ? cfgdout : sramdout;
            end
          MonRd1 <= MonRd;
        end
    end


//cpu_ociram_lpm_dram_bdp_component, which is an e_bdpram
cpu_ociram_lpm_dram_bdp_component_module cpu_ociram_lpm_dram_bdp_component
  (
    .address_a (address[7 : 0]),
    .address_b (MonAReg[9 : 2]),
    .byteena_a (byteenable),
    .clock0    (clk),
    .clock1    (clk),
    .clocken0  (1'b1),
    .clocken1  (1'b1),
    .data_a    (writedata),
    .data_b    (MonDReg[31 : 0]),
    .q_a       (oci_ram_readdata),
    .q_b       (sramdout),
    .wren_a    (chipselect & write & debugaccess & 
                       ~address[8] 
                       ),
    .wren_b    (MonWr)
  );

//synthesis translate_off
`ifdef NO_PLI
defparam cpu_ociram_lpm_dram_bdp_component.lpm_file = "cpu_ociram_default_contents.dat";
`else
defparam cpu_ociram_lpm_dram_bdp_component.lpm_file = "cpu_ociram_default_contents.hex";
`endif
//synthesis translate_on
//synthesis read_comments_as_HDL on
//defparam cpu_ociram_lpm_dram_bdp_component.lpm_file = "cpu_ociram_default_contents.mif";
//synthesis read_comments_as_HDL off
  assign cfgdout = (MonAReg[4 : 2] == 3'd0)? 32'h00000020 :
    (MonAReg[4 : 2] == 3'd1)? 32'h02021010 :
    (MonAReg[4 : 2] == 3'd2)? 32'h00040101 :
    (MonAReg[4 : 2] == 3'd3)? 32'h00000007 :
    (MonAReg[4 : 2] == 3'd4)? 32'h20000c0c :
    (MonAReg[4 : 2] == 3'd5)? 32'h00000000 :
    (MonAReg[4 : 2] == 3'd6)? 32'h00000000 :
    32'h00000000;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_avalon_reg (
                              // inputs:
                               address,
                               chipselect,
                               clk,
                               debugaccess,
                               monitor_error,
                               monitor_go,
                               monitor_ready,
                               reset_n,
                               write,
                               writedata,

                              // outputs:
                               oci_ienable,
                               oci_reg_readdata,
                               oci_single_step_mode,
                               ocireg_ers,
                               ocireg_mrs,
                               take_action_ocireg
                            )
;

  output  [ 31: 0] oci_ienable;
  output  [ 31: 0] oci_reg_readdata;
  output           oci_single_step_mode;
  output           ocireg_ers;
  output           ocireg_mrs;
  output           take_action_ocireg;
  input   [  8: 0] address;
  input            chipselect;
  input            clk;
  input            debugaccess;
  input            monitor_error;
  input            monitor_go;
  input            monitor_ready;
  input            reset_n;
  input            write;
  input   [ 31: 0] writedata;

  reg     [ 31: 0] oci_ienable;
  wire             oci_reg_00_addressed;
  wire             oci_reg_01_addressed;
  wire    [ 31: 0] oci_reg_readdata;
  reg              oci_single_step_mode;
  wire             ocireg_ers;
  wire             ocireg_mrs;
  wire             ocireg_sstep;
  wire             take_action_oci_intr_mask_reg;
  wire             take_action_ocireg;
  wire             write_strobe;
  assign oci_reg_00_addressed = address == 9'h100;
  assign oci_reg_01_addressed = address == 9'h101;
  assign write_strobe = chipselect & write & debugaccess;
  assign take_action_ocireg = write_strobe & oci_reg_00_addressed;
  assign take_action_oci_intr_mask_reg = write_strobe & oci_reg_01_addressed;
  assign ocireg_ers = writedata[1];
  assign ocireg_mrs = writedata[0];
  assign ocireg_sstep = writedata[3];
  assign oci_reg_readdata = oci_reg_00_addressed ? {28'b0, oci_single_step_mode, monitor_go,
    monitor_ready, monitor_error} : 
    oci_reg_01_addressed ?  oci_ienable :   
    32'b0;

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          oci_single_step_mode <= 1'b0;
      else if (take_action_ocireg)
          oci_single_step_mode <= ocireg_sstep;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          oci_ienable <= {32{1'b1}};
      else if (take_action_oci_intr_mask_reg)
          oci_ienable <= writedata | ~(32'b00000000000000000000000000000001);
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_break (
                             // inputs:
                              clk,
                              dbrk_break,
                              dbrk_goto0,
                              dbrk_goto1,
                              dbrk_hit0,
                              dbrk_hit1,
                              dbrk_hit2,
                              dbrk_hit3,
                              jdo,
                              jrst_n,
                              reset_n,
                              take_action_break_a,
                              take_action_break_b,
                              take_action_break_c,
                              take_no_action_break_a,
                              take_no_action_break_b,
                              take_no_action_break_c,
                              xbrk_goto0,
                              xbrk_goto1,

                             // outputs:
                              break_readreg,
                              dbrk0,
                              dbrk1,
                              dbrk2,
                              dbrk3,
                              dbrk_hit0_latch,
                              dbrk_hit1_latch,
                              dbrk_hit2_latch,
                              dbrk_hit3_latch,
                              trigbrktype,
                              trigger_state_0,
                              trigger_state_1,
                              xbrk0,
                              xbrk1,
                              xbrk2,
                              xbrk3,
                              xbrk_ctrl0,
                              xbrk_ctrl1,
                              xbrk_ctrl2,
                              xbrk_ctrl3
                           )
;

  output  [ 31: 0] break_readreg;
  output  [ 77: 0] dbrk0;
  output  [ 77: 0] dbrk1;
  output  [ 77: 0] dbrk2;
  output  [ 77: 0] dbrk3;
  output           dbrk_hit0_latch;
  output           dbrk_hit1_latch;
  output           dbrk_hit2_latch;
  output           dbrk_hit3_latch;
  output           trigbrktype;
  output           trigger_state_0;
  output           trigger_state_1;
  output  [ 15: 0] xbrk0;
  output  [ 15: 0] xbrk1;
  output  [ 15: 0] xbrk2;
  output  [ 15: 0] xbrk3;
  output  [  7: 0] xbrk_ctrl0;
  output  [  7: 0] xbrk_ctrl1;
  output  [  7: 0] xbrk_ctrl2;
  output  [  7: 0] xbrk_ctrl3;
  input            clk;
  input            dbrk_break;
  input            dbrk_goto0;
  input            dbrk_goto1;
  input            dbrk_hit0;
  input            dbrk_hit1;
  input            dbrk_hit2;
  input            dbrk_hit3;
  input   [ 37: 0] jdo;
  input            jrst_n;
  input            reset_n;
  input            take_action_break_a;
  input            take_action_break_b;
  input            take_action_break_c;
  input            take_no_action_break_a;
  input            take_no_action_break_b;
  input            take_no_action_break_c;
  input            xbrk_goto0;
  input            xbrk_goto1;

  wire    [  3: 0] break_a_wpr;
  wire    [  1: 0] break_a_wpr_high_bits;
  wire    [  1: 0] break_a_wpr_low_bits;
  wire    [  1: 0] break_b_rr;
  wire    [  1: 0] break_c_rr;
  reg     [ 31: 0] break_readreg /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [ 77: 0] dbrk0 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [ 77: 0] dbrk1 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [ 77: 0] dbrk2 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [ 77: 0] dbrk3 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg              dbrk_hit0_latch /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  reg              dbrk_hit1_latch /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  reg              dbrk_hit2_latch /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  reg              dbrk_hit3_latch /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  wire             take_action_any_break;
  reg              trigbrktype /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg              trigger_state;
  wire             trigger_state_0;
  wire             trigger_state_1;
  reg     [ 15: 0] xbrk0 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [ 15: 0] xbrk1 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [ 15: 0] xbrk2 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [ 15: 0] xbrk3 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [  7: 0] xbrk_ctrl0 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [  7: 0] xbrk_ctrl1 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [  7: 0] xbrk_ctrl2 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [  7: 0] xbrk_ctrl3 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  assign break_a_wpr = jdo[35 : 32];
  assign break_a_wpr_high_bits = break_a_wpr[3 : 2];
  assign break_a_wpr_low_bits = break_a_wpr[1 : 0];
  assign break_b_rr = jdo[33 : 32];
  assign break_c_rr = jdo[33 : 32];
  assign take_action_any_break = take_action_break_a | take_action_break_b | take_action_break_c;
  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          xbrk_ctrl0 <= 0;
          xbrk_ctrl1 <= 0;
          xbrk_ctrl2 <= 0;
          xbrk_ctrl3 <= 0;
          trigbrktype <= 0;
          if (2 >= 1)
              xbrk0 <= 0;
          if (2 >= 2)
              xbrk1 <= 0;
          if (2 >= 3)
              xbrk2 <= 0;
          if (2 >= 4)
              xbrk3 <= 0;
          if (2 >= 1)
              dbrk0 <= 0;
          if (2 >= 2)
              dbrk1 <= 0;
          if (2 >= 3)
              dbrk2 <= 0;
          if (2 >= 4)
              dbrk3 <= 0;
        end
      else 
        begin
          if (take_action_any_break)
              trigbrktype <= 0;
          else if (dbrk_break)
              trigbrktype <= 1;
          if (take_action_break_a)
              case (break_a_wpr_high_bits)
              
                  2'd0: begin
                      if ((2 >= 1) && (break_a_wpr_low_bits == 2'b00))
                          xbrk0[15 : 0] <= jdo[31 : 0];
                      if ((2 >= 2) && (break_a_wpr_low_bits == 2'b01))
                          xbrk1[15 : 0] <= jdo[31 : 0];
                      if ((2 >= 3) && (break_a_wpr_low_bits == 2'b10))
                          xbrk2[15 : 0] <= jdo[31 : 0];
                      if ((2 >= 4) && (break_a_wpr_low_bits == 2'b11))
                          xbrk3[15 : 0] <= jdo[31 : 0];
                  end // 2'd0 
              
                  2'd2: begin
                      if ((2 >= 1) && (break_a_wpr_low_bits == 2'b00))
                          dbrk0[15 : 0] <= jdo[31 : 0];
                      if ((2 >= 2) && (break_a_wpr_low_bits == 2'b01))
                          dbrk1[15 : 0] <= jdo[31 : 0];
                      if ((2 >= 3) && (break_a_wpr_low_bits == 2'b10))
                          dbrk2[15 : 0] <= jdo[31 : 0];
                      if ((2 >= 4) && (break_a_wpr_low_bits == 2'b11))
                          dbrk3[15 : 0] <= jdo[31 : 0];
                  end // 2'd2 
              
                  2'd3: begin
                      if ((2 >= 1) && (break_a_wpr_low_bits == 2'b00))
                          dbrk0[63 : 32] <= jdo[31 : 0];
                      if ((2 >= 2) && (break_a_wpr_low_bits == 2'b01))
                          dbrk1[63 : 32] <= jdo[31 : 0];
                      if ((2 >= 3) && (break_a_wpr_low_bits == 2'b10))
                          dbrk2[63 : 32] <= jdo[31 : 0];
                      if ((2 >= 4) && (break_a_wpr_low_bits == 2'b11))
                          dbrk3[63 : 32] <= jdo[31 : 0];
                  end // 2'd3 
              
              endcase // break_a_wpr_high_bits
          else if (take_action_break_b)
            begin
              if ((break_b_rr == 2'b00) && (2 >= 1))
                begin
                  xbrk_ctrl0[0] <= jdo[27];
                  xbrk_ctrl0[1] <= jdo[28];
                  xbrk_ctrl0[2] <= jdo[29];
                  xbrk_ctrl0[3] <= jdo[30];
                  xbrk_ctrl0[4] <= jdo[21];
                  xbrk_ctrl0[5] <= jdo[20];
                  xbrk_ctrl0[6] <= jdo[19];
                  xbrk_ctrl0[7] <= jdo[18];
                end
              if ((break_b_rr == 2'b01) && (2 >= 2))
                begin
                  xbrk_ctrl1[0] <= jdo[27];
                  xbrk_ctrl1[1] <= jdo[28];
                  xbrk_ctrl1[2] <= jdo[29];
                  xbrk_ctrl1[3] <= jdo[30];
                  xbrk_ctrl1[4] <= jdo[21];
                  xbrk_ctrl1[5] <= jdo[20];
                  xbrk_ctrl1[6] <= jdo[19];
                  xbrk_ctrl1[7] <= jdo[18];
                end
              if ((break_b_rr == 2'b10) && (2 >= 3))
                begin
                  xbrk_ctrl2[0] <= jdo[27];
                  xbrk_ctrl2[1] <= jdo[28];
                  xbrk_ctrl2[2] <= jdo[29];
                  xbrk_ctrl2[3] <= jdo[30];
                  xbrk_ctrl2[4] <= jdo[21];
                  xbrk_ctrl2[5] <= jdo[20];
                  xbrk_ctrl2[6] <= jdo[19];
                  xbrk_ctrl2[7] <= jdo[18];
                end
              if ((break_b_rr == 2'b11) && (2 >= 4))
                begin
                  xbrk_ctrl3[0] <= jdo[27];
                  xbrk_ctrl3[1] <= jdo[28];
                  xbrk_ctrl3[2] <= jdo[29];
                  xbrk_ctrl3[3] <= jdo[30];
                  xbrk_ctrl3[4] <= jdo[21];
                  xbrk_ctrl3[5] <= jdo[20];
                  xbrk_ctrl3[6] <= jdo[19];
                  xbrk_ctrl3[7] <= jdo[18];
                end
            end
          else if (take_action_break_c)
            begin
              if ((2 >= 1) && (break_c_rr == 2'b00))
                begin
                  dbrk0[65] <= jdo[23];
                  dbrk0[66] <= jdo[24];
                  dbrk0[67] <= jdo[25];
                  dbrk0[68] <= jdo[26];
                  dbrk0[69] <= jdo[27];
                  dbrk0[70] <= jdo[28];
                  if (1)
                      dbrk0[64] <= jdo[22];
                  if (1)
                    begin
                      dbrk0[71] <= jdo[29];
                      dbrk0[72] <= jdo[30];
                      dbrk0[73] <= jdo[31];
                    end
                  dbrk0[74] <= jdo[21];
                  dbrk0[75] <= jdo[20];
                  dbrk0[76] <= jdo[19];
                  dbrk0[77] <= jdo[18];
                end
              if ((2 >= 2) && (break_c_rr == 2'b01))
                begin
                  dbrk1[65] <= jdo[23];
                  dbrk1[66] <= jdo[24];
                  dbrk1[67] <= jdo[25];
                  dbrk1[68] <= jdo[26];
                  dbrk1[69] <= jdo[27];
                  dbrk1[70] <= jdo[28];
                  if (1)
                      dbrk1[64] <= jdo[22];
                  if (1)
                    begin
                      dbrk1[71] <= jdo[29];
                      dbrk1[72] <= jdo[30];
                      dbrk1[73] <= jdo[31];
                    end
                  dbrk1[74] <= jdo[21];
                  dbrk1[75] <= jdo[20];
                  dbrk1[76] <= jdo[19];
                  dbrk1[77] <= jdo[18];
                end
              if ((2 >= 3) && (break_c_rr == 2'b10))
                begin
                  dbrk2[65] <= jdo[23];
                  dbrk2[66] <= jdo[24];
                  dbrk2[67] <= jdo[25];
                  dbrk2[68] <= jdo[26];
                  dbrk2[69] <= jdo[27];
                  dbrk2[70] <= jdo[28];
                  if (1)
                      dbrk2[64] <= jdo[22];
                  if (1)
                    begin
                      dbrk2[71] <= jdo[29];
                      dbrk2[72] <= jdo[30];
                      dbrk2[73] <= jdo[31];
                    end
                  dbrk2[74] <= jdo[21];
                  dbrk2[75] <= jdo[20];
                  dbrk2[76] <= jdo[19];
                  dbrk2[77] <= jdo[18];
                end
              if ((2 >= 4) && (break_c_rr == 2'b11))
                begin
                  dbrk3[65] <= jdo[23];
                  dbrk3[66] <= jdo[24];
                  dbrk3[67] <= jdo[25];
                  dbrk3[68] <= jdo[26];
                  dbrk3[69] <= jdo[27];
                  dbrk3[70] <= jdo[28];
                  if (1)
                      dbrk3[64] <= jdo[22];
                  if (1)
                    begin
                      dbrk3[71] <= jdo[29];
                      dbrk3[72] <= jdo[30];
                      dbrk3[73] <= jdo[31];
                    end
                  dbrk3[74] <= jdo[21];
                  dbrk3[75] <= jdo[20];
                  dbrk3[76] <= jdo[19];
                  dbrk3[77] <= jdo[18];
                end
            end
        end
    end


  always @(posedge clk)
    begin
      if (take_action_any_break)
        begin
          dbrk_hit0_latch <= 1'b0;
          dbrk_hit1_latch <= 1'b0;
          dbrk_hit2_latch <= 1'b0;
          dbrk_hit3_latch <= 1'b0;
        end
      else 
        begin
          if (dbrk_hit0 & dbrk0[69])
              dbrk_hit0_latch <= 1'b1;
          if (dbrk_hit1 & dbrk1[69])
              dbrk_hit1_latch <= 1'b1;
          if (dbrk_hit2 & dbrk2[69])
              dbrk_hit2_latch <= 1'b1;
          if (dbrk_hit3 & dbrk3[69])
              dbrk_hit3_latch <= 1'b1;
        end
    end


  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
          break_readreg <= 32'b0;
      else if (take_action_any_break)
          break_readreg <= jdo[31 : 0];
      else if (take_no_action_break_a)
          case (break_a_wpr_high_bits)
          
              2'd0: begin
                  case (break_a_wpr_low_bits) // synthesis full_case
                  
                      2'd0: begin
                          break_readreg <= (2 >= 1) ? xbrk0 : 32'b0;
                      end // 2'd0 
                  
                      2'd1: begin
                          break_readreg <= (2 >= 2) ? xbrk1 : 32'b0;
                      end // 2'd1 
                  
                      2'd2: begin
                          break_readreg <= (2 >= 3) ? xbrk2 : 32'b0;
                      end // 2'd2 
                  
                      2'd3: begin
                          break_readreg <= (2 >= 4) ? xbrk3 : 32'b0;
                      end // 2'd3 
                  
                  endcase // break_a_wpr_low_bits
              end // 2'd0 
          
              2'd1: begin
                  break_readreg <= 32'b0;
              end // 2'd1 
          
              2'd2: begin
                  case (break_a_wpr_low_bits) // synthesis full_case
                  
                      2'd0: begin
                          break_readreg <= (2 >= 1)  ? 
                                  dbrk0[15 : 0] : 32'b0;
                  
                      end // 2'd0 
                  
                      2'd1: begin
                          break_readreg <= (2 >= 2)  ? 
                                  dbrk1[15 : 0] : 32'b0;
                  
                      end // 2'd1 
                  
                      2'd2: begin
                          break_readreg <= (2 >= 3)  ? 
                                  dbrk2[15 : 0] : 32'b0;
                  
                      end // 2'd2 
                  
                      2'd3: begin
                          break_readreg <= (2 >= 4)  ? 
                                  dbrk3[15 : 0] : 32'b0;
                  
                      end // 2'd3 
                  
                  endcase // break_a_wpr_low_bits
              end // 2'd2 
          
              2'd3: begin
                  case (break_a_wpr_low_bits) // synthesis full_case
                  
                      2'd0: begin
                          break_readreg <= (2 >= 1)  ? 
                                  dbrk0[63 : 32] : 32'b0;
                  
                      end // 2'd0 
                  
                      2'd1: begin
                          break_readreg <= (2 >= 2)  ? 
                                  dbrk1[63 : 32] : 32'b0;
                  
                      end // 2'd1 
                  
                      2'd2: begin
                          break_readreg <= (2 >= 3)  ? 
                                  dbrk2[63 : 32] : 32'b0;
                  
                      end // 2'd2 
                  
                      2'd3: begin
                          break_readreg <= (2 >= 4)  ? 
                                  dbrk3[63 : 32] : 32'b0;
                  
                      end // 2'd3 
                  
                  endcase // break_a_wpr_low_bits
              end // 2'd3 
          
          endcase // break_a_wpr_high_bits
      else if (take_no_action_break_b)
          break_readreg <= jdo[31 : 0];
      else if (take_no_action_break_c)
          break_readreg <= jdo[31 : 0];
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          trigger_state <= 0;
      else if (1)
          if (trigger_state_1 & (xbrk_goto0 | dbrk_goto0))
              trigger_state <= 0;
          else if (trigger_state_0 & (xbrk_goto1 | dbrk_goto1))
              trigger_state <= -1;
    end


  assign trigger_state_0 = ~trigger_state;
  assign trigger_state_1 = trigger_state;

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_xbrk (
                            // inputs:
                             D_en,
                             E_en,
                             E_valid,
                             F_pc,
                             M_en,
                             clk,
                             reset_n,
                             trigger_state_0,
                             trigger_state_1,
                             xbrk0,
                             xbrk1,
                             xbrk2,
                             xbrk3,
                             xbrk_ctrl0,
                             xbrk_ctrl1,
                             xbrk_ctrl2,
                             xbrk_ctrl3,

                            // outputs:
                             xbrk_break,
                             xbrk_goto0,
                             xbrk_goto1,
                             xbrk_traceoff,
                             xbrk_traceon,
                             xbrk_trigout
                          )
;

  output           xbrk_break;
  output           xbrk_goto0;
  output           xbrk_goto1;
  output           xbrk_traceoff;
  output           xbrk_traceon;
  output           xbrk_trigout;
  input            D_en;
  input            E_en;
  input            E_valid;
  input   [ 13: 0] F_pc;
  input            M_en;
  input            clk;
  input            reset_n;
  input            trigger_state_0;
  input            trigger_state_1;
  input   [ 15: 0] xbrk0;
  input   [ 15: 0] xbrk1;
  input   [ 15: 0] xbrk2;
  input   [ 15: 0] xbrk3;
  input   [  7: 0] xbrk_ctrl0;
  input   [  7: 0] xbrk_ctrl1;
  input   [  7: 0] xbrk_ctrl2;
  input   [  7: 0] xbrk_ctrl3;

  wire             D_cpu_addr_en;
  wire             E_cpu_addr_en;
  reg              E_xbrk_goto0;
  reg              E_xbrk_goto1;
  reg              E_xbrk_traceoff;
  reg              E_xbrk_traceon;
  reg              E_xbrk_trigout;
  reg              M_xbrk_goto0;
  reg              M_xbrk_goto1;
  reg              M_xbrk_traceoff;
  reg              M_xbrk_traceon;
  reg              M_xbrk_trigout;
  wire    [ 15: 0] cpu_i_address;
  wire             xbrk0_armed;
  wire             xbrk1_armed;
  wire             xbrk2_armed;
  wire             xbrk3_armed;
  reg              xbrk_break;
  wire             xbrk_break_hit;
  wire             xbrk_goto0;
  wire             xbrk_goto0_hit;
  wire             xbrk_goto1;
  wire             xbrk_goto1_hit;
  reg              xbrk_hit0;
  reg              xbrk_hit1;
  reg              xbrk_hit2;
  reg              xbrk_hit3;
  wire             xbrk_toff_hit;
  wire             xbrk_ton_hit;
  wire             xbrk_tout_hit;
  wire             xbrk_traceoff;
  wire             xbrk_traceon;
  wire             xbrk_trigout;
  assign cpu_i_address = {F_pc, 2'b00};
  assign D_cpu_addr_en = D_en;
  assign E_cpu_addr_en = E_en;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          xbrk_hit0 <= 0;
      else if (D_cpu_addr_en)
          xbrk_hit0 <= (2 >= 1) & 
                    (cpu_i_address == xbrk0[15 : 0]);

    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          xbrk_hit1 <= 0;
      else if (D_cpu_addr_en)
          xbrk_hit1 <= (2 >= 2) & 
                    (cpu_i_address == xbrk1[15 : 0]);

    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          xbrk_hit2 <= 0;
      else if (D_cpu_addr_en)
          xbrk_hit2 <= (2 >= 3) & 
                    (cpu_i_address == xbrk2[15 : 0]);

    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          xbrk_hit3 <= 0;
      else if (D_cpu_addr_en)
          xbrk_hit3 <= (2 >= 4) &
                    (cpu_i_address == xbrk3[15 : 0]);

    end


  assign xbrk_break_hit = (xbrk_hit0 & xbrk0_armed & xbrk_ctrl0[0]) | 
    (xbrk_hit1 & xbrk1_armed & xbrk_ctrl1[0]) | 
    (xbrk_hit2 & xbrk2_armed & xbrk_ctrl2[0]) | 
    (xbrk_hit3 & xbrk3_armed & xbrk_ctrl3[0]);

  assign xbrk_ton_hit = (xbrk_hit0 & xbrk0_armed & xbrk_ctrl0[3]) | 
    (xbrk_hit1 & xbrk1_armed & xbrk_ctrl1[3]) | 
    (xbrk_hit2 & xbrk2_armed & xbrk_ctrl2[3]) | 
    (xbrk_hit3 & xbrk3_armed & xbrk_ctrl3[3]);

  assign xbrk_toff_hit = (xbrk_hit0 & xbrk0_armed & xbrk_ctrl0[2]) | 
    (xbrk_hit1 & xbrk1_armed & xbrk_ctrl1[2]) | 
    (xbrk_hit2 & xbrk2_armed & xbrk_ctrl2[2]) | 
    (xbrk_hit3 & xbrk3_armed & xbrk_ctrl3[2]);

  assign xbrk_tout_hit = (xbrk_hit0 & xbrk0_armed & xbrk_ctrl0[1]) | 
    (xbrk_hit1 & xbrk1_armed & xbrk_ctrl1[1]) | 
    (xbrk_hit2 & xbrk2_armed & xbrk_ctrl2[1]) | 
    (xbrk_hit3 & xbrk3_armed & xbrk_ctrl3[1]);

  assign xbrk_goto0_hit = (xbrk_hit0 & xbrk0_armed & xbrk_ctrl0[6]) | 
    (xbrk_hit1 & xbrk1_armed & xbrk_ctrl1[6]) | 
    (xbrk_hit2 & xbrk2_armed & xbrk_ctrl2[6]) | 
    (xbrk_hit3 & xbrk3_armed & xbrk_ctrl3[6]);

  assign xbrk_goto1_hit = (xbrk_hit0 & xbrk0_armed & xbrk_ctrl0[7]) | 
    (xbrk_hit1 & xbrk1_armed & xbrk_ctrl1[7]) | 
    (xbrk_hit2 & xbrk2_armed & xbrk_ctrl2[7]) | 
    (xbrk_hit3 & xbrk3_armed & xbrk_ctrl3[7]);

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          xbrk_break <= 0;
      else if (E_cpu_addr_en)
          xbrk_break <= xbrk_break_hit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_xbrk_traceon <= 0;
      else if (E_cpu_addr_en)
          E_xbrk_traceon <= xbrk_ton_hit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_xbrk_traceoff <= 0;
      else if (E_cpu_addr_en)
          E_xbrk_traceoff <= xbrk_toff_hit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_xbrk_trigout <= 0;
      else if (E_cpu_addr_en)
          E_xbrk_trigout <= xbrk_tout_hit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_xbrk_goto0 <= 0;
      else if (E_cpu_addr_en)
          E_xbrk_goto0 <= xbrk_goto0_hit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_xbrk_goto1 <= 0;
      else if (E_cpu_addr_en)
          E_xbrk_goto1 <= xbrk_goto1_hit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_xbrk_traceon <= 0;
      else if (M_en)
          M_xbrk_traceon <= E_xbrk_traceon & E_valid;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_xbrk_traceoff <= 0;
      else if (M_en)
          M_xbrk_traceoff <= E_xbrk_traceoff & E_valid;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_xbrk_trigout <= 0;
      else if (M_en)
          M_xbrk_trigout <= E_xbrk_trigout & E_valid;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_xbrk_goto0 <= 0;
      else if (M_en)
          M_xbrk_goto0 <= E_xbrk_goto0 & E_valid;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_xbrk_goto1 <= 0;
      else if (M_en)
          M_xbrk_goto1 <= E_xbrk_goto1 & E_valid;
    end


  assign xbrk_traceon = M_xbrk_traceon;
  assign xbrk_traceoff = M_xbrk_traceoff;
  assign xbrk_trigout = M_xbrk_trigout;
  assign xbrk_goto0 = M_xbrk_goto0;
  assign xbrk_goto1 = M_xbrk_goto1;
  assign xbrk0_armed = (xbrk_ctrl0[4] & trigger_state_0) ||
    (xbrk_ctrl0[5] & trigger_state_1);

  assign xbrk1_armed = (xbrk_ctrl1[4] & trigger_state_0) ||
    (xbrk_ctrl1[5] & trigger_state_1);

  assign xbrk2_armed = (xbrk_ctrl2[4] & trigger_state_0) ||
    (xbrk_ctrl2[5] & trigger_state_1);

  assign xbrk3_armed = (xbrk_ctrl3[4] & trigger_state_0) ||
    (xbrk_ctrl3[5] & trigger_state_1);


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_match_paired (
                                    // inputs:
                                     addr,
                                     data,
                                     dbrka,
                                     dbrkb,
                                     read,
                                     write,

                                    // outputs:
                                     match_paired
                                  )
;

  output           match_paired;
  input   [ 15: 0] addr;
  input   [ 31: 0] data;
  input   [ 73: 0] dbrka;
  input   [ 73: 0] dbrkb;
  input            read;
  input            write;

  wire             match_paired;
  wire             match_paired_combinatorial;
  assign match_paired_combinatorial = (~dbrka[67]       || ((addr >= dbrka[15 : 0])            && (addr <= dbrkb[15 : 0]))) && (~dbrka[68]       || (((data ^ dbrka[63 : 32])             & dbrkb[63 : 32]) == 0)) && ((dbrka[66] & read)       || (dbrka[65] & write));
  assign match_paired = match_paired_combinatorial;

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_match_single (
                                    // inputs:
                                     addr,
                                     data,
                                     dbrk,
                                     read,
                                     write,

                                    // outputs:
                                     match_single
                                  )
;

  output           match_single;
  input   [ 15: 0] addr;
  input   [ 31: 0] data;
  input   [ 73: 0] dbrk;
  input            read;
  input            write;

  wire             match_single;
  wire             match_single_combinatorial;
  assign match_single_combinatorial = (~dbrk[67] || (addr == dbrk[15 : 0]))  && (~dbrk[68] || (data == dbrk[63 : 32]))  && (    (dbrk[66] & read)       || (dbrk[65] & write));
  assign match_single = match_single_combinatorial;

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_dbrk (
                            // inputs:
                             A_ctrl_ld,
                             A_ctrl_st,
                             A_en,
                             A_mem_baddr,
                             A_st_data,
                             A_valid,
                             A_wr_data_filtered,
                             clk,
                             dbrk0,
                             dbrk1,
                             dbrk2,
                             dbrk3,
                             debugack,
                             reset_n,
                             trigger_state_0,
                             trigger_state_1,

                            // outputs:
                             cpu_d_address,
                             cpu_d_read,
                             cpu_d_readdata,
                             cpu_d_wait,
                             cpu_d_write,
                             cpu_d_writedata,
                             dbrk_break,
                             dbrk_goto0,
                             dbrk_goto1,
                             dbrk_hit0,
                             dbrk_hit1,
                             dbrk_hit2,
                             dbrk_hit3,
                             dbrk_traceme,
                             dbrk_traceoff,
                             dbrk_traceon,
                             dbrk_trigout
                          )
;

  output  [ 15: 0] cpu_d_address;
  output           cpu_d_read;
  output  [ 31: 0] cpu_d_readdata;
  output           cpu_d_wait;
  output           cpu_d_write;
  output  [ 31: 0] cpu_d_writedata;
  output           dbrk_break;
  output           dbrk_goto0;
  output           dbrk_goto1;
  output           dbrk_hit0;
  output           dbrk_hit1;
  output           dbrk_hit2;
  output           dbrk_hit3;
  output           dbrk_traceme;
  output           dbrk_traceoff;
  output           dbrk_traceon;
  output           dbrk_trigout;
  input            A_ctrl_ld;
  input            A_ctrl_st;
  input            A_en;
  input   [ 15: 0] A_mem_baddr;
  input   [ 31: 0] A_st_data;
  input            A_valid;
  input   [ 31: 0] A_wr_data_filtered;
  input            clk;
  input   [ 77: 0] dbrk0;
  input   [ 77: 0] dbrk1;
  input   [ 77: 0] dbrk2;
  input   [ 77: 0] dbrk3;
  input            debugack;
  input            reset_n;
  input            trigger_state_0;
  input            trigger_state_1;

  wire    [ 15: 0] cpu_d_address;
  wire             cpu_d_read;
  wire             cpu_d_read_valid;
  wire    [ 31: 0] cpu_d_readdata;
  wire             cpu_d_wait;
  wire             cpu_d_write;
  wire    [ 31: 0] cpu_d_writedata;
  wire             dbrk0_armed;
  wire             dbrk1_armed;
  wire             dbrk2_armed;
  wire             dbrk3_armed;
  reg              dbrk_break;
  reg              dbrk_break_pulse;
  wire    [ 31: 0] dbrk_data;
  reg              dbrk_goto0;
  reg              dbrk_goto1;
  wire             dbrk_hit0;
  wire             dbrk_hit0_match_paired;
  wire             dbrk_hit0_match_single;
  wire             dbrk_hit1;
  wire             dbrk_hit1_match_single;
  wire             dbrk_hit2;
  wire             dbrk_hit2_match_paired;
  wire             dbrk_hit2_match_single;
  wire             dbrk_hit3;
  wire             dbrk_hit3_match_single;
  reg              dbrk_traceme;
  reg              dbrk_traceoff;
  reg              dbrk_traceon;
  reg              dbrk_trigout;
  assign cpu_d_address = A_mem_baddr;
  assign cpu_d_readdata = A_wr_data_filtered;
  assign cpu_d_read = A_ctrl_ld & A_valid;
  assign cpu_d_writedata = A_st_data;
  assign cpu_d_write = A_ctrl_st & A_valid;
  assign cpu_d_wait = ~A_en;
  assign dbrk_data = cpu_d_write ? cpu_d_writedata : cpu_d_readdata;
  assign cpu_d_read_valid = cpu_d_read & ~cpu_d_wait;
  //cpu_nios2_oci_dbrk_hit0_match_paired, which is an e_instance
  cpu_nios2_oci_match_paired cpu_nios2_oci_dbrk_hit0_match_paired
    (
      .addr         (cpu_d_address),
      .data         (dbrk_data),
      .dbrka        (dbrk0),
      .dbrkb        (dbrk1),
      .match_paired (dbrk_hit0_match_paired),
      .read         (cpu_d_read_valid),
      .write        (cpu_d_write)
    );

  //cpu_nios2_oci_dbrk_hit0_match_single, which is an e_instance
  cpu_nios2_oci_match_single cpu_nios2_oci_dbrk_hit0_match_single
    (
      .addr         (cpu_d_address),
      .data         (dbrk_data),
      .dbrk         (dbrk0),
      .match_single (dbrk_hit0_match_single),
      .read         (cpu_d_read_valid),
      .write        (cpu_d_write)
    );

  assign dbrk_hit0 = (1) & (1 && dbrk0[64]) ?   ((2 >= 2) && dbrk_hit0_match_paired) :   ((2 >= 1) && dbrk_hit0_match_single);
  //cpu_nios2_oci_dbrk_hit1_match_single, which is an e_instance
  cpu_nios2_oci_match_single cpu_nios2_oci_dbrk_hit1_match_single
    (
      .addr         (cpu_d_address),
      .data         (dbrk_data),
      .dbrk         (dbrk1),
      .match_single (dbrk_hit1_match_single),
      .read         (cpu_d_read_valid),
      .write        (cpu_d_write)
    );

  assign dbrk_hit1 = (1 && dbrk0[64]) ?   0 :   ((2 >= 2) && dbrk_hit1_match_single);
  //cpu_nios2_oci_dbrk_hit2_match_paired, which is an e_instance
  cpu_nios2_oci_match_paired cpu_nios2_oci_dbrk_hit2_match_paired
    (
      .addr         (cpu_d_address),
      .data         (dbrk_data),
      .dbrka        (dbrk2),
      .dbrkb        (dbrk3),
      .match_paired (dbrk_hit2_match_paired),
      .read         (cpu_d_read_valid),
      .write        (cpu_d_write)
    );

  //cpu_nios2_oci_dbrk_hit2_match_single, which is an e_instance
  cpu_nios2_oci_match_single cpu_nios2_oci_dbrk_hit2_match_single
    (
      .addr         (cpu_d_address),
      .data         (dbrk_data),
      .dbrk         (dbrk2),
      .match_single (dbrk_hit2_match_single),
      .read         (cpu_d_read_valid),
      .write        (cpu_d_write)
    );

  assign dbrk_hit2 = (1 && dbrk2[64]) ?   ((2 >= 4) && dbrk_hit2_match_paired) :  ((2 >= 3) && dbrk_hit2_match_single);
  //cpu_nios2_oci_dbrk_hit3_match_single, which is an e_instance
  cpu_nios2_oci_match_single cpu_nios2_oci_dbrk_hit3_match_single
    (
      .addr         (cpu_d_address),
      .data         (dbrk_data),
      .dbrk         (dbrk3),
      .match_single (dbrk_hit3_match_single),
      .read         (cpu_d_read_valid),
      .write        (cpu_d_write)
    );

  assign dbrk_hit3 = (1 && dbrk2[64]) ?  0 :   ((2 >= 4) && dbrk_hit3_match_single);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbrk_break <= 0;
      else 
        dbrk_break <= dbrk_break   ? ~debugack   
                : dbrk_break_pulse;

    end


  always @(posedge clk)
    begin
      dbrk_trigout <= (dbrk_hit0 & dbrk0_armed & dbrk0[70])  | (dbrk_hit1 & dbrk1_armed & dbrk1[70])  | (dbrk_hit2 & dbrk2_armed & dbrk2[70])  | (dbrk_hit3 & dbrk3_armed & dbrk3[70]);
      dbrk_break_pulse <= (dbrk_hit0 & dbrk0_armed & dbrk0[69])  | (dbrk_hit1 & dbrk1_armed & dbrk1[69])  | (dbrk_hit2 & dbrk2_armed & dbrk2[69])  | (dbrk_hit3 & dbrk3_armed & dbrk3[69]);
      dbrk_traceoff <= 1 & (    (dbrk_hit0 & dbrk0_armed & dbrk0[71])  | (dbrk_hit1 & dbrk1_armed & dbrk1[71])  | (dbrk_hit2 & dbrk2_armed & dbrk2[71])  | (dbrk_hit3 & dbrk3_armed & dbrk3[71]));
      dbrk_traceon <= 1 & (    (dbrk_hit0 & dbrk0_armed & dbrk0[72])  | (dbrk_hit1 & dbrk1_armed & dbrk1[72])  | (dbrk_hit2 & dbrk2_armed & dbrk2[72])  | (dbrk_hit3 & dbrk3_armed & dbrk3[72]));
      dbrk_traceme <= 1 & (    (dbrk_hit0 & dbrk0_armed & dbrk0[73])  | (dbrk_hit1 & dbrk1_armed & dbrk1[73])  | (dbrk_hit2 & dbrk2_armed & dbrk2[73])  | (dbrk_hit3 & dbrk3_armed & dbrk3[73]));
      dbrk_goto0 <= 1 & (    (dbrk_hit0 & dbrk0_armed & dbrk0[76])  | (dbrk_hit1 & dbrk1_armed & dbrk1[76])  | (dbrk_hit2 & dbrk2_armed & dbrk2[76])  | (dbrk_hit3 & dbrk3_armed & dbrk3[76]));
      dbrk_goto1 <= 1 & (    (dbrk_hit0 & dbrk0_armed & dbrk0[77])  | (dbrk_hit1 & dbrk1_armed & dbrk1[77])  | (dbrk_hit2 & dbrk2_armed & dbrk2[77])  | (dbrk_hit3 & dbrk3_armed & dbrk3[77]));
    end


  assign dbrk0_armed = (dbrk0[74] & trigger_state_0) ||
    (dbrk0[75] & trigger_state_1);

  assign dbrk1_armed = (dbrk1[74] & trigger_state_0) ||
    (dbrk1[75] & trigger_state_1);

  assign dbrk2_armed = (dbrk2[74] & trigger_state_0) ||
    (dbrk2[75] & trigger_state_1);

  assign dbrk3_armed = (dbrk3[74] & trigger_state_0) ||
    (dbrk3[75] & trigger_state_1);


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_itrace (
                              // inputs:
                               A_cmp_result,
                               A_ctrl_exception,
                               A_en,
                               A_op_beq,
                               A_op_bge,
                               A_op_bgeu,
                               A_op_blt,
                               A_op_bltu,
                               A_op_bne,
                               A_op_br,
                               A_op_bret,
                               A_op_call,
                               A_op_callr,
                               A_op_eret,
                               A_op_jmp,
                               A_op_ret,
                               A_pcb,
                               A_valid,
                               A_wr_data_filtered,
                               clk,
                               dbrk_traceoff,
                               dbrk_traceon,
                               debugack,
                               jdo,
                               jrst_n,
                               reset_n,
                               take_action_tracectrl,
                               trc_enb,
                               xbrk_traceoff,
                               xbrk_traceon,
                               xbrk_wrap_traceoff,

                              // outputs:
                               itm,
                               trc_ctrl,
                               trc_on
                            )
;

  output  [ 35: 0] itm;
  output  [ 15: 0] trc_ctrl;
  output           trc_on;
  input            A_cmp_result;
  input            A_ctrl_exception;
  input            A_en;
  input            A_op_beq;
  input            A_op_bge;
  input            A_op_bgeu;
  input            A_op_blt;
  input            A_op_bltu;
  input            A_op_bne;
  input            A_op_br;
  input            A_op_bret;
  input            A_op_call;
  input            A_op_callr;
  input            A_op_eret;
  input            A_op_jmp;
  input            A_op_ret;
  input   [ 15: 0] A_pcb;
  input            A_valid;
  input   [ 31: 0] A_wr_data_filtered;
  input            clk;
  input            dbrk_traceoff;
  input            dbrk_traceon;
  input            debugack;
  input   [ 15: 0] jdo;
  input            jrst_n;
  input            reset_n;
  input            take_action_tracectrl;
  input            trc_enb;
  input            xbrk_traceoff;
  input            xbrk_traceon;
  input            xbrk_wrap_traceoff;

  reg     [ 29: 0] br_buffer /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg     [  3: 0] br_count /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire             branch_taken;
  wire    [  1: 0] branchtm;
  wire    [ 31: 0] cpu_address;
  reg     [ 31: 0] d1_A_wr_data;
  reg              d1_debugack /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D103"  */;
  wire             do_branch;
  wire             do_jump;
  wire             is_branch;
  wire             is_cond_branch;
  wire             is_interrupt;
  wire             is_uncond_branch;
  reg     [ 35: 0] itm /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg     [  3: 0] jmp_pending /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [ 31: 0] next_instruction;
  wire             not_in_debug_mode;
  wire    [  1: 0] syn_code;
  wire    [  6: 0] syn_interval;
  wire             syn_pending;
  reg     [  6: 0] syn_timer /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [  6: 0] syn_timer_next;
  wire             synced;
  wire             trace_signals_enable;
  reg              trc_clear /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  wire    [ 15: 0] trc_ctrl;
  reg     [ 10: 0] trc_ctrl_reg /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  wire             trc_on;
  wire             trc_x;
  assign is_cond_branch = A_op_bge  | A_op_blt | A_op_bne | A_op_bgeu | 
    A_op_bltu | A_op_beq;

  assign is_uncond_branch = A_op_br | A_op_call;
  assign is_branch = is_cond_branch | is_uncond_branch;
  assign branch_taken = A_cmp_result;
  assign do_branch = (is_uncond_branch) | 
    (is_cond_branch & branch_taken);

  assign do_jump = A_op_jmp | A_op_callr | A_op_ret | A_op_eret |
    A_op_bret;

  assign is_interrupt = A_ctrl_exception;
  assign cpu_address = A_pcb;
  assign next_instruction = d1_A_wr_data;
  assign not_in_debug_mode = ~d1_debugack;
  assign trace_signals_enable = A_valid & A_en;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_debugack <= 0;
      else if (trace_signals_enable)
          d1_debugack <= debugack;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_A_wr_data <= 0;
      else if (trace_signals_enable)
          d1_A_wr_data <= A_wr_data_filtered;
    end


  assign syn_code = trc_ctrl[3 : 2];
  assign syn_interval = { syn_code[1] & syn_code[0], 1'b0, syn_code[1] & ~syn_code[0], 1'b0, ~syn_code[1] & syn_code[0], 2'b00 };
  assign syn_pending = ~|syn_timer;
  assign syn_timer_next = syn_pending ? syn_timer : (syn_timer - 1);
  assign trc_x = trc_on & trc_ctrl[4];
  assign synced = (jmp_pending == 4'b1010) ? 1'b0 : 1'b1;
  assign branchtm = {is_cond_branch, do_branch};
  always @(posedge clk)
    begin
      trc_clear <= ~trc_enb & 
            take_action_tracectrl & jdo[4];

    end


  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          itm <= 0;
          br_buffer <= 0;
          br_count <= 0;
          syn_timer <= 0;
          jmp_pending <= 0;
        end
      else if (trc_clear || (!1 && !0))
        begin
          itm <= 0;
          br_buffer <= 0;
          br_count <= 0;
          syn_timer <= 0;
          jmp_pending <= 0;
        end
      else if (trace_signals_enable)
        begin
          if (~trc_x)
              jmp_pending <= 4'b1010;
          else if (is_interrupt)
              jmp_pending <= 4'b0010;
          else if (do_jump)
              jmp_pending <= 4'b1001;
          else if (do_branch & syn_pending)
              jmp_pending <= 4'b1000;
          else 
            jmp_pending <= 4'b0000;
          if ((   ~trc_x | do_jump | is_interrupt | 
                                  (do_branch & syn_pending))
                              & (|br_count))
            begin
              itm <= {4'b0001, br_buffer, 2'b00};
              br_buffer <= 0;
              br_count <= 0;
              syn_timer <= syn_timer_next;
            end
          else 
            begin
              if (trc_x & (is_branch & ~(&br_count)) & ~(do_branch & syn_pending))
                begin
                  br_buffer <= {branchtm, br_buffer[29 : 2]};
                  br_count <= br_count + 1;
                end
              if (trc_x & synced & (jmp_pending == 4'b0010))
                  itm <= {4'b0010, 
                                    next_instruction[31 : 0]};

              else if (trc_x & |jmp_pending)
                begin
                  itm <= {jmp_pending, cpu_address};
                  syn_timer <= syn_interval;
                end
              else if (trc_x & synced & is_branch)
                begin
                  if (&br_count)
                    begin
                      itm <= {4'b0001, branchtm, br_buffer};
                      br_buffer <= 0;
                      br_count <= 0;
                      syn_timer <= syn_timer_next;
                    end
                  else 
                    itm <= 0;
                end
              else 
                itm <= 0;
            end
        end
      else 
        itm <= 0;
    end


  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          trc_ctrl_reg[0] <= 0;
          trc_ctrl_reg[1] <= 0;
          trc_ctrl_reg[3 : 2] <= 0;
          trc_ctrl_reg[4] <= 0;
          trc_ctrl_reg[7 : 5] <= 0;
          trc_ctrl_reg[8] <= 0;
          trc_ctrl_reg[9] <= 0;
          trc_ctrl_reg[10] <= 0;
        end
      else if (take_action_tracectrl)
        begin
          trc_ctrl_reg[0] <= jdo[5];
          trc_ctrl_reg[1] <= jdo[6];
          trc_ctrl_reg[3 : 2] <= jdo[8 : 7];
          trc_ctrl_reg[4] <= jdo[9];
          trc_ctrl_reg[9] <= jdo[14];
          trc_ctrl_reg[10] <= jdo[2];
          if (1)
              trc_ctrl_reg[7 : 5] <= jdo[12 : 10];
          if (1 & 0)
              trc_ctrl_reg[8] <= jdo[13];
        end
      else if (xbrk_wrap_traceoff)
        begin
          trc_ctrl_reg[1] <= 0;
          trc_ctrl_reg[0] <= 0;
        end
      else if (dbrk_traceoff | xbrk_traceoff)
          trc_ctrl_reg[1] <= 0;
      else if (trc_ctrl_reg[0] & 
                                  (dbrk_traceon | xbrk_traceon))
          trc_ctrl_reg[1] <= 1;
    end


  assign trc_ctrl = (1 || 0) ?    {6'b000000, trc_ctrl_reg}   : 0;
  assign trc_on = trc_ctrl[1] & 
    (trc_ctrl[9] | not_in_debug_mode);


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_td_mode (
                               // inputs:
                                ctrl,

                               // outputs:
                                td_mode
                             )
;

  output  [  3: 0] td_mode;
  input   [  8: 0] ctrl;

  wire    [  2: 0] ctrl_bits_for_mux;
  reg     [  3: 0] td_mode;
  assign ctrl_bits_for_mux = ctrl[7 : 5];
  always @(ctrl_bits_for_mux)
    begin
      case (ctrl_bits_for_mux)
      
          3'b000: begin
              td_mode <= 4'b0000;
          end // 3'b000 
      
          3'b001: begin
              td_mode <= 4'b1000;
          end // 3'b001 
      
          3'b010: begin
              td_mode <= 4'b0100;
          end // 3'b010 
      
          3'b011: begin
              td_mode <= 4'b1100;
          end // 3'b011 
      
          3'b100: begin
              td_mode <= 4'b0010;
          end // 3'b100 
      
          3'b101: begin
              td_mode <= 4'b1010;
          end // 3'b101 
      
          3'b110: begin
              td_mode <= 4'b0101;
          end // 3'b110 
      
          3'b111: begin
              td_mode <= 4'b1111;
          end // 3'b111 
      
      endcase // ctrl_bits_for_mux
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_dtrace (
                              // inputs:
                               clk,
                               cpu_d_address,
                               cpu_d_read,
                               cpu_d_readdata,
                               cpu_d_wait,
                               cpu_d_write,
                               cpu_d_writedata,
                               jrst_n,
                               trc_ctrl,

                              // outputs:
                               atm,
                               dtm
                            )
;

  output  [ 35: 0] atm;
  output  [ 35: 0] dtm;
  input            clk;
  input   [ 15: 0] cpu_d_address;
  input            cpu_d_read;
  input   [ 31: 0] cpu_d_readdata;
  input            cpu_d_wait;
  input            cpu_d_write;
  input   [ 31: 0] cpu_d_writedata;
  input            jrst_n;
  input   [ 15: 0] trc_ctrl;

  reg     [ 35: 0] atm /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [ 31: 0] cpu_d_address_0_padded;
  wire    [ 31: 0] cpu_d_readdata_0_padded;
  wire    [ 31: 0] cpu_d_writedata_0_padded;
  reg     [ 35: 0] dtm /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [  3: 0] td_mode_trc_ctrl;
  wire             trc_la;
  wire             trc_ld;
  wire             trc_sa;
  wire             trc_sd;
  assign cpu_d_writedata_0_padded = cpu_d_writedata | 32'b0;
  assign cpu_d_readdata_0_padded = cpu_d_readdata | 32'b0;
  assign cpu_d_address_0_padded = cpu_d_address | 32'b0;
  //cpu_nios2_oci_trc_ctrl_td_mode, which is an e_instance
  cpu_nios2_oci_td_mode cpu_nios2_oci_trc_ctrl_td_mode
    (
      .ctrl    (trc_ctrl[8 : 0]),
      .td_mode (td_mode_trc_ctrl)
    );

  assign {trc_la, trc_sa, trc_ld, trc_sd} = td_mode_trc_ctrl;
  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          atm <= 0;
          dtm <= 0;
        end
      else if (1)
        begin
          if (cpu_d_write & ~cpu_d_wait & trc_sa)
              atm <= {4'b0101, cpu_d_address_0_padded};
          else if (cpu_d_read & ~cpu_d_wait & trc_la)
              atm <= {4'b0100, cpu_d_address_0_padded};
          else 
            atm <= {4'b0000, cpu_d_address_0_padded};
          if (cpu_d_write & ~cpu_d_wait & trc_sd)
              dtm <= {4'b0111, cpu_d_writedata_0_padded};
          else if (cpu_d_read & ~cpu_d_wait & trc_ld)
              dtm <= {4'b0110, cpu_d_readdata_0_padded};
          else 
            dtm <= {4'b0000, cpu_d_readdata_0_padded};
        end
      else 
        begin
          atm <= 0;
          dtm <= 0;
        end
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_compute_tm_count (
                                        // inputs:
                                         atm_valid,
                                         dtm_valid,
                                         itm_valid,

                                        // outputs:
                                         compute_tm_count
                                      )
;

  output  [  1: 0] compute_tm_count;
  input            atm_valid;
  input            dtm_valid;
  input            itm_valid;

  reg     [  1: 0] compute_tm_count;
  wire    [  2: 0] switch_for_mux;
  assign switch_for_mux = {itm_valid, atm_valid, dtm_valid};
  always @(switch_for_mux)
    begin
      case (switch_for_mux)
      
          3'b000: begin
              compute_tm_count <= 0;
          end // 3'b000 
      
          3'b001: begin
              compute_tm_count <= 1;
          end // 3'b001 
      
          3'b010: begin
              compute_tm_count <= 1;
          end // 3'b010 
      
          3'b011: begin
              compute_tm_count <= 2;
          end // 3'b011 
      
          3'b100: begin
              compute_tm_count <= 1;
          end // 3'b100 
      
          3'b101: begin
              compute_tm_count <= 2;
          end // 3'b101 
      
          3'b110: begin
              compute_tm_count <= 2;
          end // 3'b110 
      
          3'b111: begin
              compute_tm_count <= 3;
          end // 3'b111 
      
      endcase // switch_for_mux
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_fifowp_inc (
                                  // inputs:
                                   free2,
                                   free3,
                                   tm_count,

                                  // outputs:
                                   fifowp_inc
                                )
;

  output  [  3: 0] fifowp_inc;
  input            free2;
  input            free3;
  input   [  1: 0] tm_count;

  reg     [  3: 0] fifowp_inc;
  always @(free2 or free3 or tm_count)
    begin
      if (free3 & (tm_count == 3))
          fifowp_inc <= 3;
      else if (free2 & (tm_count >= 2))
          fifowp_inc <= 2;
      else if (tm_count >= 1)
          fifowp_inc <= 1;
      else 
        fifowp_inc <= 0;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_fifocount_inc (
                                     // inputs:
                                      empty,
                                      free2,
                                      free3,
                                      tm_count,

                                     // outputs:
                                      fifocount_inc
                                   )
;

  output  [  4: 0] fifocount_inc;
  input            empty;
  input            free2;
  input            free3;
  input   [  1: 0] tm_count;

  reg     [  4: 0] fifocount_inc;
  always @(empty or free2 or free3 or tm_count)
    begin
      if (empty)
          fifocount_inc <= tm_count[1 : 0];
      else if (free3 & (tm_count == 3))
          fifocount_inc <= 2;
      else if (free2 & (tm_count >= 2))
          fifocount_inc <= 1;
      else if (tm_count >= 1)
          fifocount_inc <= 0;
      else 
        fifocount_inc <= {5{1'b1}};
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_fifo (
                            // inputs:
                             atm,
                             clk,
                             dbrk_traceme,
                             dbrk_traceoff,
                             dbrk_traceon,
                             dtm,
                             itm,
                             jrst_n,
                             reset_n,
                             trc_on,

                            // outputs:
                             tw
                          )
;

  output  [ 35: 0] tw;
  input   [ 35: 0] atm;
  input            clk;
  input            dbrk_traceme;
  input            dbrk_traceoff;
  input            dbrk_traceon;
  input   [ 35: 0] dtm;
  input   [ 35: 0] itm;
  input            jrst_n;
  input            reset_n;
  input            trc_on;

  wire             atm_valid;
  wire    [  1: 0] compute_tm_count_tm_count;
  wire             dtm_valid;
  wire             empty;
  reg     [ 35: 0] fifo_0;
  wire             fifo_0_enable;
  wire    [ 35: 0] fifo_0_mux;
  reg     [ 35: 0] fifo_1;
  reg     [ 35: 0] fifo_10;
  wire             fifo_10_enable;
  wire    [ 35: 0] fifo_10_mux;
  reg     [ 35: 0] fifo_11;
  wire             fifo_11_enable;
  wire    [ 35: 0] fifo_11_mux;
  reg     [ 35: 0] fifo_12;
  wire             fifo_12_enable;
  wire    [ 35: 0] fifo_12_mux;
  reg     [ 35: 0] fifo_13;
  wire             fifo_13_enable;
  wire    [ 35: 0] fifo_13_mux;
  reg     [ 35: 0] fifo_14;
  wire             fifo_14_enable;
  wire    [ 35: 0] fifo_14_mux;
  reg     [ 35: 0] fifo_15;
  wire             fifo_15_enable;
  wire    [ 35: 0] fifo_15_mux;
  wire             fifo_1_enable;
  wire    [ 35: 0] fifo_1_mux;
  reg     [ 35: 0] fifo_2;
  wire             fifo_2_enable;
  wire    [ 35: 0] fifo_2_mux;
  reg     [ 35: 0] fifo_3;
  wire             fifo_3_enable;
  wire    [ 35: 0] fifo_3_mux;
  reg     [ 35: 0] fifo_4;
  wire             fifo_4_enable;
  wire    [ 35: 0] fifo_4_mux;
  reg     [ 35: 0] fifo_5;
  wire             fifo_5_enable;
  wire    [ 35: 0] fifo_5_mux;
  reg     [ 35: 0] fifo_6;
  wire             fifo_6_enable;
  wire    [ 35: 0] fifo_6_mux;
  reg     [ 35: 0] fifo_7;
  wire             fifo_7_enable;
  wire    [ 35: 0] fifo_7_mux;
  reg     [ 35: 0] fifo_8;
  wire             fifo_8_enable;
  wire    [ 35: 0] fifo_8_mux;
  reg     [ 35: 0] fifo_9;
  wire             fifo_9_enable;
  wire    [ 35: 0] fifo_9_mux;
  wire    [ 35: 0] fifo_read_mux;
  reg     [  4: 0] fifocount /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [  4: 0] fifocount_inc_fifocount;
  wire    [ 35: 0] fifohead;
  reg     [  3: 0] fiforp /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg     [  3: 0] fifowp /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [  3: 0] fifowp1;
  wire    [  3: 0] fifowp2;
  wire    [  3: 0] fifowp_inc_fifowp;
  wire             free2;
  wire             free3;
  wire             itm_valid;
  reg              ovf_pending /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [ 35: 0] ovr_pending_atm;
  wire    [ 35: 0] ovr_pending_dtm;
  wire    [  1: 0] tm_count;
  wire             tm_count_ge1;
  wire             tm_count_ge2;
  wire             tm_count_ge3;
  wire             trc_this;
  wire    [ 35: 0] tw;
  assign trc_this = trc_on | (dbrk_traceon & ~dbrk_traceoff) | dbrk_traceme;
  assign itm_valid = |itm[35 : 32];
  assign atm_valid = |atm[35 : 32] & trc_this;
  assign dtm_valid = |dtm[35 : 32] & trc_this;
  assign free2 = ~fifocount[4];
  assign free3 = ~fifocount[4] & ~&fifocount[3 : 0];
  assign empty = ~|fifocount;
  assign fifowp1 = fifowp + 1;
  assign fifowp2 = fifowp + 2;
  //cpu_nios2_oci_compute_tm_count_tm_count, which is an e_instance
  cpu_nios2_oci_compute_tm_count cpu_nios2_oci_compute_tm_count_tm_count
    (
      .atm_valid        (atm_valid),
      .compute_tm_count (compute_tm_count_tm_count),
      .dtm_valid        (dtm_valid),
      .itm_valid        (itm_valid)
    );

  assign tm_count = compute_tm_count_tm_count;
  //cpu_nios2_oci_fifowp_inc_fifowp, which is an e_instance
  cpu_nios2_oci_fifowp_inc cpu_nios2_oci_fifowp_inc_fifowp
    (
      .fifowp_inc (fifowp_inc_fifowp),
      .free2      (free2),
      .free3      (free3),
      .tm_count   (tm_count)
    );

  //cpu_nios2_oci_fifocount_inc_fifocount, which is an e_instance
  cpu_nios2_oci_fifocount_inc cpu_nios2_oci_fifocount_inc_fifocount
    (
      .empty         (empty),
      .fifocount_inc (fifocount_inc_fifocount),
      .free2         (free2),
      .free3         (free3),
      .tm_count      (tm_count)
    );

  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          fiforp <= 0;
          fifowp <= 0;
          fifocount <= 0;
          ovf_pending <= 1;
        end
      else 
        begin
          fifowp <= fifowp + fifowp_inc_fifowp;
          fifocount <= fifocount + fifocount_inc_fifocount;
          if (~empty)
              fiforp <= fiforp + 1;
          if (~trc_this || (~free2 & tm_count[1])   || (~free3 & &tm_count))
              ovf_pending <= 1;
          else if (atm_valid | dtm_valid)
              ovf_pending <= 0;
        end
    end


  assign fifohead = fifo_read_mux;
  assign tw = 0 ?  { (empty ?       4'h0       : fifohead[35 : 32]),   fifohead[31 : 0]}  : itm;
  assign fifo_0_enable = ((fifowp == 4'd0) && tm_count_ge1)  || (free2 && (fifowp1== 4'd0) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd0) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_0 <= 0;
      else if (fifo_0_enable)
          fifo_0 <= fifo_0_mux;
    end


  assign fifo_0_mux = (((fifowp == 4'd0) && itm_valid))? itm :
    (((fifowp == 4'd0) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd0) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd0) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd0) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd0) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_1_enable = ((fifowp == 4'd1) && tm_count_ge1)  || (free2 && (fifowp1== 4'd1) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd1) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_1 <= 0;
      else if (fifo_1_enable)
          fifo_1 <= fifo_1_mux;
    end


  assign fifo_1_mux = (((fifowp == 4'd1) && itm_valid))? itm :
    (((fifowp == 4'd1) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd1) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd1) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd1) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd1) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_2_enable = ((fifowp == 4'd2) && tm_count_ge1)  || (free2 && (fifowp1== 4'd2) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd2) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_2 <= 0;
      else if (fifo_2_enable)
          fifo_2 <= fifo_2_mux;
    end


  assign fifo_2_mux = (((fifowp == 4'd2) && itm_valid))? itm :
    (((fifowp == 4'd2) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd2) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd2) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd2) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd2) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_3_enable = ((fifowp == 4'd3) && tm_count_ge1)  || (free2 && (fifowp1== 4'd3) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd3) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_3 <= 0;
      else if (fifo_3_enable)
          fifo_3 <= fifo_3_mux;
    end


  assign fifo_3_mux = (((fifowp == 4'd3) && itm_valid))? itm :
    (((fifowp == 4'd3) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd3) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd3) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd3) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd3) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_4_enable = ((fifowp == 4'd4) && tm_count_ge1)  || (free2 && (fifowp1== 4'd4) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd4) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_4 <= 0;
      else if (fifo_4_enable)
          fifo_4 <= fifo_4_mux;
    end


  assign fifo_4_mux = (((fifowp == 4'd4) && itm_valid))? itm :
    (((fifowp == 4'd4) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd4) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd4) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd4) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd4) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_5_enable = ((fifowp == 4'd5) && tm_count_ge1)  || (free2 && (fifowp1== 4'd5) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd5) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_5 <= 0;
      else if (fifo_5_enable)
          fifo_5 <= fifo_5_mux;
    end


  assign fifo_5_mux = (((fifowp == 4'd5) && itm_valid))? itm :
    (((fifowp == 4'd5) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd5) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd5) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd5) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd5) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_6_enable = ((fifowp == 4'd6) && tm_count_ge1)  || (free2 && (fifowp1== 4'd6) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd6) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_6 <= 0;
      else if (fifo_6_enable)
          fifo_6 <= fifo_6_mux;
    end


  assign fifo_6_mux = (((fifowp == 4'd6) && itm_valid))? itm :
    (((fifowp == 4'd6) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd6) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd6) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd6) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd6) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_7_enable = ((fifowp == 4'd7) && tm_count_ge1)  || (free2 && (fifowp1== 4'd7) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd7) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_7 <= 0;
      else if (fifo_7_enable)
          fifo_7 <= fifo_7_mux;
    end


  assign fifo_7_mux = (((fifowp == 4'd7) && itm_valid))? itm :
    (((fifowp == 4'd7) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd7) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd7) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd7) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd7) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_8_enable = ((fifowp == 4'd8) && tm_count_ge1)  || (free2 && (fifowp1== 4'd8) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd8) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_8 <= 0;
      else if (fifo_8_enable)
          fifo_8 <= fifo_8_mux;
    end


  assign fifo_8_mux = (((fifowp == 4'd8) && itm_valid))? itm :
    (((fifowp == 4'd8) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd8) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd8) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd8) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd8) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_9_enable = ((fifowp == 4'd9) && tm_count_ge1)  || (free2 && (fifowp1== 4'd9) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd9) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_9 <= 0;
      else if (fifo_9_enable)
          fifo_9 <= fifo_9_mux;
    end


  assign fifo_9_mux = (((fifowp == 4'd9) && itm_valid))? itm :
    (((fifowp == 4'd9) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd9) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd9) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd9) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd9) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_10_enable = ((fifowp == 4'd10) && tm_count_ge1)  || (free2 && (fifowp1== 4'd10) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd10) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_10 <= 0;
      else if (fifo_10_enable)
          fifo_10 <= fifo_10_mux;
    end


  assign fifo_10_mux = (((fifowp == 4'd10) && itm_valid))? itm :
    (((fifowp == 4'd10) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd10) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd10) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd10) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd10) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_11_enable = ((fifowp == 4'd11) && tm_count_ge1)  || (free2 && (fifowp1== 4'd11) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd11) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_11 <= 0;
      else if (fifo_11_enable)
          fifo_11 <= fifo_11_mux;
    end


  assign fifo_11_mux = (((fifowp == 4'd11) && itm_valid))? itm :
    (((fifowp == 4'd11) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd11) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd11) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd11) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd11) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_12_enable = ((fifowp == 4'd12) && tm_count_ge1)  || (free2 && (fifowp1== 4'd12) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd12) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_12 <= 0;
      else if (fifo_12_enable)
          fifo_12 <= fifo_12_mux;
    end


  assign fifo_12_mux = (((fifowp == 4'd12) && itm_valid))? itm :
    (((fifowp == 4'd12) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd12) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd12) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd12) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd12) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_13_enable = ((fifowp == 4'd13) && tm_count_ge1)  || (free2 && (fifowp1== 4'd13) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd13) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_13 <= 0;
      else if (fifo_13_enable)
          fifo_13 <= fifo_13_mux;
    end


  assign fifo_13_mux = (((fifowp == 4'd13) && itm_valid))? itm :
    (((fifowp == 4'd13) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd13) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd13) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd13) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd13) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_14_enable = ((fifowp == 4'd14) && tm_count_ge1)  || (free2 && (fifowp1== 4'd14) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd14) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_14 <= 0;
      else if (fifo_14_enable)
          fifo_14 <= fifo_14_mux;
    end


  assign fifo_14_mux = (((fifowp == 4'd14) && itm_valid))? itm :
    (((fifowp == 4'd14) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd14) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd14) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd14) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd14) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_15_enable = ((fifowp == 4'd15) && tm_count_ge1)  || (free2 && (fifowp1== 4'd15) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd15) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_15 <= 0;
      else if (fifo_15_enable)
          fifo_15 <= fifo_15_mux;
    end


  assign fifo_15_mux = (((fifowp == 4'd15) && itm_valid))? itm :
    (((fifowp == 4'd15) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd15) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd15) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd15) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd15) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign tm_count_ge1 = |tm_count;
  assign tm_count_ge2 = tm_count[1];
  assign tm_count_ge3 = &tm_count;
  assign ovr_pending_atm = {ovf_pending, atm[34 : 0]};
  assign ovr_pending_dtm = {ovf_pending, dtm[34 : 0]};
  assign fifo_read_mux = (fiforp == 4'd0)? fifo_0 :
    (fiforp == 4'd1)? fifo_1 :
    (fiforp == 4'd2)? fifo_2 :
    (fiforp == 4'd3)? fifo_3 :
    (fiforp == 4'd4)? fifo_4 :
    (fiforp == 4'd5)? fifo_5 :
    (fiforp == 4'd6)? fifo_6 :
    (fiforp == 4'd7)? fifo_7 :
    (fiforp == 4'd8)? fifo_8 :
    (fiforp == 4'd9)? fifo_9 :
    (fiforp == 4'd10)? fifo_10 :
    (fiforp == 4'd11)? fifo_11 :
    (fiforp == 4'd12)? fifo_12 :
    (fiforp == 4'd13)? fifo_13 :
    (fiforp == 4'd14)? fifo_14 :
    fifo_15;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_pib (
                           // inputs:
                            clk,
                            clkx2,
                            jrst_n,
                            tw,

                           // outputs:
                            tr_clk,
                            tr_data
                         )
;

  output           tr_clk;
  output  [ 17: 0] tr_data;
  input            clk;
  input            clkx2;
  input            jrst_n;
  input   [ 35: 0] tw;

  wire             phase;
  wire             tr_clk;
  reg              tr_clk_reg /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [ 17: 0] tr_data;
  reg     [ 17: 0] tr_data_reg /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              x1 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              x2 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  assign phase = x1^x2;
  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
          x1 <= 0;
      else 
        x1 <= ~x1;
    end


  always @(posedge clkx2 or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          x2 <= 0;
          tr_clk_reg <= 0;
          tr_data_reg <= 0;
        end
      else 
        begin
          x2 <= x1;
          tr_clk_reg <= ~phase;
          tr_data_reg <= phase ?   tw[17 : 0] :   tw[35 : 18];
        end
    end


  assign tr_clk = 0 ? tr_clk_reg : 0;
  assign tr_data = 0 ? tr_data_reg : 0;

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_traceram_lpm_dram_bdp_component_module (
                                                    // inputs:
                                                     address_a,
                                                     address_b,
                                                     clock0,
                                                     clock1,
                                                     clocken0,
                                                     clocken1,
                                                     data_a,
                                                     data_b,
                                                     wren_a,
                                                     wren_b,

                                                    // outputs:
                                                     q_a,
                                                     q_b
                                                  )
;

  parameter lpm_file = "UNUSED";


  output  [ 35: 0] q_a;
  output  [ 35: 0] q_b;
  input   [  6: 0] address_a;
  input   [  6: 0] address_b;
  input            clock0;
  input            clock1;
  input            clocken0;
  input            clocken1;
  input   [ 35: 0] data_a;
  input   [ 35: 0] data_b;
  input            wren_a;
  input            wren_b;

  wire    [ 35: 0] q_a;
  wire    [ 35: 0] q_b;
  altsyncram the_altsyncram
    (
      .address_a (address_a),
      .address_b (address_b),
      .clock0 (clock0),
      .clock1 (clock1),
      .clocken0 (clocken0),
      .clocken1 (clocken1),
      .data_a (data_a),
      .data_b (data_b),
      .q_a (q_a),
      .q_b (q_b),
      .wren_a (wren_a),
      .wren_b (wren_b)
    );

  defparam the_altsyncram.address_aclr_a = "NONE",
           the_altsyncram.address_aclr_b = "NONE",
           the_altsyncram.address_reg_b = "CLOCK1",
           the_altsyncram.indata_aclr_a = "NONE",
           the_altsyncram.indata_aclr_b = "NONE",
           the_altsyncram.init_file = lpm_file,
           the_altsyncram.intended_device_family = "Stratix",
           the_altsyncram.lpm_type = "altsyncram",
           the_altsyncram.numwords_a = 128,
           the_altsyncram.numwords_b = 128,
           the_altsyncram.operation_mode = "BIDIR_DUAL_PORT",
           the_altsyncram.outdata_aclr_a = "NONE",
           the_altsyncram.outdata_aclr_b = "NONE",
           the_altsyncram.outdata_reg_a = "UNREGISTERED",
           the_altsyncram.outdata_reg_b = "UNREGISTERED",
           the_altsyncram.ram_block_type = "AUTO",
           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
           the_altsyncram.width_a = 36,
           the_altsyncram.width_b = 36,
           the_altsyncram.widthad_a = 7,
           the_altsyncram.widthad_b = 7,
           the_altsyncram.wrcontrol_aclr_a = "NONE",
           the_altsyncram.wrcontrol_aclr_b = "NONE";


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_im (
                          // inputs:
                           clk,
                           jdo,
                           jrst_n,
                           reset_n,
                           take_action_tracectrl,
                           take_action_tracemem_a,
                           take_action_tracemem_b,
                           take_no_action_tracemem_a,
                           trc_ctrl,
                           tw,

                          // outputs:
                           tracemem_on,
                           tracemem_trcdata,
                           tracemem_tw,
                           trc_enb,
                           trc_im_addr,
                           trc_wrap,
                           xbrk_wrap_traceoff
                        )
;

  output           tracemem_on;
  output  [ 35: 0] tracemem_trcdata;
  output           tracemem_tw;
  output           trc_enb;
  output  [  6: 0] trc_im_addr;
  output           trc_wrap;
  output           xbrk_wrap_traceoff;
  input            clk;
  input   [ 37: 0] jdo;
  input            jrst_n;
  input            reset_n;
  input            take_action_tracectrl;
  input            take_action_tracemem_a;
  input            take_action_tracemem_b;
  input            take_no_action_tracemem_a;
  input   [ 15: 0] trc_ctrl;
  input   [ 35: 0] tw;

  wire             tracemem_on;
  wire    [ 35: 0] tracemem_trcdata;
  wire             tracemem_tw;
  wire             trc_enb;
  reg     [  6: 0] trc_im_addr /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  wire    [ 35: 0] trc_im_data;
  reg     [ 16: 0] trc_jtag_addr /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  wire    [ 35: 0] trc_jtag_data;
  wire             trc_on_chip;
  reg              trc_wrap /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  wire             tw_valid;
  wire    [ 35: 0] unused_bdpram_port_q_a;
  wire             xbrk_wrap_traceoff;
  assign trc_im_data = tw;
  assign trc_enb = trc_ctrl[0];
  assign trc_on_chip = ~trc_ctrl[8];
  assign tw_valid = |trc_im_data[35 : 32];
  assign xbrk_wrap_traceoff = trc_ctrl[10] & trc_wrap;
  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          trc_im_addr <= 0;
          trc_wrap <= 0;
        end
      else if (!1)
        begin
          trc_im_addr <= 0;
          trc_wrap <= 0;
        end
      else if (take_action_tracectrl && 
                        (jdo[4] | jdo[3]))
        begin
          if (jdo[4])
              trc_im_addr <= 0;
          if (jdo[3])
              trc_wrap <= 0;
        end
      else if (trc_enb & trc_on_chip & tw_valid)
        begin
          trc_im_addr <= trc_im_addr+1;
          if (&trc_im_addr)
              trc_wrap <= 1;
        end
    end


//cpu_traceram_lpm_dram_bdp_component, which is an e_bdpram
cpu_traceram_lpm_dram_bdp_component_module cpu_traceram_lpm_dram_bdp_component
  (
    .address_a (trc_im_addr),
    .address_b (trc_jtag_addr),
    .clock0    (clk),
    .clock1    (clk),
    .clocken0  (1'b1),
    .clocken1  (1'b1),
    .data_a    (trc_im_data),
    .data_b    (jdo[36 : 1]),
    .q_a       (unused_bdpram_port_q_a),
    .q_b       (trc_jtag_data),
    .wren_a    (tw_valid & trc_enb),
    .wren_b    (take_action_tracemem_b)
  );

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          trc_jtag_addr <= 0;
      else if (take_action_tracemem_a ||
                  take_no_action_tracemem_a || 
                  take_action_tracemem_b)
          trc_jtag_addr <= take_action_tracemem_a ? 
                    jdo[35 : 19] : 
                    trc_jtag_addr + 1;

    end


  assign tracemem_trcdata = (1) ? 
    trc_jtag_data : 0;

  assign tracemem_tw = trc_wrap;
  assign tracemem_on = trc_enb;

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_performance_monitors 
;



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci (
                       // inputs:
                        A_cmp_result,
                        A_ctrl_exception,
                        A_ctrl_ld,
                        A_ctrl_st,
                        A_en,
                        A_mem_baddr,
                        A_op_beq,
                        A_op_bge,
                        A_op_bgeu,
                        A_op_blt,
                        A_op_bltu,
                        A_op_bne,
                        A_op_br,
                        A_op_bret,
                        A_op_call,
                        A_op_callr,
                        A_op_eret,
                        A_op_jmp,
                        A_op_ret,
                        A_pcb,
                        A_st_data,
                        A_valid,
                        A_wr_data_filtered,
                        D_en,
                        E_en,
                        E_valid,
                        F_pc,
                        M_en,
                        address,
                        begintransfer,
                        byteenable,
                        chipselect,
                        clk,
                        debugaccess,
                        hbreak_enabled,
                        reset,
                        reset_n,
                        write,
                        writedata,

                       // outputs:
                        jtag_debug_module_debugaccess_to_roms,
                        oci_hbreak_req,
                        oci_ienable,
                        oci_single_step_mode,
                        readdata,
                        resetrequest
                     )
;

  output           jtag_debug_module_debugaccess_to_roms;
  output           oci_hbreak_req;
  output  [ 31: 0] oci_ienable;
  output           oci_single_step_mode;
  output  [ 31: 0] readdata;
  output           resetrequest;
  input            A_cmp_result;
  input            A_ctrl_exception;
  input            A_ctrl_ld;
  input            A_ctrl_st;
  input            A_en;
  input   [ 15: 0] A_mem_baddr;
  input            A_op_beq;
  input            A_op_bge;
  input            A_op_bgeu;
  input            A_op_blt;
  input            A_op_bltu;
  input            A_op_bne;
  input            A_op_br;
  input            A_op_bret;
  input            A_op_call;
  input            A_op_callr;
  input            A_op_eret;
  input            A_op_jmp;
  input            A_op_ret;
  input   [ 15: 0] A_pcb;
  input   [ 31: 0] A_st_data;
  input            A_valid;
  input   [ 31: 0] A_wr_data_filtered;
  input            D_en;
  input            E_en;
  input            E_valid;
  input   [ 13: 0] F_pc;
  input            M_en;
  input   [  8: 0] address;
  input            begintransfer;
  input   [  3: 0] byteenable;
  input            chipselect;
  input            clk;
  input            debugaccess;
  input            hbreak_enabled;
  input            reset;
  input            reset_n;
  input            write;
  input   [ 31: 0] writedata;

  wire    [ 31: 0] MonDReg;
  wire    [ 35: 0] atm;
  wire    [ 31: 0] break_readreg;
  wire             clkx2;
  wire    [ 15: 0] cpu_d_address;
  wire             cpu_d_read;
  wire    [ 31: 0] cpu_d_readdata;
  wire             cpu_d_wait;
  wire             cpu_d_write;
  wire    [ 31: 0] cpu_d_writedata;
  wire    [ 77: 0] dbrk0;
  wire    [ 77: 0] dbrk1;
  wire    [ 77: 0] dbrk2;
  wire    [ 77: 0] dbrk3;
  wire             dbrk_break;
  wire             dbrk_goto0;
  wire             dbrk_goto1;
  wire             dbrk_hit0;
  wire             dbrk_hit0_latch;
  wire             dbrk_hit1;
  wire             dbrk_hit1_latch;
  wire             dbrk_hit2;
  wire             dbrk_hit2_latch;
  wire             dbrk_hit3;
  wire             dbrk_hit3_latch;
  wire             dbrk_traceme;
  wire             dbrk_traceoff;
  wire             dbrk_traceon;
  wire             dbrk_trigout;
  wire             debugack;
  wire             debugreq;
  wire    [ 35: 0] dtm;
  wire             dummy_sink;
  wire    [ 35: 0] itm;
  wire    [ 37: 0] jdo;
  wire             jrst_n;
  wire             jtag_debug_module_debugaccess_to_roms;
  wire             monitor_error;
  wire             monitor_go;
  wire             monitor_ready;
  wire             oci_hbreak_req;
  wire    [ 31: 0] oci_ienable;
  wire    [ 31: 0] oci_ram_readdata;
  wire    [ 31: 0] oci_reg_readdata;
  wire             oci_single_step_mode;
  wire             ocireg_ers;
  wire             ocireg_mrs;
  wire    [ 31: 0] readdata;
  wire             resetlatch;
  wire             resetrequest;
  wire             st_ready_test_idle;
  wire             take_action_break_a;
  wire             take_action_break_b;
  wire             take_action_break_c;
  wire             take_action_ocimem_a;
  wire             take_action_ocimem_b;
  wire             take_action_ocireg;
  wire             take_action_tracectrl;
  wire             take_action_tracemem_a;
  wire             take_action_tracemem_b;
  wire             take_no_action_break_a;
  wire             take_no_action_break_b;
  wire             take_no_action_break_c;
  wire             take_no_action_ocimem_a;
  wire             take_no_action_tracemem_a;
  wire             tr_clk;
  wire    [ 17: 0] tr_data;
  wire             tracemem_on;
  wire    [ 35: 0] tracemem_trcdata;
  wire             tracemem_tw;
  wire    [ 15: 0] trc_ctrl;
  wire             trc_enb;
  wire    [  6: 0] trc_im_addr;
  wire             trc_on;
  wire             trc_wrap;
  wire             trigbrktype;
  wire             trigger_state_0;
  wire             trigger_state_1;
  wire             trigout;
  wire    [ 35: 0] tw;
  wire    [ 15: 0] xbrk0;
  wire    [ 15: 0] xbrk1;
  wire    [ 15: 0] xbrk2;
  wire    [ 15: 0] xbrk3;
  wire             xbrk_break;
  wire    [  7: 0] xbrk_ctrl0;
  wire    [  7: 0] xbrk_ctrl1;
  wire    [  7: 0] xbrk_ctrl2;
  wire    [  7: 0] xbrk_ctrl3;
  wire             xbrk_goto0;
  wire             xbrk_goto1;
  wire             xbrk_traceoff;
  wire             xbrk_traceon;
  wire             xbrk_trigout;
  wire             xbrk_wrap_traceoff;
  cpu_nios2_oci_debug the_cpu_nios2_oci_debug
    (
      .clk                  (clk),
      .dbrk_break           (dbrk_break),
      .debugack             (debugack),
      .debugreq             (debugreq),
      .hbreak_enabled       (hbreak_enabled),
      .jdo                  (jdo),
      .jrst_n               (jrst_n),
      .monitor_error        (monitor_error),
      .monitor_go           (monitor_go),
      .monitor_ready        (monitor_ready),
      .oci_hbreak_req       (oci_hbreak_req),
      .ocireg_ers           (ocireg_ers),
      .ocireg_mrs           (ocireg_mrs),
      .reset                (reset),
      .resetlatch           (resetlatch),
      .resetrequest         (resetrequest),
      .st_ready_test_idle   (st_ready_test_idle),
      .take_action_ocimem_a (take_action_ocimem_a),
      .take_action_ocireg   (take_action_ocireg),
      .xbrk_break           (xbrk_break)
    );

  cpu_nios2_ocimem the_cpu_nios2_ocimem
    (
      .MonDReg                 (MonDReg),
      .address                 (address),
      .begintransfer           (begintransfer),
      .byteenable              (byteenable),
      .chipselect              (chipselect),
      .clk                     (clk),
      .debugaccess             (debugaccess),
      .jdo                     (jdo),
      .jrst_n                  (jrst_n),
      .oci_ram_readdata        (oci_ram_readdata),
      .resetrequest            (resetrequest),
      .take_action_ocimem_a    (take_action_ocimem_a),
      .take_action_ocimem_b    (take_action_ocimem_b),
      .take_no_action_ocimem_a (take_no_action_ocimem_a),
      .write                   (write),
      .writedata               (writedata)
    );

  cpu_nios2_avalon_reg the_cpu_nios2_avalon_reg
    (
      .address              (address),
      .chipselect           (chipselect),
      .clk                  (clk),
      .debugaccess          (debugaccess),
      .monitor_error        (monitor_error),
      .monitor_go           (monitor_go),
      .monitor_ready        (monitor_ready),
      .oci_ienable          (oci_ienable),
      .oci_reg_readdata     (oci_reg_readdata),
      .oci_single_step_mode (oci_single_step_mode),
      .ocireg_ers           (ocireg_ers),
      .ocireg_mrs           (ocireg_mrs),
      .reset_n              (reset_n),
      .take_action_ocireg   (take_action_ocireg),
      .write                (write),
      .writedata            (writedata)
    );

  cpu_nios2_oci_break the_cpu_nios2_oci_break
    (
      .break_readreg          (break_readreg),
      .clk                    (clk),
      .dbrk0                  (dbrk0),
      .dbrk1                  (dbrk1),
      .dbrk2                  (dbrk2),
      .dbrk3                  (dbrk3),
      .dbrk_break             (dbrk_break),
      .dbrk_goto0             (dbrk_goto0),
      .dbrk_goto1             (dbrk_goto1),
      .dbrk_hit0              (dbrk_hit0),
      .dbrk_hit0_latch        (dbrk_hit0_latch),
      .dbrk_hit1              (dbrk_hit1),
      .dbrk_hit1_latch        (dbrk_hit1_latch),
      .dbrk_hit2              (dbrk_hit2),
      .dbrk_hit2_latch        (dbrk_hit2_latch),
      .dbrk_hit3              (dbrk_hit3),
      .dbrk_hit3_latch        (dbrk_hit3_latch),
      .jdo                    (jdo),
      .jrst_n                 (jrst_n),
      .reset_n                (reset_n),
      .take_action_break_a    (take_action_break_a),
      .take_action_break_b    (take_action_break_b),
      .take_action_break_c    (take_action_break_c),
      .take_no_action_break_a (take_no_action_break_a),
      .take_no_action_break_b (take_no_action_break_b),
      .take_no_action_break_c (take_no_action_break_c),
      .trigbrktype            (trigbrktype),
      .trigger_state_0        (trigger_state_0),
      .trigger_state_1        (trigger_state_1),
      .xbrk0                  (xbrk0),
      .xbrk1                  (xbrk1),
      .xbrk2                  (xbrk2),
      .xbrk3                  (xbrk3),
      .xbrk_ctrl0             (xbrk_ctrl0),
      .xbrk_ctrl1             (xbrk_ctrl1),
      .xbrk_ctrl2             (xbrk_ctrl2),
      .xbrk_ctrl3             (xbrk_ctrl3),
      .xbrk_goto0             (xbrk_goto0),
      .xbrk_goto1             (xbrk_goto1)
    );

  cpu_nios2_oci_xbrk the_cpu_nios2_oci_xbrk
    (
      .D_en            (D_en),
      .E_en            (E_en),
      .E_valid         (E_valid),
      .F_pc            (F_pc),
      .M_en            (M_en),
      .clk             (clk),
      .reset_n         (reset_n),
      .trigger_state_0 (trigger_state_0),
      .trigger_state_1 (trigger_state_1),
      .xbrk0           (xbrk0),
      .xbrk1           (xbrk1),
      .xbrk2           (xbrk2),
      .xbrk3           (xbrk3),
      .xbrk_break      (xbrk_break),
      .xbrk_ctrl0      (xbrk_ctrl0),
      .xbrk_ctrl1      (xbrk_ctrl1),
      .xbrk_ctrl2      (xbrk_ctrl2),
      .xbrk_ctrl3      (xbrk_ctrl3),
      .xbrk_goto0      (xbrk_goto0),
      .xbrk_goto1      (xbrk_goto1),
      .xbrk_traceoff   (xbrk_traceoff),
      .xbrk_traceon    (xbrk_traceon),
      .xbrk_trigout    (xbrk_trigout)
    );

  cpu_nios2_oci_dbrk the_cpu_nios2_oci_dbrk
    (
      .A_ctrl_ld          (A_ctrl_ld),
      .A_ctrl_st          (A_ctrl_st),
      .A_en               (A_en),
      .A_mem_baddr        (A_mem_baddr),
      .A_st_data          (A_st_data),
      .A_valid            (A_valid),
      .A_wr_data_filtered (A_wr_data_filtered),
      .clk                (clk),
      .cpu_d_address      (cpu_d_address),
      .cpu_d_read         (cpu_d_read),
      .cpu_d_readdata     (cpu_d_readdata),
      .cpu_d_wait         (cpu_d_wait),
      .cpu_d_write        (cpu_d_write),
      .cpu_d_writedata    (cpu_d_writedata),
      .dbrk0              (dbrk0),
      .dbrk1              (dbrk1),
      .dbrk2              (dbrk2),
      .dbrk3              (dbrk3),
      .dbrk_break         (dbrk_break),
      .dbrk_goto0         (dbrk_goto0),
      .dbrk_goto1         (dbrk_goto1),
      .dbrk_hit0          (dbrk_hit0),
      .dbrk_hit1          (dbrk_hit1),
      .dbrk_hit2          (dbrk_hit2),
      .dbrk_hit3          (dbrk_hit3),
      .dbrk_traceme       (dbrk_traceme),
      .dbrk_traceoff      (dbrk_traceoff),
      .dbrk_traceon       (dbrk_traceon),
      .dbrk_trigout       (dbrk_trigout),
      .debugack           (debugack),
      .reset_n            (reset_n),
      .trigger_state_0    (trigger_state_0),
      .trigger_state_1    (trigger_state_1)
    );

  cpu_nios2_oci_itrace the_cpu_nios2_oci_itrace
    (
      .A_cmp_result          (A_cmp_result),
      .A_ctrl_exception      (A_ctrl_exception),
      .A_en                  (A_en),
      .A_op_beq              (A_op_beq),
      .A_op_bge              (A_op_bge),
      .A_op_bgeu             (A_op_bgeu),
      .A_op_blt              (A_op_blt),
      .A_op_bltu             (A_op_bltu),
      .A_op_bne              (A_op_bne),
      .A_op_br               (A_op_br),
      .A_op_bret             (A_op_bret),
      .A_op_call             (A_op_call),
      .A_op_callr            (A_op_callr),
      .A_op_eret             (A_op_eret),
      .A_op_jmp              (A_op_jmp),
      .A_op_ret              (A_op_ret),
      .A_pcb                 (A_pcb),
      .A_valid               (A_valid),
      .A_wr_data_filtered    (A_wr_data_filtered),
      .clk                   (clk),
      .dbrk_traceoff         (dbrk_traceoff),
      .dbrk_traceon          (dbrk_traceon),
      .debugack              (debugack),
      .itm                   (itm),
      .jdo                   (jdo),
      .jrst_n                (jrst_n),
      .reset_n               (reset_n),
      .take_action_tracectrl (take_action_tracectrl),
      .trc_ctrl              (trc_ctrl),
      .trc_enb               (trc_enb),
      .trc_on                (trc_on),
      .xbrk_traceoff         (xbrk_traceoff),
      .xbrk_traceon          (xbrk_traceon),
      .xbrk_wrap_traceoff    (xbrk_wrap_traceoff)
    );

  cpu_nios2_oci_dtrace the_cpu_nios2_oci_dtrace
    (
      .atm             (atm),
      .clk             (clk),
      .cpu_d_address   (cpu_d_address),
      .cpu_d_read      (cpu_d_read),
      .cpu_d_readdata  (cpu_d_readdata),
      .cpu_d_wait      (cpu_d_wait),
      .cpu_d_write     (cpu_d_write),
      .cpu_d_writedata (cpu_d_writedata),
      .dtm             (dtm),
      .jrst_n          (jrst_n),
      .trc_ctrl        (trc_ctrl)
    );

  cpu_nios2_oci_fifo the_cpu_nios2_oci_fifo
    (
      .atm           (atm),
      .clk           (clk),
      .dbrk_traceme  (dbrk_traceme),
      .dbrk_traceoff (dbrk_traceoff),
      .dbrk_traceon  (dbrk_traceon),
      .dtm           (dtm),
      .itm           (itm),
      .jrst_n        (jrst_n),
      .reset_n       (reset_n),
      .trc_on        (trc_on),
      .tw            (tw)
    );

  cpu_nios2_oci_pib the_cpu_nios2_oci_pib
    (
      .clk     (clk),
      .clkx2   (clkx2),
      .jrst_n  (jrst_n),
      .tr_clk  (tr_clk),
      .tr_data (tr_data),
      .tw      (tw)
    );

  cpu_nios2_oci_im the_cpu_nios2_oci_im
    (
      .clk                       (clk),
      .jdo                       (jdo),
      .jrst_n                    (jrst_n),
      .reset_n                   (reset_n),
      .take_action_tracectrl     (take_action_tracectrl),
      .take_action_tracemem_a    (take_action_tracemem_a),
      .take_action_tracemem_b    (take_action_tracemem_b),
      .take_no_action_tracemem_a (take_no_action_tracemem_a),
      .tracemem_on               (tracemem_on),
      .tracemem_trcdata          (tracemem_trcdata),
      .tracemem_tw               (tracemem_tw),
      .trc_ctrl                  (trc_ctrl),
      .trc_enb                   (trc_enb),
      .trc_im_addr               (trc_im_addr),
      .trc_wrap                  (trc_wrap),
      .tw                        (tw),
      .xbrk_wrap_traceoff        (xbrk_wrap_traceoff)
    );

  assign trigout = dbrk_trigout | xbrk_trigout;
  assign readdata = address[8] ? oci_reg_readdata : oci_ram_readdata;
  assign jtag_debug_module_debugaccess_to_roms = debugack;
  cpu_jtag_debug_module_wrapper the_cpu_jtag_debug_module_wrapper
    (
      .MonDReg                   (MonDReg),
      .break_readreg             (break_readreg),
      .clk                       (clk),
      .dbrk_hit0_latch           (dbrk_hit0_latch),
      .dbrk_hit1_latch           (dbrk_hit1_latch),
      .dbrk_hit2_latch           (dbrk_hit2_latch),
      .dbrk_hit3_latch           (dbrk_hit3_latch),
      .debugack                  (debugack),
      .jdo                       (jdo),
      .jrst_n                    (jrst_n),
      .monitor_error             (monitor_error),
      .monitor_ready             (monitor_ready),
      .reset_n                   (reset_n),
      .resetlatch                (resetlatch),
      .st_ready_test_idle        (st_ready_test_idle),
      .take_action_break_a       (take_action_break_a),
      .take_action_break_b       (take_action_break_b),
      .take_action_break_c       (take_action_break_c),
      .take_action_ocimem_a      (take_action_ocimem_a),
      .take_action_ocimem_b      (take_action_ocimem_b),
      .take_action_tracectrl     (take_action_tracectrl),
      .take_action_tracemem_a    (take_action_tracemem_a),
      .take_action_tracemem_b    (take_action_tracemem_b),
      .take_no_action_break_a    (take_no_action_break_a),
      .take_no_action_break_b    (take_no_action_break_b),
      .take_no_action_break_c    (take_no_action_break_c),
      .take_no_action_ocimem_a   (take_no_action_ocimem_a),
      .take_no_action_tracemem_a (take_no_action_tracemem_a),
      .tracemem_on               (tracemem_on),
      .tracemem_trcdata          (tracemem_trcdata),
      .tracemem_tw               (tracemem_tw),
      .trc_im_addr               (trc_im_addr),
      .trc_on                    (trc_on),
      .trc_wrap                  (trc_wrap),
      .trigbrktype               (trigbrktype),
      .trigger_state_1           (trigger_state_1)
    );

  //dummy sink, which is an e_mux
  assign dummy_sink = tr_clk |
    tr_data |
    trigout |
    debugack;

  assign debugreq = 0;
  assign clkx2 = 0;

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu (
             // inputs:
              clk,
              d_irq,
              d_readdata,
              d_waitrequest,
              i_readdata,
              i_readdatavalid,
              i_waitrequest,
              jtag_debug_module_address,
              jtag_debug_module_begintransfer,
              jtag_debug_module_byteenable,
              jtag_debug_module_clk,
              jtag_debug_module_debugaccess,
              jtag_debug_module_reset,
              jtag_debug_module_select,
              jtag_debug_module_write,
              jtag_debug_module_writedata,
              reset_n,

             // outputs:
              d_address,
              d_byteenable,
              d_read,
              d_write,
              d_writedata,
              i_address,
              i_read,
              jtag_debug_module_debugaccess_to_roms,
              jtag_debug_module_readdata,
              jtag_debug_module_resetrequest
           )
;

  output  [ 15: 0] d_address;
  output  [  3: 0] d_byteenable;
  output           d_read;
  output           d_write;
  output  [ 31: 0] d_writedata;
  output  [ 15: 0] i_address;
  output           i_read;
  output           jtag_debug_module_debugaccess_to_roms;
  output  [ 31: 0] jtag_debug_module_readdata;
  output           jtag_debug_module_resetrequest;
  input            clk;
  input   [ 31: 0] d_irq;
  input   [ 31: 0] d_readdata;
  input            d_waitrequest;
  input   [ 31: 0] i_readdata;
  input            i_readdatavalid;
  input            i_waitrequest;
  input   [  8: 0] jtag_debug_module_address;
  input            jtag_debug_module_begintransfer;
  input   [  3: 0] jtag_debug_module_byteenable;
  input            jtag_debug_module_clk;
  input            jtag_debug_module_debugaccess;
  input            jtag_debug_module_reset;
  input            jtag_debug_module_select;
  input            jtag_debug_module_write;
  input   [ 31: 0] jtag_debug_module_writedata;
  input            reset_n;

  reg     [ 15: 0] A_br_taken_baddr;
  reg              A_bstatus_reg;
  wire             A_bstatus_reg_inst_nxt;
  wire             A_bstatus_reg_nxt;
  reg              A_cmp_result;
  reg              A_ctrl_break;
  wire             A_ctrl_break_nxt;
  wire             A_ctrl_crst;
  wire             A_ctrl_crst_nxt;
  wire             A_ctrl_custom_multi;
  wire             A_ctrl_custom_multi_nxt;
  reg              A_ctrl_dcache_management;
  wire             A_ctrl_dcache_management_nxt;
  reg              A_ctrl_div;
  wire             A_ctrl_div_nxt;
  reg              A_ctrl_exception;
  wire             A_ctrl_exception_nxt;
  reg              A_ctrl_flush_pipe_always;
  wire             A_ctrl_flush_pipe_always_nxt;
  reg              A_ctrl_flushd_flushda;
  wire             A_ctrl_flushd_flushda_nxt;
  wire             A_ctrl_illegal_inst;
  wire             A_ctrl_illegal_inst_nxt;
  reg              A_ctrl_initd;
  reg              A_ctrl_initd_flushd;
  reg              A_ctrl_initd_flushd_flushda;
  wire             A_ctrl_initd_flushd_flushda_nxt;
  wire             A_ctrl_initd_flushd_nxt;
  wire             A_ctrl_initd_nxt;
  reg              A_ctrl_invalidate_i;
  wire             A_ctrl_invalidate_i_nxt;
  reg              A_ctrl_jmp_indirect;
  wire             A_ctrl_jmp_indirect_nxt;
  reg              A_ctrl_ld;
  reg              A_ctrl_ld16;
  wire             A_ctrl_ld16_nxt;
  reg              A_ctrl_ld32;
  wire             A_ctrl_ld32_nxt;
  reg              A_ctrl_ld8;
  reg              A_ctrl_ld8_ld16;
  wire             A_ctrl_ld8_ld16_nxt;
  wire             A_ctrl_ld8_nxt;
  reg              A_ctrl_ld_bypass;
  wire             A_ctrl_ld_bypass_nxt;
  reg              A_ctrl_ld_dcache_management;
  wire             A_ctrl_ld_dcache_management_nxt;
  reg              A_ctrl_ld_non_bypass;
  wire             A_ctrl_ld_non_bypass_nxt;
  reg              A_ctrl_ld_non_io;
  wire             A_ctrl_ld_non_io_nxt;
  wire             A_ctrl_ld_nxt;
  reg              A_ctrl_ld_signed;
  wire             A_ctrl_ld_signed_nxt;
  reg              A_ctrl_ld_st;
  reg              A_ctrl_ld_st_bypass;
  wire             A_ctrl_ld_st_bypass_nxt;
  reg              A_ctrl_ld_st_non_bypass;
  reg              A_ctrl_ld_st_non_bypass_non_st32;
  wire             A_ctrl_ld_st_non_bypass_non_st32_nxt;
  wire             A_ctrl_ld_st_non_bypass_nxt;
  wire             A_ctrl_ld_st_nxt;
  reg              A_ctrl_mem;
  reg              A_ctrl_mem_data_access;
  wire             A_ctrl_mem_data_access_nxt;
  wire             A_ctrl_mem_nxt;
  reg              A_ctrl_mul_lsw;
  wire             A_ctrl_mul_lsw_nxt;
  reg              A_ctrl_rdctl_inst;
  wire             A_ctrl_rdctl_inst_nxt;
  reg              A_ctrl_shift_rot;
  wire             A_ctrl_shift_rot_nxt;
  reg              A_ctrl_st;
  reg              A_ctrl_st_bypass;
  wire             A_ctrl_st_bypass_nxt;
  reg              A_ctrl_st_non_bypass;
  wire             A_ctrl_st_non_bypass_nxt;
  wire             A_ctrl_st_nxt;
  reg              A_ctrl_unimp_inst;
  wire             A_ctrl_unimp_inst_nxt;
  reg              A_ctrl_wrctl_inst;
  wire             A_ctrl_wrctl_inst_nxt;
  wire    [ 15: 0] A_data_ram_ld16_data;
  reg              A_data_ram_ld_align_fill_bit;
  wire    [  7: 0] A_data_ram_ld_byte0_data;
  wire    [  7: 0] A_data_ram_ld_byte1_data;
  wire    [  7: 0] A_data_ram_ld_byte2_data;
  wire    [  7: 0] A_data_ram_ld_byte3_data;
  reg              A_dc_av_rd_req;
  reg              A_dc_av_wr_req;
  wire    [  3: 0] A_dc_desired_tag;
  wire    [  3: 0] A_dc_fill_byte_en;
  wire    [  9: 0] A_dc_fill_line;
  wire    [ 31: 0] A_dc_fill_wr_data;
  wire             A_dc_fill_wr_en;
  wire    [  5: 0] A_dc_fill_wr_tag;
  reg     [  7: 0] A_dc_latest_data_byte_0;
  reg     [  7: 0] A_dc_latest_data_byte_1;
  reg     [  7: 0] A_dc_latest_data_byte_2;
  reg     [  7: 0] A_dc_latest_data_byte_3;
  reg              A_dc_latest_data_valid;
  reg              A_dc_latest_data_valid_byte_0;
  reg              A_dc_latest_data_valid_byte_1;
  reg              A_dc_latest_data_valid_byte_2;
  reg              A_dc_latest_data_valid_byte_3;
  wire    [  9: 0] A_dc_line;
  wire    [ 31: 0] A_dc_rd_data_unused;
  reg     [ 31: 0] A_dc_victim_rd_data;
  reg     [  3: 0] A_dc_victim_tag;
  reg              A_div_accumulate_quotient_bits;
  reg     [ 31: 0] A_div_den;
  wire             A_div_den_en;
  wire             A_div_den_is_normalized;
  reg              A_div_den_is_normalized_sticky;
  wire    [ 31: 0] A_div_den_nxt;
  wire             A_div_discover_quotient_bits;
  reg              A_div_do_sub;
  reg              A_div_done;
  reg              A_div_last_quotient_bit;
  wire             A_div_last_quotient_bit_nxt;
  reg              A_div_negate_result;
  reg     [  5: 0] A_div_norm_cnt;
  wire    [  5: 0] A_div_norm_cnt_nxt;
  reg     [ 31: 0] A_div_quot;
  reg              A_div_quot_bit;
  wire             A_div_quot_bit_nxt;
  wire             A_div_quot_en;
  wire             A_div_quot_hot1;
  wire    [ 31: 0] A_div_quot_nxt;
  reg              A_div_quot_ready;
  wire    [ 31: 0] A_div_quot_shifted;
  reg     [ 32: 0] A_div_rem;
  wire    [ 32: 0] A_div_rem_den_sum_diff;
  wire             A_div_rem_en;
  wire    [ 32: 0] A_div_rem_nxt;
  wire             A_div_rem_sign_bit;
  wire             A_div_stall;
  wire    [  4: 0] A_dst_regnum;
  reg     [  4: 0] A_dst_regnum_from_M;
  wire             A_en;
  reg              A_en_d1;
  reg              A_estatus_reg;
  wire             A_estatus_reg_inst_nxt;
  wire             A_estatus_reg_nxt;
  wire    [ 31: 0] A_fwd_reg_data;
  reg     [ 31: 0] A_ienable_reg;
  wire    [ 31: 0] A_ienable_reg_nxt;
  wire    [ 55: 0] A_inst;
  reg     [ 31: 0] A_inst_result;
  wire    [ 31: 0] A_inst_result_aligned;
  reg     [ 31: 0] A_ipending_reg;
  wire    [ 31: 0] A_ipending_reg_nxt;
  reg     [ 31: 0] A_iw /* synthesis ALTERA_IP_DEBUG_VISIBLE = 1 */;
  wire    [  4: 0] A_iw_a;
  wire    [  4: 0] A_iw_b;
  wire    [  4: 0] A_iw_c;
  wire    [  2: 0] A_iw_control_regnum;
  wire    [  7: 0] A_iw_custom_n;
  wire             A_iw_custom_readra;
  wire             A_iw_custom_readrb;
  wire             A_iw_custom_writerc;
  wire    [ 15: 0] A_iw_imm16;
  wire    [  1: 0] A_iw_memsz;
  wire    [  5: 0] A_iw_op;
  wire    [  5: 0] A_iw_opx;
  wire    [  4: 0] A_iw_shift_imm5;
  reg              A_ld_align_byte1_fill;
  reg              A_ld_align_byte2_byte3_fill;
  reg              A_ld_align_sh16;
  reg              A_ld_align_sh8;
  wire             A_mem16;
  wire             A_mem32;
  wire             A_mem8;
  reg     [ 15: 0] A_mem_baddr;
  reg     [  3: 0] A_mem_byte_en;
  wire             A_mem_stall;
  wire    [ 31: 0] A_mul_cell_result;
  reg     [  2: 0] A_mul_cnt;
  wire    [  2: 0] A_mul_cnt_nxt;
  wire             A_mul_done_nxt;
  reg     [ 31: 0] A_mul_partial_prod;
  wire    [ 31: 0] A_mul_partial_prod_nxt;
  reg     [ 31: 0] A_mul_result;
  wire    [ 31: 0] A_mul_result_nxt;
  reg     [ 31: 0] A_mul_src1;
  wire    [ 31: 0] A_mul_src1_nxt;
  reg     [ 31: 0] A_mul_src2;
  wire    [ 31: 0] A_mul_src2_nxt;
  reg              A_mul_stall;
  reg              A_mul_stall_d1;
  reg              A_mul_stall_d2;
  reg              A_mul_stall_d3;
  wire             A_mul_stall_nxt;
  wire             A_op_add;
  wire             A_op_addi;
  wire             A_op_and;
  wire             A_op_andhi;
  wire             A_op_andi;
  wire             A_op_beq;
  wire             A_op_bge;
  wire             A_op_bgeu;
  wire             A_op_blt;
  wire             A_op_bltu;
  wire             A_op_bne;
  wire             A_op_br;
  wire             A_op_break;
  wire             A_op_bret;
  wire             A_op_call;
  wire             A_op_callr;
  wire             A_op_cmpeq;
  wire             A_op_cmpeqi;
  wire             A_op_cmpge;
  wire             A_op_cmpgei;
  wire             A_op_cmpgeu;
  wire             A_op_cmpgeui;
  wire             A_op_cmplt;
  wire             A_op_cmplti;
  wire             A_op_cmpltu;
  wire             A_op_cmpltui;
  wire             A_op_cmpne;
  wire             A_op_cmpnei;
  wire             A_op_crst;
  wire             A_op_custom;
  wire             A_op_div;
  wire             A_op_divu;
  wire             A_op_eret;
  wire             A_op_flushd;
  wire             A_op_flushda;
  wire             A_op_flushi;
  wire             A_op_flushp;
  wire             A_op_hbreak;
  wire             A_op_initd;
  wire             A_op_initda;
  wire             A_op_initi;
  wire             A_op_intr;
  wire             A_op_jmp;
  wire             A_op_jmpi;
  wire             A_op_ldb;
  wire             A_op_ldbio;
  wire             A_op_ldbu;
  wire             A_op_ldbuio;
  wire             A_op_ldh;
  wire             A_op_ldhio;
  wire             A_op_ldhu;
  wire             A_op_ldhuio;
  wire             A_op_ldl;
  wire             A_op_ldw;
  wire             A_op_ldwio;
  wire             A_op_mul;
  wire             A_op_muli;
  wire             A_op_mulxss;
  wire             A_op_mulxsu;
  wire             A_op_mulxuu;
  wire             A_op_nextpc;
  wire             A_op_nor;
  wire             A_op_opx;
  wire             A_op_or;
  wire             A_op_orhi;
  wire             A_op_ori;
  wire             A_op_rdctl;
  wire             A_op_ret;
  wire             A_op_rol;
  wire             A_op_roli;
  wire             A_op_ror;
  wire             A_op_rsv02;
  wire             A_op_rsv09;
  wire             A_op_rsv10;
  wire             A_op_rsv17;
  wire             A_op_rsv18;
  wire             A_op_rsv25;
  wire             A_op_rsv26;
  wire             A_op_rsv33;
  wire             A_op_rsv34;
  wire             A_op_rsv41;
  wire             A_op_rsv42;
  wire             A_op_rsv49;
  wire             A_op_rsv56;
  wire             A_op_rsv57;
  wire             A_op_rsv61;
  wire             A_op_rsv62;
  wire             A_op_rsv63;
  wire             A_op_rsvx00;
  wire             A_op_rsvx10;
  wire             A_op_rsvx15;
  wire             A_op_rsvx17;
  wire             A_op_rsvx20;
  wire             A_op_rsvx21;
  wire             A_op_rsvx25;
  wire             A_op_rsvx33;
  wire             A_op_rsvx34;
  wire             A_op_rsvx35;
  wire             A_op_rsvx42;
  wire             A_op_rsvx43;
  wire             A_op_rsvx44;
  wire             A_op_rsvx47;
  wire             A_op_rsvx50;
  wire             A_op_rsvx51;
  wire             A_op_rsvx55;
  wire             A_op_rsvx56;
  wire             A_op_rsvx60;
  wire             A_op_rsvx63;
  wire             A_op_sll;
  wire             A_op_slli;
  wire             A_op_sra;
  wire             A_op_srai;
  wire             A_op_srl;
  wire             A_op_srli;
  wire             A_op_stb;
  wire             A_op_stbio;
  wire             A_op_stc;
  wire             A_op_sth;
  wire             A_op_sthio;
  wire             A_op_stw;
  wire             A_op_stwio;
  wire             A_op_sub;
  wire             A_op_sync;
  wire             A_op_trap;
  wire             A_op_wrctl;
  wire             A_op_xor;
  wire             A_op_xorhi;
  wire             A_op_xori;
  reg     [ 15: 0] A_pcb /* synthesis ALTERA_IP_DEBUG_VISIBLE = 1 */;
  wire             A_pipe_flush;
  wire    [ 13: 0] A_pipe_flush_waddr;
  wire             A_rd_stall;
  reg              A_regnum_a_cmp_D;
  wire             A_regnum_a_cmp_F;
  reg              A_regnum_b_cmp_D;
  wire             A_regnum_b_cmp_F;
  reg     [ 31: 0] A_rot;
  reg              A_rot_fill_bit;
  wire    [  7: 0] A_rot_lut0;
  wire    [  7: 0] A_rot_lut1;
  wire    [  7: 0] A_rot_lut2;
  wire    [  7: 0] A_rot_lut3;
  reg     [  7: 0] A_rot_mask;
  reg              A_rot_pass0;
  reg              A_rot_pass1;
  reg              A_rot_pass2;
  reg              A_rot_pass3;
  reg              A_rot_sel_fill0;
  reg              A_rot_sel_fill1;
  reg              A_rot_sel_fill2;
  reg              A_rot_sel_fill3;
  reg              A_shift_rot_cnt;
  wire             A_shift_rot_cnt_nxt;
  wire             A_shift_rot_done_nxt;
  reg     [ 31: 0] A_shift_rot_result;
  reg              A_shift_rot_stall;
  wire             A_shift_rot_stall_nxt;
  reg     [ 31: 0] A_slow_inst_result;
  wire             A_slow_inst_result_en;
  wire    [ 31: 0] A_slow_inst_result_nxt;
  reg              A_slow_inst_sel;
  wire             A_slow_inst_sel_nxt;
  wire    [ 15: 0] A_slow_ld16_data;
  wire    [  7: 0] A_slow_ld_byte0_data_aligned_nxt;
  wire    [  7: 0] A_slow_ld_byte1_data_aligned_nxt;
  wire    [  7: 0] A_slow_ld_byte2_data_aligned_nxt;
  wire    [  7: 0] A_slow_ld_byte3_data_aligned_nxt;
  wire    [ 31: 0] A_slow_ld_data_aligned_nxt;
  wire             A_slow_ld_data_fill_bit;
  wire             A_slow_ld_data_sign_bit;
  wire    [  1: 0] A_slow_ld_data_sign_bit_16;
  wire    [ 31: 0] A_slow_ld_data_unaligned;
  reg     [ 31: 0] A_st_data;
  wire             A_stall;
  wire             A_status_reg;
  reg              A_status_reg_pie;
  wire             A_status_reg_pie_inst_nxt;
  wire             A_status_reg_pie_nxt;
  reg              A_valid /* synthesis ALTERA_IP_DEBUG_VISIBLE = 1 */;
  wire             A_valid_crst;
  reg              A_valid_wrctl_ienable;
  wire    [ 55: 0] A_vinst;
  wire    [ 31: 0] A_wr_data_filtered;
  wire    [ 31: 0] A_wr_data_unfiltered;
  wire             A_wr_dst_reg;
  reg              A_wr_dst_reg_from_M;
  wire             A_wr_stall;
  reg     [  1: 0] D_bht_data;
  reg     [  7: 0] D_bht_ptr;
  wire             D_br_cond_pred_taken;
  wire    [  3: 0] D_br_offset_remaining;
  wire    [ 19: 0] D_br_offset_sex;
  wire             D_br_pred_not_taken;
  wire             D_br_pred_taken;
  wire    [ 15: 0] D_br_taken_baddr;
  wire    [ 13: 0] D_br_taken_waddr;
  reg     [ 10: 0] D_br_taken_waddr_partial;
  wire    [  1: 0] D_compare_op;
  wire    [  1: 0] D_control_rd_data_base_regs;
  wire             D_ctrl_a_is_src;
  reg              D_ctrl_a_not_src;
  wire             D_ctrl_a_not_src_nxt;
  wire             D_ctrl_alu_force_xor;
  wire             D_ctrl_alu_signed_cmp;
  wire             D_ctrl_alu_subtract;
  reg              D_ctrl_b_is_dst;
  wire             D_ctrl_b_is_dst_nxt;
  wire             D_ctrl_b_is_src;
  reg              D_ctrl_b_not_src;
  wire             D_ctrl_b_not_src_nxt;
  reg              D_ctrl_br;
  wire             D_ctrl_br_cond;
  wire             D_ctrl_br_nxt;
  reg              D_ctrl_br_uncond;
  wire             D_ctrl_br_uncond_nxt;
  wire             D_ctrl_break;
  wire             D_ctrl_crst;
  wire             D_ctrl_custom_combo;
  wire             D_ctrl_custom_multi;
  wire             D_ctrl_div;
  wire             D_ctrl_div_signed;
  wire             D_ctrl_dst_data_sel_cmp;
  wire             D_ctrl_dst_data_sel_logic_result;
  wire             D_ctrl_dst_data_sel_pc_plus_one;
  wire             D_ctrl_exception;
  wire             D_ctrl_flush_pipe_always;
  wire             D_ctrl_hi_imm;
  reg              D_ctrl_ignore_dst;
  wire             D_ctrl_ignore_dst_nxt;
  wire             D_ctrl_illegal_inst;
  wire             D_ctrl_implicit_dst_eretaddr;
  wire             D_ctrl_implicit_dst_retaddr;
  reg              D_ctrl_jmp_direct;
  wire             D_ctrl_jmp_direct_nxt;
  wire             D_ctrl_jmp_indirect;
  wire             D_ctrl_late_result;
  wire             D_ctrl_mul_lsw;
  wire             D_ctrl_rot;
  wire             D_ctrl_shift_right_arith;
  wire             D_ctrl_shift_rot;
  wire             D_ctrl_shift_rot_left;
  wire             D_ctrl_shift_rot_right;
  wire             D_ctrl_src2_choose_imm;
  wire             D_ctrl_supervisor_only;
  wire             D_ctrl_uncond_cti;
  wire             D_ctrl_unimp_inst;
  wire             D_ctrl_unsigned_lo_imm;
  wire             D_data_depend;
  wire             D_dep_stall;
  wire    [  4: 0] D_dst_regnum;
  wire    [  4: 0] D_dstfield_regnum;
  wire             D_en;
  wire    [ 13: 0] D_extra_pc;
  wire    [ 15: 0] D_extra_pcb;
  wire             D_ic_fill_ignore;
  reg              D_ic_fill_same_tag_line;
  wire             D_ic_fill_starting;
  reg              D_ic_fill_starting_d1;
  wire             D_ic_want_fill;
  wire             D_ic_want_fill_unfiltered;
  wire             D_ic_want_fill_unfiltered_is_x;
  wire    [ 55: 0] D_inst;
  reg              D_inst_ram_hit;
  reg              D_issue;
  reg     [ 31: 0] D_iw;
  wire    [  4: 0] D_iw_a;
  wire    [  4: 0] D_iw_b;
  wire    [  4: 0] D_iw_c;
  wire    [  2: 0] D_iw_control_regnum;
  wire    [  7: 0] D_iw_custom_n;
  wire             D_iw_custom_readra;
  wire             D_iw_custom_readrb;
  wire             D_iw_custom_writerc;
  wire    [ 15: 0] D_iw_imm16;
  wire    [  1: 0] D_iw_memsz;
  wire    [  5: 0] D_iw_op;
  wire    [  5: 0] D_iw_opx;
  wire    [  4: 0] D_iw_shift_imm5;
  wire    [ 15: 0] D_jmp_direct_target_baddr;
  wire    [ 13: 0] D_jmp_direct_target_waddr;
  reg              D_kill;
  wire    [  1: 0] D_logic_op;
  wire    [  1: 0] D_logic_op_raw;
  wire             D_mem16;
  wire             D_mem32;
  wire             D_mem8;
  wire             D_op_add;
  wire             D_op_addi;
  wire             D_op_and;
  wire             D_op_andhi;
  wire             D_op_andi;
  wire             D_op_beq;
  wire             D_op_bge;
  wire             D_op_bgeu;
  wire             D_op_blt;
  wire             D_op_bltu;
  wire             D_op_bne;
  wire             D_op_br;
  wire             D_op_break;
  wire             D_op_bret;
  wire             D_op_call;
  wire             D_op_callr;
  wire             D_op_cmpeq;
  wire             D_op_cmpeqi;
  wire             D_op_cmpge;
  wire             D_op_cmpgei;
  wire             D_op_cmpgeu;
  wire             D_op_cmpgeui;
  wire             D_op_cmplt;
  wire             D_op_cmplti;
  wire             D_op_cmpltu;
  wire             D_op_cmpltui;
  wire             D_op_cmpne;
  wire             D_op_cmpnei;
  wire             D_op_crst;
  wire             D_op_custom;
  wire             D_op_div;
  wire             D_op_divu;
  wire             D_op_eret;
  wire             D_op_flushd;
  wire             D_op_flushda;
  wire             D_op_flushi;
  wire             D_op_flushp;
  wire             D_op_hbreak;
  wire             D_op_initd;
  wire             D_op_initda;
  wire             D_op_initi;
  wire             D_op_intr;
  wire             D_op_jmp;
  wire             D_op_jmpi;
  wire             D_op_ldb;
  wire             D_op_ldbio;
  wire             D_op_ldbu;
  wire             D_op_ldbuio;
  wire             D_op_ldh;
  wire             D_op_ldhio;
  wire             D_op_ldhu;
  wire             D_op_ldhuio;
  wire             D_op_ldl;
  wire             D_op_ldw;
  wire             D_op_ldwio;
  wire             D_op_mul;
  wire             D_op_muli;
  wire             D_op_mulxss;
  wire             D_op_mulxsu;
  wire             D_op_mulxuu;
  wire             D_op_nextpc;
  wire             D_op_nor;
  wire             D_op_opx;
  wire             D_op_or;
  wire             D_op_orhi;
  wire             D_op_ori;
  wire             D_op_rdctl;
  wire             D_op_ret;
  wire             D_op_rol;
  wire             D_op_roli;
  wire             D_op_ror;
  wire             D_op_rsv02;
  wire             D_op_rsv09;
  wire             D_op_rsv10;
  wire             D_op_rsv17;
  wire             D_op_rsv18;
  wire             D_op_rsv25;
  wire             D_op_rsv26;
  wire             D_op_rsv33;
  wire             D_op_rsv34;
  wire             D_op_rsv41;
  wire             D_op_rsv42;
  wire             D_op_rsv49;
  wire             D_op_rsv56;
  wire             D_op_rsv57;
  wire             D_op_rsv61;
  wire             D_op_rsv62;
  wire             D_op_rsv63;
  wire             D_op_rsvx00;
  wire             D_op_rsvx10;
  wire             D_op_rsvx15;
  wire             D_op_rsvx17;
  wire             D_op_rsvx20;
  wire             D_op_rsvx21;
  wire             D_op_rsvx25;
  wire             D_op_rsvx33;
  wire             D_op_rsvx34;
  wire             D_op_rsvx35;
  wire             D_op_rsvx42;
  wire             D_op_rsvx43;
  wire             D_op_rsvx44;
  wire             D_op_rsvx47;
  wire             D_op_rsvx50;
  wire             D_op_rsvx51;
  wire             D_op_rsvx55;
  wire             D_op_rsvx56;
  wire             D_op_rsvx60;
  wire             D_op_rsvx63;
  wire             D_op_sll;
  wire             D_op_slli;
  wire             D_op_sra;
  wire             D_op_srai;
  wire             D_op_srl;
  wire             D_op_srli;
  wire             D_op_stb;
  wire             D_op_stbio;
  wire             D_op_stc;
  wire             D_op_sth;
  wire             D_op_sthio;
  wire             D_op_stw;
  wire             D_op_stwio;
  wire             D_op_sub;
  wire             D_op_sync;
  wire             D_op_trap;
  wire             D_op_wrctl;
  wire             D_op_xor;
  wire             D_op_xorhi;
  wire             D_op_xori;
  reg     [ 13: 0] D_pc;
  wire    [  6: 0] D_pc_line_field;
  wire    [  2: 0] D_pc_offset_field;
  reg     [ 13: 0] D_pc_plus_one;
  wire    [  3: 0] D_pc_tag_field;
  wire    [ 15: 0] D_pcb;
  wire             D_refetch;
  wire             D_regnum_a_cmp_F;
  wire             D_regnum_b_cmp_F;
  wire    [ 31: 0] D_rf_a;
  wire    [ 31: 0] D_rf_b;
  wire    [ 31: 0] D_src1;
  wire             D_src1_hazard_A;
  wire             D_src1_hazard_E;
  wire             D_src1_hazard_M;
  wire             D_src1_hazard_W;
  wire    [ 31: 0] D_src1_reg;
  wire    [ 31: 0] D_src2;
  wire             D_src2_hazard_A;
  wire             D_src2_hazard_E;
  wire             D_src2_hazard_M;
  wire             D_src2_hazard_W;
  wire    [ 31: 0] D_src2_imm;
  wire    [  1: 0] D_src2_imm_sel;
  wire    [ 31: 0] D_src2_reg;
  wire             D_stall;
  wire             D_valid;
  wire    [ 55: 0] D_vinst;
  wire             D_wr_dst_reg;
  wire             E_add_br_to_taken_history_filtered;
  wire             E_add_br_to_taken_history_unfiltered;
  wire    [ 31: 0] E_alu_result;
  wire    [ 32: 0] E_arith_result;
  wire    [ 31: 0] E_arith_src1;
  wire    [ 31: 0] E_arith_src2;
  reg     [  1: 0] E_bht_data;
  reg     [  7: 0] E_bht_ptr;
  wire             E_br_actually_taken;
  wire             E_br_cond_pred_taken;
  wire    [  7: 0] E_br_cond_taken_history;
  wire             E_br_mispredict;
  reg     [ 15: 0] E_br_taken_baddr;
  wire             E_cancel;
  wire             E_cmp_result;
  reg     [  1: 0] E_compare_op;
  wire    [  1: 0] E_control_rd_data;
  reg     [  1: 0] E_control_rd_data_base_regs;
  reg              E_ctrl_alu_signed_cmp;
  wire             E_ctrl_alu_signed_cmp_nxt;
  reg              E_ctrl_alu_subtract;
  wire             E_ctrl_alu_subtract_nxt;
  reg              E_ctrl_br;
  reg              E_ctrl_br_cond;
  wire             E_ctrl_br_cond_nxt;
  wire             E_ctrl_br_nxt;
  reg              E_ctrl_break;
  wire             E_ctrl_break_nxt;
  wire             E_ctrl_crst;
  wire             E_ctrl_crst_nxt;
  wire             E_ctrl_custom_combo;
  wire             E_ctrl_custom_combo_nxt;
  wire             E_ctrl_custom_multi;
  wire             E_ctrl_custom_multi_nxt;
  wire             E_ctrl_dcache_management;
  reg              E_ctrl_div;
  wire             E_ctrl_div_nxt;
  reg              E_ctrl_div_signed;
  wire             E_ctrl_div_signed_nxt;
  reg              E_ctrl_dst_data_sel_cmp;
  wire             E_ctrl_dst_data_sel_cmp_nxt;
  reg              E_ctrl_dst_data_sel_logic_result;
  wire             E_ctrl_dst_data_sel_logic_result_nxt;
  reg              E_ctrl_dst_data_sel_pc_plus_one;
  wire             E_ctrl_dst_data_sel_pc_plus_one_nxt;
  reg              E_ctrl_exception;
  wire             E_ctrl_exception_nxt;
  reg              E_ctrl_flush_pipe_always;
  wire             E_ctrl_flush_pipe_always_nxt;
  wire             E_ctrl_flushd_flushda;
  wire             E_ctrl_illegal_inst;
  wire             E_ctrl_illegal_inst_nxt;
  wire             E_ctrl_initd;
  wire             E_ctrl_initd_flushd;
  wire             E_ctrl_initd_flushd_flushda;
  wire             E_ctrl_invalidate_i;
  reg              E_ctrl_jmp_indirect;
  wire             E_ctrl_jmp_indirect_nxt;
  reg              E_ctrl_late_result;
  wire             E_ctrl_late_result_nxt;
  wire             E_ctrl_ld;
  wire             E_ctrl_ld16;
  wire             E_ctrl_ld32;
  wire             E_ctrl_ld8;
  wire             E_ctrl_ld8_ld16;
  wire             E_ctrl_ld_bypass;
  wire             E_ctrl_ld_dcache_management;
  wire             E_ctrl_ld_io;
  wire             E_ctrl_ld_non_bypass;
  wire             E_ctrl_ld_non_io;
  wire             E_ctrl_ld_signed;
  wire             E_ctrl_ld_st;
  wire             E_ctrl_ld_st_bypass;
  wire             E_ctrl_ld_st_io;
  wire             E_ctrl_ld_st_non_bypass;
  wire             E_ctrl_ld_st_non_bypass_non_st32;
  wire             E_ctrl_ld_st_non_io;
  wire             E_ctrl_ld_st_non_io_non_st32;
  wire             E_ctrl_ld_st_non_st32;
  wire             E_ctrl_mem;
  wire             E_ctrl_mem16;
  wire             E_ctrl_mem32;
  wire             E_ctrl_mem8;
  wire             E_ctrl_mem_data_access;
  reg              E_ctrl_mul_lsw;
  wire             E_ctrl_mul_lsw_nxt;
  wire             E_ctrl_rdctl_inst;
  reg              E_ctrl_rot;
  wire             E_ctrl_rot_nxt;
  reg              E_ctrl_shift_right_arith;
  wire             E_ctrl_shift_right_arith_nxt;
  reg              E_ctrl_shift_rot;
  reg              E_ctrl_shift_rot_left;
  wire             E_ctrl_shift_rot_left_nxt;
  wire             E_ctrl_shift_rot_nxt;
  reg              E_ctrl_shift_rot_right;
  wire             E_ctrl_shift_rot_right_nxt;
  wire             E_ctrl_st;
  wire             E_ctrl_st16;
  wire             E_ctrl_st8;
  wire             E_ctrl_st_bypass;
  wire             E_ctrl_st_io;
  wire             E_ctrl_st_non_bypass;
  wire             E_ctrl_st_non_io;
  reg              E_ctrl_supervisor_only;
  wire             E_ctrl_supervisor_only_nxt;
  reg              E_ctrl_unimp_inst;
  wire             E_ctrl_unimp_inst_nxt;
  wire             E_ctrl_wrctl_inst;
  wire    [  9: 0] E_dc_line;
  wire             E_div_negate_result;
  wire             E_div_negate_src1;
  wire             E_div_negate_src2;
  wire    [ 31: 0] E_div_src1;
  wire    [ 31: 0] E_div_src2;
  reg     [  4: 0] E_dst_regnum;
  wire             E_en;
  wire             E_eq;
  reg     [ 13: 0] E_extra_pc;
  wire    [ 15: 0] E_extra_pcb;
  wire    [ 31: 0] E_fwd_reg_data;
  wire             E_hbreak_req;
  wire    [ 55: 0] E_inst;
  reg     [ 31: 0] E_iw;
  wire    [  4: 0] E_iw_a;
  wire    [  4: 0] E_iw_b;
  wire    [  4: 0] E_iw_c;
  wire    [  2: 0] E_iw_control_regnum;
  wire    [  7: 0] E_iw_custom_n;
  wire             E_iw_custom_readra;
  wire             E_iw_custom_readrb;
  wire             E_iw_custom_writerc;
  wire    [ 15: 0] E_iw_imm16;
  wire    [  1: 0] E_iw_memsz;
  wire    [  5: 0] E_iw_op;
  wire    [  5: 0] E_iw_opx;
  wire    [  4: 0] E_iw_shift_imm5;
  reg     [  1: 0] E_logic_op;
  wire    [ 31: 0] E_logic_result;
  wire             E_lt;
  wire             E_mem16;
  wire             E_mem32;
  wire             E_mem8;
  wire    [ 15: 0] E_mem_baddr;
  wire             E_mem_bypass_non_io;
  wire    [  3: 0] E_mem_byte_en;
  wire             E_op_add;
  wire             E_op_addi;
  wire             E_op_and;
  wire             E_op_andhi;
  wire             E_op_andi;
  wire             E_op_beq;
  wire             E_op_bge;
  wire             E_op_bgeu;
  wire             E_op_blt;
  wire             E_op_bltu;
  wire             E_op_bne;
  wire             E_op_br;
  wire             E_op_break;
  wire             E_op_bret;
  wire             E_op_call;
  wire             E_op_callr;
  wire             E_op_cmpeq;
  wire             E_op_cmpeqi;
  wire             E_op_cmpge;
  wire             E_op_cmpgei;
  wire             E_op_cmpgeu;
  wire             E_op_cmpgeui;
  wire             E_op_cmplt;
  wire             E_op_cmplti;
  wire             E_op_cmpltu;
  wire             E_op_cmpltui;
  wire             E_op_cmpne;
  wire             E_op_cmpnei;
  wire             E_op_crst;
  wire             E_op_custom;
  wire             E_op_div;
  wire             E_op_divu;
  wire             E_op_eret;
  wire             E_op_flushd;
  wire             E_op_flushda;
  wire             E_op_flushi;
  wire             E_op_flushp;
  wire             E_op_hbreak;
  wire             E_op_initd;
  wire             E_op_initda;
  wire             E_op_initi;
  wire             E_op_intr;
  wire             E_op_jmp;
  wire             E_op_jmpi;
  wire             E_op_ldb;
  wire             E_op_ldbio;
  wire             E_op_ldbu;
  wire             E_op_ldbuio;
  wire             E_op_ldh;
  wire             E_op_ldhio;
  wire             E_op_ldhu;
  wire             E_op_ldhuio;
  wire             E_op_ldl;
  wire             E_op_ldw;
  wire             E_op_ldwio;
  wire             E_op_mul;
  wire             E_op_muli;
  wire             E_op_mulxss;
  wire             E_op_mulxsu;
  wire             E_op_mulxuu;
  wire             E_op_nextpc;
  wire             E_op_nor;
  wire             E_op_opx;
  wire             E_op_or;
  wire             E_op_orhi;
  wire             E_op_ori;
  wire             E_op_rdctl;
  wire             E_op_ret;
  wire             E_op_rol;
  wire             E_op_roli;
  wire             E_op_ror;
  wire             E_op_rsv02;
  wire             E_op_rsv09;
  wire             E_op_rsv10;
  wire             E_op_rsv17;
  wire             E_op_rsv18;
  wire             E_op_rsv25;
  wire             E_op_rsv26;
  wire             E_op_rsv33;
  wire             E_op_rsv34;
  wire             E_op_rsv41;
  wire             E_op_rsv42;
  wire             E_op_rsv49;
  wire             E_op_rsv56;
  wire             E_op_rsv57;
  wire             E_op_rsv61;
  wire             E_op_rsv62;
  wire             E_op_rsv63;
  wire             E_op_rsvx00;
  wire             E_op_rsvx10;
  wire             E_op_rsvx15;
  wire             E_op_rsvx17;
  wire             E_op_rsvx20;
  wire             E_op_rsvx21;
  wire             E_op_rsvx25;
  wire             E_op_rsvx33;
  wire             E_op_rsvx34;
  wire             E_op_rsvx35;
  wire             E_op_rsvx42;
  wire             E_op_rsvx43;
  wire             E_op_rsvx44;
  wire             E_op_rsvx47;
  wire             E_op_rsvx50;
  wire             E_op_rsvx51;
  wire             E_op_rsvx55;
  wire             E_op_rsvx56;
  wire             E_op_rsvx60;
  wire             E_op_rsvx63;
  wire             E_op_sll;
  wire             E_op_slli;
  wire             E_op_sra;
  wire             E_op_srai;
  wire             E_op_srl;
  wire             E_op_srli;
  wire             E_op_stb;
  wire             E_op_stbio;
  wire             E_op_stc;
  wire             E_op_sth;
  wire             E_op_sthio;
  wire             E_op_stw;
  wire             E_op_stwio;
  wire             E_op_sub;
  wire             E_op_sync;
  wire             E_op_trap;
  wire             E_op_wrctl;
  wire             E_op_xor;
  wire             E_op_xorhi;
  wire             E_op_xori;
  reg     [ 13: 0] E_pc;
  reg     [ 15: 0] E_pcb;
  reg              E_regnum_a_cmp_D;
  wire             E_regnum_a_cmp_F;
  reg              E_regnum_b_cmp_D;
  wire             E_regnum_b_cmp_F;
  wire             E_rot_fill_bit;
  wire    [  7: 0] E_rot_left_mask;
  wire    [  7: 0] E_rot_mask;
  wire    [  4: 0] E_rot_n;
  wire             E_rot_pass0;
  wire             E_rot_pass1;
  wire             E_rot_pass2;
  wire             E_rot_pass3;
  wire    [ 31: 0] E_rot_prestep1;
  wire    [  7: 0] E_rot_right_mask;
  wire    [  4: 0] E_rot_rn;
  wire             E_rot_sel_fill0;
  wire             E_rot_sel_fill1;
  wire             E_rot_sel_fill2;
  wire             E_rot_sel_fill3;
  wire             E_sel_data_master;
  reg     [ 31: 0] E_src1;
  wire             E_src1_eq_src2;
  reg     [ 31: 0] E_src2;
  reg     [ 31: 0] E_src2_reg;
  wire    [ 31: 0] E_st_data;
  wire             E_stall;
  wire    [  7: 0] E_stb_data;
  wire    [ 15: 0] E_sth_data;
  wire             E_valid;
  reg              E_valid_from_D;
  reg              E_valid_jmp_indirect;
  wire             E_valid_prior_to_hbreak;
  wire    [ 55: 0] E_vinst;
  wire             E_wr_dst_reg;
  reg              E_wr_dst_reg_from_D;
  wire    [  1: 0] F_bht_data;
  reg     [  7: 0] F_bht_ptr;
  wire    [  7: 0] F_bht_ptr_nxt;
  wire    [ 10: 0] F_br_taken_waddr_partial;
  wire             F_ctrl_a_not_src;
  wire             F_ctrl_b_is_dst;
  wire             F_ctrl_b_not_src;
  wire             F_ctrl_br;
  wire             F_ctrl_br_uncond;
  wire             F_ctrl_ignore_dst;
  wire             F_ctrl_jmp_direct;
  wire             F_en;
  wire    [  9: 0] F_ic_data_rd_addr_nxt;
  wire    [  3: 0] F_ic_desired_tag;
  wire             F_ic_fill_same_tag_line;
  wire             F_ic_hit;
  wire    [ 31: 0] F_ic_iw;
  wire    [  3: 0] F_ic_tag_field;
  wire    [ 11: 0] F_ic_tag_rd;
  wire    [  6: 0] F_ic_tag_rd_addr_nxt;
  wire             F_ic_valid;
  wire    [  7: 0] F_ic_valid_bits;
  wire    [ 55: 0] F_inst;
  wire             F_inst_ram_hit;
  wire             F_issue;
  wire    [ 31: 0] F_iw;
  wire    [  4: 0] F_iw_a;
  wire    [  4: 0] F_iw_a_rf;
  wire    [  4: 0] F_iw_b;
  wire    [  4: 0] F_iw_b_rf;
  wire    [  4: 0] F_iw_c;
  wire    [  2: 0] F_iw_control_regnum;
  wire    [  7: 0] F_iw_custom_n;
  wire             F_iw_custom_readra;
  wire             F_iw_custom_readrb;
  wire             F_iw_custom_writerc;
  wire    [ 15: 0] F_iw_imm16;
  wire    [  1: 0] F_iw_memsz;
  wire    [  5: 0] F_iw_op;
  wire    [  5: 0] F_iw_opx;
  wire    [  4: 0] F_iw_shift_imm5;
  wire             F_kill;
  wire             F_mem16;
  wire             F_mem32;
  wire             F_mem8;
  wire             F_op_add;
  wire             F_op_addi;
  wire             F_op_and;
  wire             F_op_andhi;
  wire             F_op_andi;
  wire             F_op_beq;
  wire             F_op_bge;
  wire             F_op_bgeu;
  wire             F_op_blt;
  wire             F_op_bltu;
  wire             F_op_bne;
  wire             F_op_br;
  wire             F_op_break;
  wire             F_op_bret;
  wire             F_op_call;
  wire             F_op_callr;
  wire             F_op_cmpeq;
  wire             F_op_cmpeqi;
  wire             F_op_cmpge;
  wire             F_op_cmpgei;
  wire             F_op_cmpgeu;
  wire             F_op_cmpgeui;
  wire             F_op_cmplt;
  wire             F_op_cmplti;
  wire             F_op_cmpltu;
  wire             F_op_cmpltui;
  wire             F_op_cmpne;
  wire             F_op_cmpnei;
  wire             F_op_crst;
  wire             F_op_custom;
  wire             F_op_div;
  wire             F_op_divu;
  wire             F_op_eret;
  wire             F_op_flushd;
  wire             F_op_flushda;
  wire             F_op_flushi;
  wire             F_op_flushp;
  wire             F_op_hbreak;
  wire             F_op_initd;
  wire             F_op_initda;
  wire             F_op_initi;
  wire             F_op_intr;
  wire             F_op_jmp;
  wire             F_op_jmpi;
  wire             F_op_ldb;
  wire             F_op_ldbio;
  wire             F_op_ldbu;
  wire             F_op_ldbuio;
  wire             F_op_ldh;
  wire             F_op_ldhio;
  wire             F_op_ldhu;
  wire             F_op_ldhuio;
  wire             F_op_ldl;
  wire             F_op_ldw;
  wire             F_op_ldwio;
  wire             F_op_mul;
  wire             F_op_muli;
  wire             F_op_mulxss;
  wire             F_op_mulxsu;
  wire             F_op_mulxuu;
  wire             F_op_nextpc;
  wire             F_op_nor;
  wire             F_op_opx;
  wire             F_op_or;
  wire             F_op_orhi;
  wire             F_op_ori;
  wire             F_op_rdctl;
  wire             F_op_ret;
  wire             F_op_rol;
  wire             F_op_roli;
  wire             F_op_ror;
  wire             F_op_rsv02;
  wire             F_op_rsv09;
  wire             F_op_rsv10;
  wire             F_op_rsv17;
  wire             F_op_rsv18;
  wire             F_op_rsv25;
  wire             F_op_rsv26;
  wire             F_op_rsv33;
  wire             F_op_rsv34;
  wire             F_op_rsv41;
  wire             F_op_rsv42;
  wire             F_op_rsv49;
  wire             F_op_rsv56;
  wire             F_op_rsv57;
  wire             F_op_rsv61;
  wire             F_op_rsv62;
  wire             F_op_rsv63;
  wire             F_op_rsvx00;
  wire             F_op_rsvx10;
  wire             F_op_rsvx15;
  wire             F_op_rsvx17;
  wire             F_op_rsvx20;
  wire             F_op_rsvx21;
  wire             F_op_rsvx25;
  wire             F_op_rsvx33;
  wire             F_op_rsvx34;
  wire             F_op_rsvx35;
  wire             F_op_rsvx42;
  wire             F_op_rsvx43;
  wire             F_op_rsvx44;
  wire             F_op_rsvx47;
  wire             F_op_rsvx50;
  wire             F_op_rsvx51;
  wire             F_op_rsvx55;
  wire             F_op_rsvx56;
  wire             F_op_rsvx60;
  wire             F_op_rsvx63;
  wire             F_op_sll;
  wire             F_op_slli;
  wire             F_op_sra;
  wire             F_op_srai;
  wire             F_op_srl;
  wire             F_op_srli;
  wire             F_op_stb;
  wire             F_op_stbio;
  wire             F_op_stc;
  wire             F_op_sth;
  wire             F_op_sthio;
  wire             F_op_stw;
  wire             F_op_stwio;
  wire             F_op_sub;
  wire             F_op_sync;
  wire             F_op_trap;
  wire             F_op_wrctl;
  wire             F_op_xor;
  wire             F_op_xorhi;
  wire             F_op_xori;
  reg     [ 13: 0] F_pc;
  wire    [  6: 0] F_pc_line_field;
  wire    [ 13: 0] F_pc_nxt;
  wire    [ 13: 0] F_pc_plus_one;
  wire    [  3: 0] F_pc_tag_field;
  wire    [ 15: 0] F_pcb;
  wire    [ 15: 0] F_pcb_nxt;
  wire    [ 31: 0] F_ram_iw;
  wire    [  4: 0] F_ram_iw_a;
  wire    [  4: 0] F_ram_iw_b;
  wire    [  4: 0] F_ram_iw_c;
  wire    [  2: 0] F_ram_iw_control_regnum;
  wire    [  7: 0] F_ram_iw_custom_n;
  wire             F_ram_iw_custom_readra;
  wire             F_ram_iw_custom_readrb;
  wire             F_ram_iw_custom_writerc;
  wire    [ 15: 0] F_ram_iw_imm16;
  wire    [  1: 0] F_ram_iw_memsz;
  wire    [  5: 0] F_ram_iw_op;
  wire    [  5: 0] F_ram_iw_opx;
  wire    [  4: 0] F_ram_iw_shift_imm5;
  wire             F_ram_mem16;
  wire             F_ram_mem32;
  wire             F_ram_mem8;
  wire             F_sel_instruction_master;
  wire             F_stall;
  wire    [ 55: 0] F_vinst;
  wire             M_A_dc_desired_tag_match;
  wire             M_A_dc_latest_line_match;
  wire             M_A_dc_line_match;
  wire             M_M_dc_tag_match;
  reg     [ 31: 0] M_alu_result;
  reg     [  1: 0] M_bht_data;
  wire    [  7: 0] M_bht_ptr_filtered;
  reg     [  7: 0] M_bht_ptr_unfiltered;
  wire    [  1: 0] M_bht_wr_data_filtered;
  wire    [  1: 0] M_bht_wr_data_unfiltered;
  wire             M_bht_wr_en_filtered;
  wire             M_bht_wr_en_unfiltered;
  reg     [  7: 0] M_br_cond_taken_history;
  reg              M_br_mispredict;
  reg     [ 15: 0] M_br_taken_baddr;
  wire             M_cancel;
  reg              M_cmp_result;
  reg     [  1: 0] M_control_rd_data;
  reg              M_ctrl_br;
  reg              M_ctrl_br_cond;
  wire             M_ctrl_br_cond_nxt;
  wire             M_ctrl_br_nxt;
  reg              M_ctrl_break;
  wire             M_ctrl_break_nxt;
  wire             M_ctrl_crst;
  wire             M_ctrl_crst_nxt;
  wire             M_ctrl_custom_multi;
  wire             M_ctrl_custom_multi_nxt;
  reg              M_ctrl_dcache_management;
  wire             M_ctrl_dcache_management_nxt;
  reg              M_ctrl_div;
  wire             M_ctrl_div_nxt;
  reg              M_ctrl_exception;
  wire             M_ctrl_exception_nxt;
  reg              M_ctrl_flush_pipe_always;
  wire             M_ctrl_flush_pipe_always_nxt;
  reg              M_ctrl_flushd_flushda;
  wire             M_ctrl_flushd_flushda_nxt;
  wire             M_ctrl_illegal_inst;
  wire             M_ctrl_illegal_inst_nxt;
  reg              M_ctrl_initd;
  reg              M_ctrl_initd_flushd;
  reg              M_ctrl_initd_flushd_flushda;
  wire             M_ctrl_initd_flushd_flushda_nxt;
  wire             M_ctrl_initd_flushd_nxt;
  wire             M_ctrl_initd_nxt;
  reg              M_ctrl_invalidate_i;
  wire             M_ctrl_invalidate_i_nxt;
  reg              M_ctrl_jmp_indirect;
  wire             M_ctrl_jmp_indirect_nxt;
  reg              M_ctrl_late_result;
  wire             M_ctrl_late_result_nxt;
  reg              M_ctrl_ld;
  reg              M_ctrl_ld16;
  wire             M_ctrl_ld16_nxt;
  reg              M_ctrl_ld32;
  wire             M_ctrl_ld32_nxt;
  reg              M_ctrl_ld8;
  reg              M_ctrl_ld8_ld16;
  wire             M_ctrl_ld8_ld16_nxt;
  wire             M_ctrl_ld8_nxt;
  reg              M_ctrl_ld_bypass;
  wire             M_ctrl_ld_bypass_nxt;
  reg              M_ctrl_ld_dcache_management;
  wire             M_ctrl_ld_dcache_management_nxt;
  reg              M_ctrl_ld_io;
  wire             M_ctrl_ld_io_nxt;
  reg              M_ctrl_ld_non_bypass;
  wire             M_ctrl_ld_non_bypass_nxt;
  reg              M_ctrl_ld_non_io;
  wire             M_ctrl_ld_non_io_nxt;
  wire             M_ctrl_ld_nxt;
  reg              M_ctrl_ld_signed;
  wire             M_ctrl_ld_signed_nxt;
  reg              M_ctrl_ld_st;
  reg              M_ctrl_ld_st_bypass;
  wire             M_ctrl_ld_st_bypass_nxt;
  reg              M_ctrl_ld_st_io;
  wire             M_ctrl_ld_st_io_nxt;
  reg              M_ctrl_ld_st_non_bypass;
  reg              M_ctrl_ld_st_non_bypass_non_st32;
  wire             M_ctrl_ld_st_non_bypass_non_st32_nxt;
  wire             M_ctrl_ld_st_non_bypass_nxt;
  reg              M_ctrl_ld_st_non_io;
  reg              M_ctrl_ld_st_non_io_non_st32;
  wire             M_ctrl_ld_st_non_io_non_st32_nxt;
  wire             M_ctrl_ld_st_non_io_nxt;
  reg              M_ctrl_ld_st_non_st32;
  wire             M_ctrl_ld_st_non_st32_nxt;
  wire             M_ctrl_ld_st_nxt;
  reg              M_ctrl_mem;
  reg              M_ctrl_mem16;
  wire             M_ctrl_mem16_nxt;
  reg              M_ctrl_mem32;
  wire             M_ctrl_mem32_nxt;
  reg              M_ctrl_mem8;
  wire             M_ctrl_mem8_nxt;
  reg              M_ctrl_mem_data_access;
  wire             M_ctrl_mem_data_access_nxt;
  wire             M_ctrl_mem_nxt;
  reg              M_ctrl_mul_lsw;
  wire             M_ctrl_mul_lsw_nxt;
  reg              M_ctrl_rdctl_inst;
  wire             M_ctrl_rdctl_inst_nxt;
  reg              M_ctrl_rot;
  wire             M_ctrl_rot_nxt;
  reg              M_ctrl_shift_right_arith;
  wire             M_ctrl_shift_right_arith_nxt;
  reg              M_ctrl_shift_rot;
  reg              M_ctrl_shift_rot_left;
  wire             M_ctrl_shift_rot_left_nxt;
  wire             M_ctrl_shift_rot_nxt;
  reg              M_ctrl_shift_rot_right;
  wire             M_ctrl_shift_rot_right_nxt;
  reg              M_ctrl_st;
  reg              M_ctrl_st16;
  wire             M_ctrl_st16_nxt;
  reg              M_ctrl_st8;
  wire             M_ctrl_st8_nxt;
  reg              M_ctrl_st_bypass;
  wire             M_ctrl_st_bypass_nxt;
  reg              M_ctrl_st_io;
  wire             M_ctrl_st_io_nxt;
  reg              M_ctrl_st_non_bypass;
  wire             M_ctrl_st_non_bypass_nxt;
  reg              M_ctrl_st_non_io;
  wire             M_ctrl_st_non_io_nxt;
  wire             M_ctrl_st_nxt;
  reg              M_ctrl_unimp_inst;
  wire             M_ctrl_unimp_inst_nxt;
  reg              M_ctrl_wrctl_inst;
  wire             M_ctrl_wrctl_inst_nxt;
  wire             M_data_ram_ld_align_fill_bit;
  wire             M_data_ram_ld_align_sign_bit;
  wire    [  1: 0] M_data_ram_ld_align_sign_bit_16;
  reg              M_data_ram_ld_align_sign_bit_16_hi;
  wire    [  3: 0] M_dc_actual_tag;
  wire             M_dc_av_rd_req;
  wire             M_dc_av_wr_req;
  wire    [  3: 0] M_dc_desired_tag;
  wire             M_dc_dirty;
  wire             M_dc_hit;
  wire    [  9: 0] M_dc_line;
  wire    [ 31: 0] M_dc_rd_data;
  wire    [  5: 0] M_dc_tag_entry;
  wire    [  5: 0] M_dc_tag_entry_unused;
  wire             M_dc_valid;
  wire             M_dc_victim_dirty;
  wire    [ 31: 0] M_dc_victim_rd_data;
  wire    [  7: 0] M_dc_victim_rd_data_byte_0;
  wire    [  7: 0] M_dc_victim_rd_data_byte_1;
  wire    [  7: 0] M_dc_victim_rd_data_byte_2;
  wire    [  7: 0] M_dc_victim_rd_data_byte_3;
  wire    [  3: 0] M_dc_victim_tag;
  reg              M_div_negate_result;
  reg     [ 31: 0] M_div_src1;
  reg     [ 31: 0] M_div_src2;
  reg     [  4: 0] M_dst_regnum;
  wire             M_en;
  wire             M_exc_any;
  wire    [ 31: 0] M_fwd_reg_data;
  wire    [ 55: 0] M_inst;
  wire    [ 31: 0] M_inst_result;
  reg     [ 31: 0] M_iw;
  wire    [  4: 0] M_iw_a;
  wire    [  4: 0] M_iw_b;
  wire    [  4: 0] M_iw_c;
  wire    [  2: 0] M_iw_control_regnum;
  wire    [  7: 0] M_iw_custom_n;
  wire             M_iw_custom_readra;
  wire             M_iw_custom_readrb;
  wire             M_iw_custom_writerc;
  wire    [ 15: 0] M_iw_imm16;
  wire    [  1: 0] M_iw_memsz;
  wire    [  5: 0] M_iw_op;
  wire    [  5: 0] M_iw_opx;
  wire    [  4: 0] M_iw_shift_imm5;
  wire             M_ld_align_byte1_fill;
  wire             M_ld_align_byte2_byte3_fill;
  wire             M_ld_align_sh16;
  wire             M_ld_align_sh8;
  wire             M_mem16;
  wire             M_mem32;
  wire             M_mem8;
  wire    [ 15: 0] M_mem_baddr;
  reg     [  3: 0] M_mem_byte_en;
  wire             M_op_add;
  wire             M_op_addi;
  wire             M_op_and;
  wire             M_op_andhi;
  wire             M_op_andi;
  wire             M_op_beq;
  wire             M_op_bge;
  wire             M_op_bgeu;
  wire             M_op_blt;
  wire             M_op_bltu;
  wire             M_op_bne;
  wire             M_op_br;
  wire             M_op_break;
  wire             M_op_bret;
  wire             M_op_call;
  wire             M_op_callr;
  wire             M_op_cmpeq;
  wire             M_op_cmpeqi;
  wire             M_op_cmpge;
  wire             M_op_cmpgei;
  wire             M_op_cmpgeu;
  wire             M_op_cmpgeui;
  wire             M_op_cmplt;
  wire             M_op_cmplti;
  wire             M_op_cmpltu;
  wire             M_op_cmpltui;
  wire             M_op_cmpne;
  wire             M_op_cmpnei;
  wire             M_op_crst;
  wire             M_op_custom;
  wire             M_op_div;
  wire             M_op_divu;
  wire             M_op_eret;
  wire             M_op_flushd;
  wire             M_op_flushda;
  wire             M_op_flushi;
  wire             M_op_flushp;
  wire             M_op_hbreak;
  wire             M_op_initd;
  wire             M_op_initda;
  wire             M_op_initi;
  wire             M_op_intr;
  wire             M_op_jmp;
  wire             M_op_jmpi;
  wire             M_op_ldb;
  wire             M_op_ldbio;
  wire             M_op_ldbu;
  wire             M_op_ldbuio;
  wire             M_op_ldh;
  wire             M_op_ldhio;
  wire             M_op_ldhu;
  wire             M_op_ldhuio;
  wire             M_op_ldl;
  wire             M_op_ldw;
  wire             M_op_ldwio;
  wire             M_op_mul;
  wire             M_op_muli;
  wire             M_op_mulxss;
  wire             M_op_mulxsu;
  wire             M_op_mulxuu;
  wire             M_op_nextpc;
  wire             M_op_nor;
  wire             M_op_opx;
  wire             M_op_or;
  wire             M_op_orhi;
  wire             M_op_ori;
  wire             M_op_rdctl;
  wire             M_op_ret;
  wire             M_op_rol;
  wire             M_op_roli;
  wire             M_op_ror;
  wire             M_op_rsv02;
  wire             M_op_rsv09;
  wire             M_op_rsv10;
  wire             M_op_rsv17;
  wire             M_op_rsv18;
  wire             M_op_rsv25;
  wire             M_op_rsv26;
  wire             M_op_rsv33;
  wire             M_op_rsv34;
  wire             M_op_rsv41;
  wire             M_op_rsv42;
  wire             M_op_rsv49;
  wire             M_op_rsv56;
  wire             M_op_rsv57;
  wire             M_op_rsv61;
  wire             M_op_rsv62;
  wire             M_op_rsv63;
  wire             M_op_rsvx00;
  wire             M_op_rsvx10;
  wire             M_op_rsvx15;
  wire             M_op_rsvx17;
  wire             M_op_rsvx20;
  wire             M_op_rsvx21;
  wire             M_op_rsvx25;
  wire             M_op_rsvx33;
  wire             M_op_rsvx34;
  wire             M_op_rsvx35;
  wire             M_op_rsvx42;
  wire             M_op_rsvx43;
  wire             M_op_rsvx44;
  wire             M_op_rsvx47;
  wire             M_op_rsvx50;
  wire             M_op_rsvx51;
  wire             M_op_rsvx55;
  wire             M_op_rsvx56;
  wire             M_op_rsvx60;
  wire             M_op_rsvx63;
  wire             M_op_sll;
  wire             M_op_slli;
  wire             M_op_sra;
  wire             M_op_srai;
  wire             M_op_srl;
  wire             M_op_srli;
  wire             M_op_stb;
  wire             M_op_stbio;
  wire             M_op_stc;
  wire             M_op_sth;
  wire             M_op_sthio;
  wire             M_op_stw;
  wire             M_op_stwio;
  wire             M_op_sub;
  wire             M_op_sync;
  wire             M_op_trap;
  wire             M_op_wrctl;
  wire             M_op_xor;
  wire             M_op_xorhi;
  wire             M_op_xori;
  reg     [ 15: 0] M_pcb;
  reg              M_pipe_flush;
  wire    [ 15: 0] M_pipe_flush_baddr;
  wire    [ 15: 0] M_pipe_flush_baddr_nxt;
  wire             M_pipe_flush_nxt;
  reg     [ 13: 0] M_pipe_flush_waddr;
  wire    [ 13: 0] M_pipe_flush_waddr_nxt;
  wire    [ 31: 0] M_ram_rd_data;
  reg              M_regnum_a_cmp_D;
  wire             M_regnum_a_cmp_F;
  reg              M_regnum_b_cmp_D;
  wire             M_regnum_b_cmp_F;
  reg              M_rot_fill_bit;
  reg     [  7: 0] M_rot_mask;
  reg              M_rot_pass0;
  reg              M_rot_pass1;
  reg              M_rot_pass2;
  reg              M_rot_pass3;
  wire    [ 31: 0] M_rot_prestep2;
  reg     [  4: 0] M_rot_rn;
  reg              M_rot_sel_fill0;
  reg              M_rot_sel_fill1;
  reg              M_rot_sel_fill2;
  reg              M_rot_sel_fill3;
  reg     [ 31: 0] M_rot_step1;
  reg              M_sel_data_master;
  wire    [ 31: 0] M_src1;
  wire    [ 31: 0] M_src2;
  reg     [ 31: 0] M_st_data;
  wire             M_st_initd_flushd_flushda_dc_wr_en;
  wire             M_stall;
  reg     [ 15: 0] M_target_pcb;
  wire             M_valid;
  reg              M_valid_from_E;
  wire    [ 55: 0] M_vinst;
  wire             M_wr_dst_reg;
  reg              M_wr_dst_reg_from_E;
  wire             M_wrctl_bstatus;
  wire             M_wrctl_estatus;
  wire             M_wrctl_ienable;
  wire             M_wrctl_status;
  reg     [ 31: 0] Mn_rot_step2;
  reg     [ 15: 0] W_br_taken_baddr;
  reg     [  4: 0] W_dst_regnum;
  wire             W_en;
  wire    [ 55: 0] W_inst;
  reg     [ 31: 0] W_iw;
  wire    [  4: 0] W_iw_a;
  wire    [  4: 0] W_iw_b;
  wire    [  4: 0] W_iw_c;
  wire    [  2: 0] W_iw_control_regnum;
  wire    [  7: 0] W_iw_custom_n;
  wire             W_iw_custom_readra;
  wire             W_iw_custom_readrb;
  wire             W_iw_custom_writerc;
  wire    [ 15: 0] W_iw_imm16;
  wire    [  1: 0] W_iw_memsz;
  wire    [  5: 0] W_iw_op;
  wire    [  5: 0] W_iw_opx;
  wire    [  4: 0] W_iw_shift_imm5;
  wire             W_mem16;
  wire             W_mem32;
  wire             W_mem8;
  wire             W_op_add;
  wire             W_op_addi;
  wire             W_op_and;
  wire             W_op_andhi;
  wire             W_op_andi;
  wire             W_op_beq;
  wire             W_op_bge;
  wire             W_op_bgeu;
  wire             W_op_blt;
  wire             W_op_bltu;
  wire             W_op_bne;
  wire             W_op_br;
  wire             W_op_break;
  wire             W_op_bret;
  wire             W_op_call;
  wire             W_op_callr;
  wire             W_op_cmpeq;
  wire             W_op_cmpeqi;
  wire             W_op_cmpge;
  wire             W_op_cmpgei;
  wire             W_op_cmpgeu;
  wire             W_op_cmpgeui;
  wire             W_op_cmplt;
  wire             W_op_cmplti;
  wire             W_op_cmpltu;
  wire             W_op_cmpltui;
  wire             W_op_cmpne;
  wire             W_op_cmpnei;
  wire             W_op_crst;
  wire             W_op_custom;
  wire             W_op_div;
  wire             W_op_divu;
  wire             W_op_eret;
  wire             W_op_flushd;
  wire             W_op_flushda;
  wire             W_op_flushi;
  wire             W_op_flushp;
  wire             W_op_hbreak;
  wire             W_op_initd;
  wire             W_op_initda;
  wire             W_op_initi;
  wire             W_op_intr;
  wire             W_op_jmp;
  wire             W_op_jmpi;
  wire             W_op_ldb;
  wire             W_op_ldbio;
  wire             W_op_ldbu;
  wire             W_op_ldbuio;
  wire             W_op_ldh;
  wire             W_op_ldhio;
  wire             W_op_ldhu;
  wire             W_op_ldhuio;
  wire             W_op_ldl;
  wire             W_op_ldw;
  wire             W_op_ldwio;
  wire             W_op_mul;
  wire             W_op_muli;
  wire             W_op_mulxss;
  wire             W_op_mulxsu;
  wire             W_op_mulxuu;
  wire             W_op_nextpc;
  wire             W_op_nor;
  wire             W_op_opx;
  wire             W_op_or;
  wire             W_op_orhi;
  wire             W_op_ori;
  wire             W_op_rdctl;
  wire             W_op_ret;
  wire             W_op_rol;
  wire             W_op_roli;
  wire             W_op_ror;
  wire             W_op_rsv02;
  wire             W_op_rsv09;
  wire             W_op_rsv10;
  wire             W_op_rsv17;
  wire             W_op_rsv18;
  wire             W_op_rsv25;
  wire             W_op_rsv26;
  wire             W_op_rsv33;
  wire             W_op_rsv34;
  wire             W_op_rsv41;
  wire             W_op_rsv42;
  wire             W_op_rsv49;
  wire             W_op_rsv56;
  wire             W_op_rsv57;
  wire             W_op_rsv61;
  wire             W_op_rsv62;
  wire             W_op_rsv63;
  wire             W_op_rsvx00;
  wire             W_op_rsvx10;
  wire             W_op_rsvx15;
  wire             W_op_rsvx17;
  wire             W_op_rsvx20;
  wire             W_op_rsvx21;
  wire             W_op_rsvx25;
  wire             W_op_rsvx33;
  wire             W_op_rsvx34;
  wire             W_op_rsvx35;
  wire             W_op_rsvx42;
  wire             W_op_rsvx43;
  wire             W_op_rsvx44;
  wire             W_op_rsvx47;
  wire             W_op_rsvx50;
  wire             W_op_rsvx51;
  wire             W_op_rsvx55;
  wire             W_op_rsvx56;
  wire             W_op_rsvx60;
  wire             W_op_rsvx63;
  wire             W_op_sll;
  wire             W_op_slli;
  wire             W_op_sra;
  wire             W_op_srai;
  wire             W_op_srl;
  wire             W_op_srli;
  wire             W_op_stb;
  wire             W_op_stbio;
  wire             W_op_stc;
  wire             W_op_sth;
  wire             W_op_sthio;
  wire             W_op_stw;
  wire             W_op_stwio;
  wire             W_op_sub;
  wire             W_op_sync;
  wire             W_op_trap;
  wire             W_op_wrctl;
  wire             W_op_xor;
  wire             W_op_xorhi;
  wire             W_op_xori;
  reg     [ 15: 0] W_pcb;
  reg              W_regnum_a_cmp_D;
  reg              W_regnum_b_cmp_D;
  reg              W_valid;
  wire    [ 55: 0] W_vinst;
  reg     [ 31: 0] W_wr_data;
  reg              W_wr_dst_reg;
  reg              av_process_readdata;
  wire             av_rd_data_transfer;
  reg              av_rd_done;
  wire             av_wr_data_transfer;
  reg              av_wr_done;
  wire             av_wr_done_nxt;
  reg     [ 15: 0] d_address;
  wire    [ 15: 0] d_address_nxt;
  reg     [  3: 0] d_byteenable;
  wire    [  3: 0] d_byteenable_nxt;
  reg              d_read;
  wire             d_read_nxt;
  reg     [ 31: 0] d_readdata_d1;
  reg              d_write;
  wire             d_write_nxt;
  reg     [ 31: 0] d_writedata;
  wire    [ 31: 0] d_writedata_nxt;
  wire    [  1: 0] dc_byte_field_nxt;
  wire    [  9: 0] dc_data_portb_addr;
  wire    [  3: 0] dc_data_portb_byte_en;
  wire    [ 31: 0] dc_data_portb_wr_data;
  wire             dc_data_portb_wr_en;
  wire             dc_data_wr_byte_0;
  wire             dc_data_wr_byte_1;
  wire             dc_data_wr_byte_2;
  wire             dc_data_wr_byte_3;
  wire             dc_line_dirty_off;
  wire             dc_line_dirty_on;
  wire    [  9: 0] dc_line_field_nxt;
  wire             dc_line_valid_off;
  wire             dc_line_valid_on;
  wire    [  3: 0] dc_tag_field_nxt;
  wire    [  9: 0] dc_tag_portb_addr;
  wire    [  5: 0] dc_tag_portb_data;
  wire             dc_tag_portb_wr_en;
  reg              hbreak_enabled;
  wire             hbreak_req;
  wire    [ 15: 0] i_address;
  reg              i_read;
  wire             i_read_nxt;
  reg     [ 31: 0] i_readdata_d1;
  reg              i_readdatavalid_d1;
  wire    [ 31: 0] iactive;
  reg              ic_fill_active;
  wire             ic_fill_active_nxt;
  reg     [  3: 0] ic_fill_ap_cnt;
  wire    [  3: 0] ic_fill_ap_cnt_nxt;
  wire             ic_fill_ap_last_word;
  reg     [  2: 0] ic_fill_ap_offset;
  wire    [  2: 0] ic_fill_ap_offset_nxt;
  wire             ic_fill_done;
  wire             ic_fill_dp_last_word;
  reg     [  2: 0] ic_fill_dp_offset;
  wire             ic_fill_dp_offset_en;
  wire    [  2: 0] ic_fill_dp_offset_nxt;
  reg     [  2: 0] ic_fill_initial_offset;
  reg     [  6: 0] ic_fill_line;
  reg              ic_fill_prevent_refill;
  wire             ic_fill_prevent_refill_nxt;
  wire             ic_fill_req_accepted;
  reg     [  3: 0] ic_fill_tag;
  wire    [  7: 0] ic_fill_valid_bit_new;
  reg     [  7: 0] ic_fill_valid_bits;
  wire             ic_fill_valid_bits_en;
  wire    [  7: 0] ic_fill_valid_bits_nxt;
  reg              ic_tag_clr_valid_bits;
  wire             ic_tag_clr_valid_bits_nxt;
  reg     [  6: 0] ic_tag_wraddress;
  wire    [  6: 0] ic_tag_wraddress_nxt;
  wire    [ 11: 0] ic_tag_wrdata;
  wire             ic_tag_wren;
  wire             intr_req;
  wire             jtag_debug_module_debugaccess_to_roms;
  wire    [ 31: 0] jtag_debug_module_readdata;
  wire             jtag_debug_module_resetrequest;
  reg              latched_oci_tb_hbreak_req;
  wire             latched_oci_tb_hbreak_req_next;
  wire             oci_hbreak_req;
  wire    [ 31: 0] oci_ienable;
  wire             oci_single_step_mode;
  wire             oci_tb_hbreak_req;
  reg              reset_d1;
  reg              wait_for_one_post_bret_inst;
  //the_cpu_test_bench, which is an e_instance
  cpu_test_bench the_cpu_test_bench
    (
      .A_bstatus_reg                        (A_bstatus_reg),
      .A_cmp_result                         (A_cmp_result),
      .A_ctrl_exception                     (A_ctrl_exception),
      .A_ctrl_ld_non_bypass                 (A_ctrl_ld_non_bypass),
      .A_dst_regnum                         (A_dst_regnum),
      .A_en                                 (A_en),
      .A_estatus_reg                        (A_estatus_reg),
      .A_ienable_reg                        (A_ienable_reg),
      .A_ipending_reg                       (A_ipending_reg),
      .A_iw                                 (A_iw),
      .A_mem_byte_en                        (A_mem_byte_en),
      .A_op_hbreak                          (A_op_hbreak),
      .A_op_intr                            (A_op_intr),
      .A_pcb                                (A_pcb),
      .A_st_data                            (A_st_data),
      .A_status_reg                         (A_status_reg),
      .A_valid                              (A_valid),
      .A_wr_data_filtered                   (A_wr_data_filtered),
      .A_wr_data_unfiltered                 (A_wr_data_unfiltered),
      .A_wr_dst_reg                         (A_wr_dst_reg),
      .E_add_br_to_taken_history_filtered   (E_add_br_to_taken_history_filtered),
      .E_add_br_to_taken_history_unfiltered (E_add_br_to_taken_history_unfiltered),
      .E_logic_result                       (E_logic_result),
      .E_src1_eq_src2                       (E_src1_eq_src2),
      .E_valid                              (E_valid),
      .M_bht_ptr_filtered                   (M_bht_ptr_filtered),
      .M_bht_ptr_unfiltered                 (M_bht_ptr_unfiltered),
      .M_bht_wr_data_filtered               (M_bht_wr_data_filtered),
      .M_bht_wr_data_unfiltered             (M_bht_wr_data_unfiltered),
      .M_bht_wr_en_filtered                 (M_bht_wr_en_filtered),
      .M_bht_wr_en_unfiltered               (M_bht_wr_en_unfiltered),
      .M_mem_baddr                          (M_mem_baddr),
      .M_target_pcb                         (M_target_pcb),
      .M_valid                              (M_valid),
      .W_dst_regnum                         (W_dst_regnum),
      .W_iw                                 (W_iw),
      .W_iw_op                              (W_iw_op),
      .W_iw_opx                             (W_iw_opx),
      .W_pcb                                (W_pcb),
      .W_valid                              (W_valid),
      .W_wr_dst_reg                         (W_wr_dst_reg),
      .clk                                  (clk),
      .d_address                            (d_address),
      .d_byteenable                         (d_byteenable),
      .d_read                               (d_read),
      .d_write                              (d_write),
      .i_address                            (i_address),
      .i_read                               (i_read),
      .i_readdatavalid                      (i_readdatavalid),
      .reset_n                              (reset_n)
    );

  assign F_op_rsv02 = F_iw_op[5 : 0] == 2;
  assign F_op_cmplti = F_iw_op[5 : 0] == 16;
  assign F_op_rsv18 = F_iw_op[5 : 0] == 18;
  assign F_op_rsv26 = F_iw_op[5 : 0] == 26;
  assign F_op_rsv42 = F_iw_op[5 : 0] == 42;
  assign F_op_ldbio = F_iw_op[5 : 0] == 39;
  assign F_op_ldbu = F_iw_op[5 : 0] == 3;
  assign F_op_orhi = F_iw_op[5 : 0] == 52;
  assign F_op_bge = F_iw_op[5 : 0] == 14;
  assign F_op_stc = F_iw_op[5 : 0] == 29;
  assign F_op_br = F_iw_op[5 : 0] == 6;
  assign F_op_ldhio = F_iw_op[5 : 0] == 47;
  assign F_op_rsv41 = F_iw_op[5 : 0] == 41;
  assign F_op_ldwio = F_iw_op[5 : 0] == 55;
  assign F_op_rsv61 = F_iw_op[5 : 0] == 61;
  assign F_op_opx = F_iw_op[5 : 0] == 58;
  assign F_op_stb = F_iw_op[5 : 0] == 5;
  assign F_op_rsv62 = F_iw_op[5 : 0] == 62;
  assign F_op_bltu = F_iw_op[5 : 0] == 54;
  assign F_op_custom = F_iw_op[5 : 0] == 50;
  assign F_op_muli = F_iw_op[5 : 0] == 36;
  assign F_op_cmpgei = F_iw_op[5 : 0] == 8;
  assign F_op_xori = F_iw_op[5 : 0] == 28;
  assign F_op_ldw = F_iw_op[5 : 0] == 23;
  assign F_op_cmpeqi = F_iw_op[5 : 0] == 32;
  assign F_op_ldh = F_iw_op[5 : 0] == 15;
  assign F_op_stw = F_iw_op[5 : 0] == 21;
  assign F_op_rsv09 = F_iw_op[5 : 0] == 9;
  assign F_op_cmpnei = F_iw_op[5 : 0] == 24;
  assign F_op_ldb = F_iw_op[5 : 0] == 7;
  assign F_op_bgeu = F_iw_op[5 : 0] == 46;
  assign F_op_stwio = F_iw_op[5 : 0] == 53;
  assign F_op_rsv33 = F_iw_op[5 : 0] == 33;
  assign F_op_ldl = F_iw_op[5 : 0] == 31;
  assign F_op_andhi = F_iw_op[5 : 0] == 44;
  assign F_op_rsv34 = F_iw_op[5 : 0] == 34;
  assign F_op_ldbuio = F_iw_op[5 : 0] == 35;
  assign F_op_sthio = F_iw_op[5 : 0] == 45;
  assign F_op_cmpgeui = F_iw_op[5 : 0] == 40;
  assign F_op_stbio = F_iw_op[5 : 0] == 37;
  assign F_op_andi = F_iw_op[5 : 0] == 12;
  assign F_op_addi = F_iw_op[5 : 0] == 4;
  assign F_op_flushda = F_iw_op[5 : 0] == 27;
  assign F_op_rsv49 = F_iw_op[5 : 0] == 49;
  assign F_op_jmpi = F_iw_op[5 : 0] == 1;
  assign F_op_initda = F_iw_op[5 : 0] == 19;
  assign F_op_blt = F_iw_op[5 : 0] == 22;
  assign F_op_beq = F_iw_op[5 : 0] == 38;
  assign F_op_ori = F_iw_op[5 : 0] == 20;
  assign F_op_cmpltui = F_iw_op[5 : 0] == 48;
  assign F_op_rsv56 = F_iw_op[5 : 0] == 56;
  assign F_op_xorhi = F_iw_op[5 : 0] == 60;
  assign F_op_ldhuio = F_iw_op[5 : 0] == 43;
  assign F_op_bne = F_iw_op[5 : 0] == 30;
  assign F_op_rsv63 = F_iw_op[5 : 0] == 63;
  assign F_op_rsv57 = F_iw_op[5 : 0] == 57;
  assign F_op_call = F_iw_op[5 : 0] == 0;
  assign F_op_ldhu = F_iw_op[5 : 0] == 11;
  assign F_op_flushd = F_iw_op[5 : 0] == 59;
  assign F_op_initd = F_iw_op[5 : 0] == 51;
  assign F_op_rsv10 = F_iw_op[5 : 0] == 10;
  assign F_op_rsv17 = F_iw_op[5 : 0] == 17;
  assign F_op_sth = F_iw_op[5 : 0] == 13;
  assign F_op_rsv25 = F_iw_op[5 : 0] == 25;
  assign F_op_flushi = F_op_opx & (F_iw_opx[5 : 0] == 12);
  assign F_op_mulxuu = F_op_opx & (F_iw_opx[5 : 0] == 7);
  assign F_op_rsvx33 = F_op_opx & (F_iw_opx[5 : 0] == 33);
  assign F_op_wrctl = F_op_opx & (F_iw_opx[5 : 0] == 46);
  assign F_op_roli = F_op_opx & (F_iw_opx[5 : 0] == 2);
  assign F_op_intr = F_op_opx & (F_iw_opx[5 : 0] == 61);
  assign F_op_rsvx43 = F_op_opx & (F_iw_opx[5 : 0] == 43);
  assign F_op_srl = F_op_opx & (F_iw_opx[5 : 0] == 27);
  assign F_op_trap = F_op_opx & (F_iw_opx[5 : 0] == 45);
  assign F_op_rsvx17 = F_op_opx & (F_iw_opx[5 : 0] == 17);
  assign F_op_break = F_op_opx & (F_iw_opx[5 : 0] == 52);
  assign F_op_rdctl = F_op_opx & (F_iw_opx[5 : 0] == 38);
  assign F_op_cmpltu = F_op_opx & (F_iw_opx[5 : 0] == 48);
  assign F_op_callr = F_op_opx & (F_iw_opx[5 : 0] == 29);
  assign F_op_cmpge = F_op_opx & (F_iw_opx[5 : 0] == 8);
  assign F_op_rsvx47 = F_op_opx & (F_iw_opx[5 : 0] == 47);
  assign F_op_and = F_op_opx & (F_iw_opx[5 : 0] == 14);
  assign F_op_rsvx00 = F_op_opx & (F_iw_opx[5 : 0] == 0);
  assign F_op_rsvx56 = F_op_opx & (F_iw_opx[5 : 0] == 56);
  assign F_op_hbreak = F_op_opx & (F_iw_opx[5 : 0] == 53);
  assign F_op_flushp = F_op_opx & (F_iw_opx[5 : 0] == 4);
  assign F_op_nor = F_op_opx & (F_iw_opx[5 : 0] == 6);
  assign F_op_rsvx50 = F_op_opx & (F_iw_opx[5 : 0] == 50);
  assign F_op_initi = F_op_opx & (F_iw_opx[5 : 0] == 41);
  assign F_op_srai = F_op_opx & (F_iw_opx[5 : 0] == 58);
  assign F_op_sync = F_op_opx & (F_iw_opx[5 : 0] == 54);
  assign F_op_rsvx15 = F_op_opx & (F_iw_opx[5 : 0] == 15);
  assign F_op_rsvx55 = F_op_opx & (F_iw_opx[5 : 0] == 55);
  assign F_op_crst = F_op_opx & (F_iw_opx[5 : 0] == 62);
  assign F_op_rsvx42 = F_op_opx & (F_iw_opx[5 : 0] == 42);
  assign F_op_xor = F_op_opx & (F_iw_opx[5 : 0] == 30);
  assign F_op_rsvx34 = F_op_opx & (F_iw_opx[5 : 0] == 34);
  assign F_op_mulxss = F_op_opx & (F_iw_opx[5 : 0] == 31);
  assign F_op_rsvx51 = F_op_opx & (F_iw_opx[5 : 0] == 51);
  assign F_op_rsvx10 = F_op_opx & (F_iw_opx[5 : 0] == 10);
  assign F_op_eret = F_op_opx & (F_iw_opx[5 : 0] == 1);
  assign F_op_rsvx25 = F_op_opx & (F_iw_opx[5 : 0] == 25);
  assign F_op_jmp = F_op_opx & (F_iw_opx[5 : 0] == 13);
  assign F_op_or = F_op_opx & (F_iw_opx[5 : 0] == 22);
  assign F_op_rsvx35 = F_op_opx & (F_iw_opx[5 : 0] == 35);
  assign F_op_sra = F_op_opx & (F_iw_opx[5 : 0] == 59);
  assign F_op_rsvx20 = F_op_opx & (F_iw_opx[5 : 0] == 20);
  assign F_op_slli = F_op_opx & (F_iw_opx[5 : 0] == 18);
  assign F_op_mulxsu = F_op_opx & (F_iw_opx[5 : 0] == 23);
  assign F_op_rsvx21 = F_op_opx & (F_iw_opx[5 : 0] == 21);
  assign F_op_ror = F_op_opx & (F_iw_opx[5 : 0] == 11);
  assign F_op_srli = F_op_opx & (F_iw_opx[5 : 0] == 26);
  assign F_op_sll = F_op_opx & (F_iw_opx[5 : 0] == 19);
  assign F_op_div = F_op_opx & (F_iw_opx[5 : 0] == 37);
  assign F_op_cmplt = F_op_opx & (F_iw_opx[5 : 0] == 16);
  assign F_op_add = F_op_opx & (F_iw_opx[5 : 0] == 49);
  assign F_op_rsvx44 = F_op_opx & (F_iw_opx[5 : 0] == 44);
  assign F_op_bret = F_op_opx & (F_iw_opx[5 : 0] == 9);
  assign F_op_rsvx60 = F_op_opx & (F_iw_opx[5 : 0] == 60);
  assign F_op_rsvx63 = F_op_opx & (F_iw_opx[5 : 0] == 63);
  assign F_op_mul = F_op_opx & (F_iw_opx[5 : 0] == 39);
  assign F_op_cmpgeu = F_op_opx & (F_iw_opx[5 : 0] == 40);
  assign F_op_cmpne = F_op_opx & (F_iw_opx[5 : 0] == 24);
  assign F_op_cmpeq = F_op_opx & (F_iw_opx[5 : 0] == 32);
  assign F_op_ret = F_op_opx & (F_iw_opx[5 : 0] == 5);
  assign F_op_rol = F_op_opx & (F_iw_opx[5 : 0] == 3);
  assign F_op_sub = F_op_opx & (F_iw_opx[5 : 0] == 57);
  assign F_op_nextpc = F_op_opx & (F_iw_opx[5 : 0] == 28);
  assign F_op_divu = F_op_opx & (F_iw_opx[5 : 0] == 36);
  assign D_op_rsv02 = D_iw_op[5 : 0] == 2;
  assign D_op_cmplti = D_iw_op[5 : 0] == 16;
  assign D_op_rsv18 = D_iw_op[5 : 0] == 18;
  assign D_op_rsv26 = D_iw_op[5 : 0] == 26;
  assign D_op_rsv42 = D_iw_op[5 : 0] == 42;
  assign D_op_ldbio = D_iw_op[5 : 0] == 39;
  assign D_op_ldbu = D_iw_op[5 : 0] == 3;
  assign D_op_orhi = D_iw_op[5 : 0] == 52;
  assign D_op_bge = D_iw_op[5 : 0] == 14;
  assign D_op_stc = D_iw_op[5 : 0] == 29;
  assign D_op_br = D_iw_op[5 : 0] == 6;
  assign D_op_ldhio = D_iw_op[5 : 0] == 47;
  assign D_op_rsv41 = D_iw_op[5 : 0] == 41;
  assign D_op_ldwio = D_iw_op[5 : 0] == 55;
  assign D_op_rsv61 = D_iw_op[5 : 0] == 61;
  assign D_op_opx = D_iw_op[5 : 0] == 58;
  assign D_op_stb = D_iw_op[5 : 0] == 5;
  assign D_op_rsv62 = D_iw_op[5 : 0] == 62;
  assign D_op_bltu = D_iw_op[5 : 0] == 54;
  assign D_op_custom = D_iw_op[5 : 0] == 50;
  assign D_op_muli = D_iw_op[5 : 0] == 36;
  assign D_op_xori = D_iw_op[5 : 0] == 28;
  assign D_op_cmpgei = D_iw_op[5 : 0] == 8;
  assign D_op_ldw = D_iw_op[5 : 0] == 23;
  assign D_op_cmpeqi = D_iw_op[5 : 0] == 32;
  assign D_op_ldh = D_iw_op[5 : 0] == 15;
  assign D_op_stw = D_iw_op[5 : 0] == 21;
  assign D_op_rsv09 = D_iw_op[5 : 0] == 9;
  assign D_op_cmpnei = D_iw_op[5 : 0] == 24;
  assign D_op_ldb = D_iw_op[5 : 0] == 7;
  assign D_op_bgeu = D_iw_op[5 : 0] == 46;
  assign D_op_stwio = D_iw_op[5 : 0] == 53;
  assign D_op_rsv33 = D_iw_op[5 : 0] == 33;
  assign D_op_ldl = D_iw_op[5 : 0] == 31;
  assign D_op_andhi = D_iw_op[5 : 0] == 44;
  assign D_op_ldbuio = D_iw_op[5 : 0] == 35;
  assign D_op_rsv34 = D_iw_op[5 : 0] == 34;
  assign D_op_sthio = D_iw_op[5 : 0] == 45;
  assign D_op_cmpgeui = D_iw_op[5 : 0] == 40;
  assign D_op_stbio = D_iw_op[5 : 0] == 37;
  assign D_op_andi = D_iw_op[5 : 0] == 12;
  assign D_op_addi = D_iw_op[5 : 0] == 4;
  assign D_op_flushda = D_iw_op[5 : 0] == 27;
  assign D_op_rsv49 = D_iw_op[5 : 0] == 49;
  assign D_op_jmpi = D_iw_op[5 : 0] == 1;
  assign D_op_initda = D_iw_op[5 : 0] == 19;
  assign D_op_blt = D_iw_op[5 : 0] == 22;
  assign D_op_beq = D_iw_op[5 : 0] == 38;
  assign D_op_ori = D_iw_op[5 : 0] == 20;
  assign D_op_cmpltui = D_iw_op[5 : 0] == 48;
  assign D_op_xorhi = D_iw_op[5 : 0] == 60;
  assign D_op_rsv56 = D_iw_op[5 : 0] == 56;
  assign D_op_ldhuio = D_iw_op[5 : 0] == 43;
  assign D_op_rsv63 = D_iw_op[5 : 0] == 63;
  assign D_op_bne = D_iw_op[5 : 0] == 30;
  assign D_op_rsv57 = D_iw_op[5 : 0] == 57;
  assign D_op_call = D_iw_op[5 : 0] == 0;
  assign D_op_ldhu = D_iw_op[5 : 0] == 11;
  assign D_op_flushd = D_iw_op[5 : 0] == 59;
  assign D_op_initd = D_iw_op[5 : 0] == 51;
  assign D_op_rsv10 = D_iw_op[5 : 0] == 10;
  assign D_op_rsv17 = D_iw_op[5 : 0] == 17;
  assign D_op_sth = D_iw_op[5 : 0] == 13;
  assign D_op_rsv25 = D_iw_op[5 : 0] == 25;
  assign D_op_flushi = D_op_opx & (D_iw_opx[5 : 0] == 12);
  assign D_op_mulxuu = D_op_opx & (D_iw_opx[5 : 0] == 7);
  assign D_op_rsvx33 = D_op_opx & (D_iw_opx[5 : 0] == 33);
  assign D_op_wrctl = D_op_opx & (D_iw_opx[5 : 0] == 46);
  assign D_op_roli = D_op_opx & (D_iw_opx[5 : 0] == 2);
  assign D_op_intr = D_op_opx & (D_iw_opx[5 : 0] == 61);
  assign D_op_rsvx43 = D_op_opx & (D_iw_opx[5 : 0] == 43);
  assign D_op_srl = D_op_opx & (D_iw_opx[5 : 0] == 27);
  assign D_op_trap = D_op_opx & (D_iw_opx[5 : 0] == 45);
  assign D_op_rsvx17 = D_op_opx & (D_iw_opx[5 : 0] == 17);
  assign D_op_break = D_op_opx & (D_iw_opx[5 : 0] == 52);
  assign D_op_rdctl = D_op_opx & (D_iw_opx[5 : 0] == 38);
  assign D_op_cmpltu = D_op_opx & (D_iw_opx[5 : 0] == 48);
  assign D_op_callr = D_op_opx & (D_iw_opx[5 : 0] == 29);
  assign D_op_cmpge = D_op_opx & (D_iw_opx[5 : 0] == 8);
  assign D_op_rsvx47 = D_op_opx & (D_iw_opx[5 : 0] == 47);
  assign D_op_and = D_op_opx & (D_iw_opx[5 : 0] == 14);
  assign D_op_rsvx00 = D_op_opx & (D_iw_opx[5 : 0] == 0);
  assign D_op_rsvx56 = D_op_opx & (D_iw_opx[5 : 0] == 56);
  assign D_op_hbreak = D_op_opx & (D_iw_opx[5 : 0] == 53);
  assign D_op_flushp = D_op_opx & (D_iw_opx[5 : 0] == 4);
  assign D_op_nor = D_op_opx & (D_iw_opx[5 : 0] == 6);
  assign D_op_rsvx50 = D_op_opx & (D_iw_opx[5 : 0] == 50);
  assign D_op_initi = D_op_opx & (D_iw_opx[5 : 0] == 41);
  assign D_op_srai = D_op_opx & (D_iw_opx[5 : 0] == 58);
  assign D_op_sync = D_op_opx & (D_iw_opx[5 : 0] == 54);
  assign D_op_rsvx15 = D_op_opx & (D_iw_opx[5 : 0] == 15);
  assign D_op_rsvx55 = D_op_opx & (D_iw_opx[5 : 0] == 55);
  assign D_op_crst = D_op_opx & (D_iw_opx[5 : 0] == 62);
  assign D_op_rsvx42 = D_op_opx & (D_iw_opx[5 : 0] == 42);
  assign D_op_xor = D_op_opx & (D_iw_opx[5 : 0] == 30);
  assign D_op_rsvx34 = D_op_opx & (D_iw_opx[5 : 0] == 34);
  assign D_op_mulxss = D_op_opx & (D_iw_opx[5 : 0] == 31);
  assign D_op_rsvx51 = D_op_opx & (D_iw_opx[5 : 0] == 51);
  assign D_op_rsvx10 = D_op_opx & (D_iw_opx[5 : 0] == 10);
  assign D_op_eret = D_op_opx & (D_iw_opx[5 : 0] == 1);
  assign D_op_rsvx25 = D_op_opx & (D_iw_opx[5 : 0] == 25);
  assign D_op_jmp = D_op_opx & (D_iw_opx[5 : 0] == 13);
  assign D_op_or = D_op_opx & (D_iw_opx[5 : 0] == 22);
  assign D_op_rsvx35 = D_op_opx & (D_iw_opx[5 : 0] == 35);
  assign D_op_sra = D_op_opx & (D_iw_opx[5 : 0] == 59);
  assign D_op_rsvx20 = D_op_opx & (D_iw_opx[5 : 0] == 20);
  assign D_op_slli = D_op_opx & (D_iw_opx[5 : 0] == 18);
  assign D_op_mulxsu = D_op_opx & (D_iw_opx[5 : 0] == 23);
  assign D_op_rsvx21 = D_op_opx & (D_iw_opx[5 : 0] == 21);
  assign D_op_ror = D_op_opx & (D_iw_opx[5 : 0] == 11);
  assign D_op_srli = D_op_opx & (D_iw_opx[5 : 0] == 26);
  assign D_op_sll = D_op_opx & (D_iw_opx[5 : 0] == 19);
  assign D_op_div = D_op_opx & (D_iw_opx[5 : 0] == 37);
  assign D_op_cmplt = D_op_opx & (D_iw_opx[5 : 0] == 16);
  assign D_op_add = D_op_opx & (D_iw_opx[5 : 0] == 49);
  assign D_op_rsvx44 = D_op_opx & (D_iw_opx[5 : 0] == 44);
  assign D_op_bret = D_op_opx & (D_iw_opx[5 : 0] == 9);
  assign D_op_rsvx60 = D_op_opx & (D_iw_opx[5 : 0] == 60);
  assign D_op_rsvx63 = D_op_opx & (D_iw_opx[5 : 0] == 63);
  assign D_op_mul = D_op_opx & (D_iw_opx[5 : 0] == 39);
  assign D_op_cmpgeu = D_op_opx & (D_iw_opx[5 : 0] == 40);
  assign D_op_cmpne = D_op_opx & (D_iw_opx[5 : 0] == 24);
  assign D_op_cmpeq = D_op_opx & (D_iw_opx[5 : 0] == 32);
  assign D_op_ret = D_op_opx & (D_iw_opx[5 : 0] == 5);
  assign D_op_rol = D_op_opx & (D_iw_opx[5 : 0] == 3);
  assign D_op_sub = D_op_opx & (D_iw_opx[5 : 0] == 57);
  assign D_op_nextpc = D_op_opx & (D_iw_opx[5 : 0] == 28);
  assign D_op_divu = D_op_opx & (D_iw_opx[5 : 0] == 36);
  assign E_op_rsv02 = E_iw_op[5 : 0] == 2;
  assign E_op_cmplti = E_iw_op[5 : 0] == 16;
  assign E_op_rsv18 = E_iw_op[5 : 0] == 18;
  assign E_op_rsv26 = E_iw_op[5 : 0] == 26;
  assign E_op_rsv42 = E_iw_op[5 : 0] == 42;
  assign E_op_ldbio = E_iw_op[5 : 0] == 39;
  assign E_op_ldbu = E_iw_op[5 : 0] == 3;
  assign E_op_orhi = E_iw_op[5 : 0] == 52;
  assign E_op_bge = E_iw_op[5 : 0] == 14;
  assign E_op_stc = E_iw_op[5 : 0] == 29;
  assign E_op_br = E_iw_op[5 : 0] == 6;
  assign E_op_ldhio = E_iw_op[5 : 0] == 47;
  assign E_op_rsv41 = E_iw_op[5 : 0] == 41;
  assign E_op_ldwio = E_iw_op[5 : 0] == 55;
  assign E_op_rsv61 = E_iw_op[5 : 0] == 61;
  assign E_op_opx = E_iw_op[5 : 0] == 58;
  assign E_op_stb = E_iw_op[5 : 0] == 5;
  assign E_op_rsv62 = E_iw_op[5 : 0] == 62;
  assign E_op_bltu = E_iw_op[5 : 0] == 54;
  assign E_op_custom = E_iw_op[5 : 0] == 50;
  assign E_op_muli = E_iw_op[5 : 0] == 36;
  assign E_op_xori = E_iw_op[5 : 0] == 28;
  assign E_op_cmpgei = E_iw_op[5 : 0] == 8;
  assign E_op_ldw = E_iw_op[5 : 0] == 23;
  assign E_op_cmpeqi = E_iw_op[5 : 0] == 32;
  assign E_op_ldh = E_iw_op[5 : 0] == 15;
  assign E_op_stw = E_iw_op[5 : 0] == 21;
  assign E_op_rsv09 = E_iw_op[5 : 0] == 9;
  assign E_op_cmpnei = E_iw_op[5 : 0] == 24;
  assign E_op_ldb = E_iw_op[5 : 0] == 7;
  assign E_op_bgeu = E_iw_op[5 : 0] == 46;
  assign E_op_stwio = E_iw_op[5 : 0] == 53;
  assign E_op_rsv33 = E_iw_op[5 : 0] == 33;
  assign E_op_ldl = E_iw_op[5 : 0] == 31;
  assign E_op_andhi = E_iw_op[5 : 0] == 44;
  assign E_op_ldbuio = E_iw_op[5 : 0] == 35;
  assign E_op_rsv34 = E_iw_op[5 : 0] == 34;
  assign E_op_sthio = E_iw_op[5 : 0] == 45;
  assign E_op_cmpgeui = E_iw_op[5 : 0] == 40;
  assign E_op_stbio = E_iw_op[5 : 0] == 37;
  assign E_op_andi = E_iw_op[5 : 0] == 12;
  assign E_op_addi = E_iw_op[5 : 0] == 4;
  assign E_op_flushda = E_iw_op[5 : 0] == 27;
  assign E_op_rsv49 = E_iw_op[5 : 0] == 49;
  assign E_op_jmpi = E_iw_op[5 : 0] == 1;
  assign E_op_initda = E_iw_op[5 : 0] == 19;
  assign E_op_blt = E_iw_op[5 : 0] == 22;
  assign E_op_beq = E_iw_op[5 : 0] == 38;
  assign E_op_ori = E_iw_op[5 : 0] == 20;
  assign E_op_cmpltui = E_iw_op[5 : 0] == 48;
  assign E_op_xorhi = E_iw_op[5 : 0] == 60;
  assign E_op_rsv56 = E_iw_op[5 : 0] == 56;
  assign E_op_ldhuio = E_iw_op[5 : 0] == 43;
  assign E_op_rsv63 = E_iw_op[5 : 0] == 63;
  assign E_op_bne = E_iw_op[5 : 0] == 30;
  assign E_op_rsv57 = E_iw_op[5 : 0] == 57;
  assign E_op_call = E_iw_op[5 : 0] == 0;
  assign E_op_ldhu = E_iw_op[5 : 0] == 11;
  assign E_op_flushd = E_iw_op[5 : 0] == 59;
  assign E_op_initd = E_iw_op[5 : 0] == 51;
  assign E_op_rsv10 = E_iw_op[5 : 0] == 10;
  assign E_op_rsv17 = E_iw_op[5 : 0] == 17;
  assign E_op_sth = E_iw_op[5 : 0] == 13;
  assign E_op_rsv25 = E_iw_op[5 : 0] == 25;
  assign E_op_flushi = E_op_opx & (E_iw_opx[5 : 0] == 12);
  assign E_op_mulxuu = E_op_opx & (E_iw_opx[5 : 0] == 7);
  assign E_op_rsvx33 = E_op_opx & (E_iw_opx[5 : 0] == 33);
  assign E_op_wrctl = E_op_opx & (E_iw_opx[5 : 0] == 46);
  assign E_op_roli = E_op_opx & (E_iw_opx[5 : 0] == 2);
  assign E_op_intr = E_op_opx & (E_iw_opx[5 : 0] == 61);
  assign E_op_rsvx43 = E_op_opx & (E_iw_opx[5 : 0] == 43);
  assign E_op_srl = E_op_opx & (E_iw_opx[5 : 0] == 27);
  assign E_op_trap = E_op_opx & (E_iw_opx[5 : 0] == 45);
  assign E_op_rsvx17 = E_op_opx & (E_iw_opx[5 : 0] == 17);
  assign E_op_break = E_op_opx & (E_iw_opx[5 : 0] == 52);
  assign E_op_rdctl = E_op_opx & (E_iw_opx[5 : 0] == 38);
  assign E_op_cmpltu = E_op_opx & (E_iw_opx[5 : 0] == 48);
  assign E_op_callr = E_op_opx & (E_iw_opx[5 : 0] == 29);
  assign E_op_cmpge = E_op_opx & (E_iw_opx[5 : 0] == 8);
  assign E_op_rsvx47 = E_op_opx & (E_iw_opx[5 : 0] == 47);
  assign E_op_and = E_op_opx & (E_iw_opx[5 : 0] == 14);
  assign E_op_rsvx00 = E_op_opx & (E_iw_opx[5 : 0] == 0);
  assign E_op_rsvx56 = E_op_opx & (E_iw_opx[5 : 0] == 56);
  assign E_op_hbreak = E_op_opx & (E_iw_opx[5 : 0] == 53);
  assign E_op_flushp = E_op_opx & (E_iw_opx[5 : 0] == 4);
  assign E_op_nor = E_op_opx & (E_iw_opx[5 : 0] == 6);
  assign E_op_rsvx50 = E_op_opx & (E_iw_opx[5 : 0] == 50);
  assign E_op_initi = E_op_opx & (E_iw_opx[5 : 0] == 41);
  assign E_op_srai = E_op_opx & (E_iw_opx[5 : 0] == 58);
  assign E_op_sync = E_op_opx & (E_iw_opx[5 : 0] == 54);
  assign E_op_rsvx15 = E_op_opx & (E_iw_opx[5 : 0] == 15);
  assign E_op_rsvx55 = E_op_opx & (E_iw_opx[5 : 0] == 55);
  assign E_op_crst = E_op_opx & (E_iw_opx[5 : 0] == 62);
  assign E_op_rsvx42 = E_op_opx & (E_iw_opx[5 : 0] == 42);
  assign E_op_xor = E_op_opx & (E_iw_opx[5 : 0] == 30);
  assign E_op_rsvx34 = E_op_opx & (E_iw_opx[5 : 0] == 34);
  assign E_op_mulxss = E_op_opx & (E_iw_opx[5 : 0] == 31);
  assign E_op_rsvx51 = E_op_opx & (E_iw_opx[5 : 0] == 51);
  assign E_op_rsvx10 = E_op_opx & (E_iw_opx[5 : 0] == 10);
  assign E_op_eret = E_op_opx & (E_iw_opx[5 : 0] == 1);
  assign E_op_rsvx25 = E_op_opx & (E_iw_opx[5 : 0] == 25);
  assign E_op_jmp = E_op_opx & (E_iw_opx[5 : 0] == 13);
  assign E_op_or = E_op_opx & (E_iw_opx[5 : 0] == 22);
  assign E_op_rsvx35 = E_op_opx & (E_iw_opx[5 : 0] == 35);
  assign E_op_sra = E_op_opx & (E_iw_opx[5 : 0] == 59);
  assign E_op_rsvx20 = E_op_opx & (E_iw_opx[5 : 0] == 20);
  assign E_op_slli = E_op_opx & (E_iw_opx[5 : 0] == 18);
  assign E_op_mulxsu = E_op_opx & (E_iw_opx[5 : 0] == 23);
  assign E_op_rsvx21 = E_op_opx & (E_iw_opx[5 : 0] == 21);
  assign E_op_ror = E_op_opx & (E_iw_opx[5 : 0] == 11);
  assign E_op_srli = E_op_opx & (E_iw_opx[5 : 0] == 26);
  assign E_op_sll = E_op_opx & (E_iw_opx[5 : 0] == 19);
  assign E_op_div = E_op_opx & (E_iw_opx[5 : 0] == 37);
  assign E_op_cmplt = E_op_opx & (E_iw_opx[5 : 0] == 16);
  assign E_op_add = E_op_opx & (E_iw_opx[5 : 0] == 49);
  assign E_op_rsvx44 = E_op_opx & (E_iw_opx[5 : 0] == 44);
  assign E_op_bret = E_op_opx & (E_iw_opx[5 : 0] == 9);
  assign E_op_rsvx60 = E_op_opx & (E_iw_opx[5 : 0] == 60);
  assign E_op_rsvx63 = E_op_opx & (E_iw_opx[5 : 0] == 63);
  assign E_op_mul = E_op_opx & (E_iw_opx[5 : 0] == 39);
  assign E_op_cmpgeu = E_op_opx & (E_iw_opx[5 : 0] == 40);
  assign E_op_cmpne = E_op_opx & (E_iw_opx[5 : 0] == 24);
  assign E_op_cmpeq = E_op_opx & (E_iw_opx[5 : 0] == 32);
  assign E_op_ret = E_op_opx & (E_iw_opx[5 : 0] == 5);
  assign E_op_rol = E_op_opx & (E_iw_opx[5 : 0] == 3);
  assign E_op_sub = E_op_opx & (E_iw_opx[5 : 0] == 57);
  assign E_op_nextpc = E_op_opx & (E_iw_opx[5 : 0] == 28);
  assign E_op_divu = E_op_opx & (E_iw_opx[5 : 0] == 36);
  assign M_op_rsv02 = M_iw_op[5 : 0] == 2;
  assign M_op_cmplti = M_iw_op[5 : 0] == 16;
  assign M_op_rsv18 = M_iw_op[5 : 0] == 18;
  assign M_op_rsv26 = M_iw_op[5 : 0] == 26;
  assign M_op_rsv42 = M_iw_op[5 : 0] == 42;
  assign M_op_ldbio = M_iw_op[5 : 0] == 39;
  assign M_op_ldbu = M_iw_op[5 : 0] == 3;
  assign M_op_orhi = M_iw_op[5 : 0] == 52;
  assign M_op_bge = M_iw_op[5 : 0] == 14;
  assign M_op_stc = M_iw_op[5 : 0] == 29;
  assign M_op_br = M_iw_op[5 : 0] == 6;
  assign M_op_ldhio = M_iw_op[5 : 0] == 47;
  assign M_op_rsv41 = M_iw_op[5 : 0] == 41;
  assign M_op_ldwio = M_iw_op[5 : 0] == 55;
  assign M_op_rsv61 = M_iw_op[5 : 0] == 61;
  assign M_op_opx = M_iw_op[5 : 0] == 58;
  assign M_op_stb = M_iw_op[5 : 0] == 5;
  assign M_op_rsv62 = M_iw_op[5 : 0] == 62;
  assign M_op_bltu = M_iw_op[5 : 0] == 54;
  assign M_op_custom = M_iw_op[5 : 0] == 50;
  assign M_op_muli = M_iw_op[5 : 0] == 36;
  assign M_op_xori = M_iw_op[5 : 0] == 28;
  assign M_op_cmpgei = M_iw_op[5 : 0] == 8;
  assign M_op_ldw = M_iw_op[5 : 0] == 23;
  assign M_op_cmpeqi = M_iw_op[5 : 0] == 32;
  assign M_op_ldh = M_iw_op[5 : 0] == 15;
  assign M_op_stw = M_iw_op[5 : 0] == 21;
  assign M_op_rsv09 = M_iw_op[5 : 0] == 9;
  assign M_op_cmpnei = M_iw_op[5 : 0] == 24;
  assign M_op_ldb = M_iw_op[5 : 0] == 7;
  assign M_op_bgeu = M_iw_op[5 : 0] == 46;
  assign M_op_stwio = M_iw_op[5 : 0] == 53;
  assign M_op_rsv33 = M_iw_op[5 : 0] == 33;
  assign M_op_ldl = M_iw_op[5 : 0] == 31;
  assign M_op_andhi = M_iw_op[5 : 0] == 44;
  assign M_op_ldbuio = M_iw_op[5 : 0] == 35;
  assign M_op_rsv34 = M_iw_op[5 : 0] == 34;
  assign M_op_sthio = M_iw_op[5 : 0] == 45;
  assign M_op_cmpgeui = M_iw_op[5 : 0] == 40;
  assign M_op_stbio = M_iw_op[5 : 0] == 37;
  assign M_op_andi = M_iw_op[5 : 0] == 12;
  assign M_op_addi = M_iw_op[5 : 0] == 4;
  assign M_op_flushda = M_iw_op[5 : 0] == 27;
  assign M_op_rsv49 = M_iw_op[5 : 0] == 49;
  assign M_op_jmpi = M_iw_op[5 : 0] == 1;
  assign M_op_initda = M_iw_op[5 : 0] == 19;
  assign M_op_blt = M_iw_op[5 : 0] == 22;
  assign M_op_beq = M_iw_op[5 : 0] == 38;
  assign M_op_ori = M_iw_op[5 : 0] == 20;
  assign M_op_cmpltui = M_iw_op[5 : 0] == 48;
  assign M_op_xorhi = M_iw_op[5 : 0] == 60;
  assign M_op_rsv56 = M_iw_op[5 : 0] == 56;
  assign M_op_ldhuio = M_iw_op[5 : 0] == 43;
  assign M_op_rsv63 = M_iw_op[5 : 0] == 63;
  assign M_op_bne = M_iw_op[5 : 0] == 30;
  assign M_op_rsv57 = M_iw_op[5 : 0] == 57;
  assign M_op_call = M_iw_op[5 : 0] == 0;
  assign M_op_ldhu = M_iw_op[5 : 0] == 11;
  assign M_op_flushd = M_iw_op[5 : 0] == 59;
  assign M_op_initd = M_iw_op[5 : 0] == 51;
  assign M_op_rsv10 = M_iw_op[5 : 0] == 10;
  assign M_op_rsv17 = M_iw_op[5 : 0] == 17;
  assign M_op_sth = M_iw_op[5 : 0] == 13;
  assign M_op_rsv25 = M_iw_op[5 : 0] == 25;
  assign M_op_flushi = M_op_opx & (M_iw_opx[5 : 0] == 12);
  assign M_op_mulxuu = M_op_opx & (M_iw_opx[5 : 0] == 7);
  assign M_op_rsvx33 = M_op_opx & (M_iw_opx[5 : 0] == 33);
  assign M_op_wrctl = M_op_opx & (M_iw_opx[5 : 0] == 46);
  assign M_op_roli = M_op_opx & (M_iw_opx[5 : 0] == 2);
  assign M_op_intr = M_op_opx & (M_iw_opx[5 : 0] == 61);
  assign M_op_rsvx43 = M_op_opx & (M_iw_opx[5 : 0] == 43);
  assign M_op_srl = M_op_opx & (M_iw_opx[5 : 0] == 27);
  assign M_op_trap = M_op_opx & (M_iw_opx[5 : 0] == 45);
  assign M_op_rsvx17 = M_op_opx & (M_iw_opx[5 : 0] == 17);
  assign M_op_break = M_op_opx & (M_iw_opx[5 : 0] == 52);
  assign M_op_rdctl = M_op_opx & (M_iw_opx[5 : 0] == 38);
  assign M_op_cmpltu = M_op_opx & (M_iw_opx[5 : 0] == 48);
  assign M_op_callr = M_op_opx & (M_iw_opx[5 : 0] == 29);
  assign M_op_cmpge = M_op_opx & (M_iw_opx[5 : 0] == 8);
  assign M_op_rsvx47 = M_op_opx & (M_iw_opx[5 : 0] == 47);
  assign M_op_and = M_op_opx & (M_iw_opx[5 : 0] == 14);
  assign M_op_rsvx00 = M_op_opx & (M_iw_opx[5 : 0] == 0);
  assign M_op_rsvx56 = M_op_opx & (M_iw_opx[5 : 0] == 56);
  assign M_op_hbreak = M_op_opx & (M_iw_opx[5 : 0] == 53);
  assign M_op_flushp = M_op_opx & (M_iw_opx[5 : 0] == 4);
  assign M_op_nor = M_op_opx & (M_iw_opx[5 : 0] == 6);
  assign M_op_rsvx50 = M_op_opx & (M_iw_opx[5 : 0] == 50);
  assign M_op_initi = M_op_opx & (M_iw_opx[5 : 0] == 41);
  assign M_op_srai = M_op_opx & (M_iw_opx[5 : 0] == 58);
  assign M_op_sync = M_op_opx & (M_iw_opx[5 : 0] == 54);
  assign M_op_rsvx15 = M_op_opx & (M_iw_opx[5 : 0] == 15);
  assign M_op_rsvx55 = M_op_opx & (M_iw_opx[5 : 0] == 55);
  assign M_op_crst = M_op_opx & (M_iw_opx[5 : 0] == 62);
  assign M_op_rsvx42 = M_op_opx & (M_iw_opx[5 : 0] == 42);
  assign M_op_xor = M_op_opx & (M_iw_opx[5 : 0] == 30);
  assign M_op_rsvx34 = M_op_opx & (M_iw_opx[5 : 0] == 34);
  assign M_op_mulxss = M_op_opx & (M_iw_opx[5 : 0] == 31);
  assign M_op_rsvx51 = M_op_opx & (M_iw_opx[5 : 0] == 51);
  assign M_op_rsvx10 = M_op_opx & (M_iw_opx[5 : 0] == 10);
  assign M_op_eret = M_op_opx & (M_iw_opx[5 : 0] == 1);
  assign M_op_rsvx25 = M_op_opx & (M_iw_opx[5 : 0] == 25);
  assign M_op_jmp = M_op_opx & (M_iw_opx[5 : 0] == 13);
  assign M_op_or = M_op_opx & (M_iw_opx[5 : 0] == 22);
  assign M_op_rsvx35 = M_op_opx & (M_iw_opx[5 : 0] == 35);
  assign M_op_sra = M_op_opx & (M_iw_opx[5 : 0] == 59);
  assign M_op_rsvx20 = M_op_opx & (M_iw_opx[5 : 0] == 20);
  assign M_op_slli = M_op_opx & (M_iw_opx[5 : 0] == 18);
  assign M_op_mulxsu = M_op_opx & (M_iw_opx[5 : 0] == 23);
  assign M_op_rsvx21 = M_op_opx & (M_iw_opx[5 : 0] == 21);
  assign M_op_ror = M_op_opx & (M_iw_opx[5 : 0] == 11);
  assign M_op_srli = M_op_opx & (M_iw_opx[5 : 0] == 26);
  assign M_op_sll = M_op_opx & (M_iw_opx[5 : 0] == 19);
  assign M_op_div = M_op_opx & (M_iw_opx[5 : 0] == 37);
  assign M_op_cmplt = M_op_opx & (M_iw_opx[5 : 0] == 16);
  assign M_op_add = M_op_opx & (M_iw_opx[5 : 0] == 49);
  assign M_op_rsvx44 = M_op_opx & (M_iw_opx[5 : 0] == 44);
  assign M_op_bret = M_op_opx & (M_iw_opx[5 : 0] == 9);
  assign M_op_rsvx60 = M_op_opx & (M_iw_opx[5 : 0] == 60);
  assign M_op_rsvx63 = M_op_opx & (M_iw_opx[5 : 0] == 63);
  assign M_op_mul = M_op_opx & (M_iw_opx[5 : 0] == 39);
  assign M_op_cmpgeu = M_op_opx & (M_iw_opx[5 : 0] == 40);
  assign M_op_cmpne = M_op_opx & (M_iw_opx[5 : 0] == 24);
  assign M_op_cmpeq = M_op_opx & (M_iw_opx[5 : 0] == 32);
  assign M_op_ret = M_op_opx & (M_iw_opx[5 : 0] == 5);
  assign M_op_rol = M_op_opx & (M_iw_opx[5 : 0] == 3);
  assign M_op_sub = M_op_opx & (M_iw_opx[5 : 0] == 57);
  assign M_op_nextpc = M_op_opx & (M_iw_opx[5 : 0] == 28);
  assign M_op_divu = M_op_opx & (M_iw_opx[5 : 0] == 36);
  assign A_op_rsv02 = A_iw_op[5 : 0] == 2;
  assign A_op_cmplti = A_iw_op[5 : 0] == 16;
  assign A_op_rsv18 = A_iw_op[5 : 0] == 18;
  assign A_op_rsv26 = A_iw_op[5 : 0] == 26;
  assign A_op_rsv42 = A_iw_op[5 : 0] == 42;
  assign A_op_ldbio = A_iw_op[5 : 0] == 39;
  assign A_op_ldbu = A_iw_op[5 : 0] == 3;
  assign A_op_orhi = A_iw_op[5 : 0] == 52;
  assign A_op_bge = A_iw_op[5 : 0] == 14;
  assign A_op_stc = A_iw_op[5 : 0] == 29;
  assign A_op_br = A_iw_op[5 : 0] == 6;
  assign A_op_ldhio = A_iw_op[5 : 0] == 47;
  assign A_op_rsv41 = A_iw_op[5 : 0] == 41;
  assign A_op_ldwio = A_iw_op[5 : 0] == 55;
  assign A_op_rsv61 = A_iw_op[5 : 0] == 61;
  assign A_op_opx = A_iw_op[5 : 0] == 58;
  assign A_op_stb = A_iw_op[5 : 0] == 5;
  assign A_op_rsv62 = A_iw_op[5 : 0] == 62;
  assign A_op_bltu = A_iw_op[5 : 0] == 54;
  assign A_op_custom = A_iw_op[5 : 0] == 50;
  assign A_op_muli = A_iw_op[5 : 0] == 36;
  assign A_op_xori = A_iw_op[5 : 0] == 28;
  assign A_op_cmpgei = A_iw_op[5 : 0] == 8;
  assign A_op_ldw = A_iw_op[5 : 0] == 23;
  assign A_op_cmpeqi = A_iw_op[5 : 0] == 32;
  assign A_op_ldh = A_iw_op[5 : 0] == 15;
  assign A_op_stw = A_iw_op[5 : 0] == 21;
  assign A_op_rsv09 = A_iw_op[5 : 0] == 9;
  assign A_op_cmpnei = A_iw_op[5 : 0] == 24;
  assign A_op_ldb = A_iw_op[5 : 0] == 7;
  assign A_op_bgeu = A_iw_op[5 : 0] == 46;
  assign A_op_stwio = A_iw_op[5 : 0] == 53;
  assign A_op_rsv33 = A_iw_op[5 : 0] == 33;
  assign A_op_ldl = A_iw_op[5 : 0] == 31;
  assign A_op_andhi = A_iw_op[5 : 0] == 44;
  assign A_op_ldbuio = A_iw_op[5 : 0] == 35;
  assign A_op_rsv34 = A_iw_op[5 : 0] == 34;
  assign A_op_sthio = A_iw_op[5 : 0] == 45;
  assign A_op_cmpgeui = A_iw_op[5 : 0] == 40;
  assign A_op_stbio = A_iw_op[5 : 0] == 37;
  assign A_op_andi = A_iw_op[5 : 0] == 12;
  assign A_op_addi = A_iw_op[5 : 0] == 4;
  assign A_op_flushda = A_iw_op[5 : 0] == 27;
  assign A_op_rsv49 = A_iw_op[5 : 0] == 49;
  assign A_op_jmpi = A_iw_op[5 : 0] == 1;
  assign A_op_initda = A_iw_op[5 : 0] == 19;
  assign A_op_blt = A_iw_op[5 : 0] == 22;
  assign A_op_beq = A_iw_op[5 : 0] == 38;
  assign A_op_ori = A_iw_op[5 : 0] == 20;
  assign A_op_cmpltui = A_iw_op[5 : 0] == 48;
  assign A_op_xorhi = A_iw_op[5 : 0] == 60;
  assign A_op_rsv56 = A_iw_op[5 : 0] == 56;
  assign A_op_ldhuio = A_iw_op[5 : 0] == 43;
  assign A_op_rsv63 = A_iw_op[5 : 0] == 63;
  assign A_op_bne = A_iw_op[5 : 0] == 30;
  assign A_op_rsv57 = A_iw_op[5 : 0] == 57;
  assign A_op_call = A_iw_op[5 : 0] == 0;
  assign A_op_ldhu = A_iw_op[5 : 0] == 11;
  assign A_op_flushd = A_iw_op[5 : 0] == 59;
  assign A_op_initd = A_iw_op[5 : 0] == 51;
  assign A_op_rsv10 = A_iw_op[5 : 0] == 10;
  assign A_op_rsv17 = A_iw_op[5 : 0] == 17;
  assign A_op_sth = A_iw_op[5 : 0] == 13;
  assign A_op_rsv25 = A_iw_op[5 : 0] == 25;
  assign A_op_flushi = A_op_opx & (A_iw_opx[5 : 0] == 12);
  assign A_op_mulxuu = A_op_opx & (A_iw_opx[5 : 0] == 7);
  assign A_op_rsvx33 = A_op_opx & (A_iw_opx[5 : 0] == 33);
  assign A_op_wrctl = A_op_opx & (A_iw_opx[5 : 0] == 46);
  assign A_op_roli = A_op_opx & (A_iw_opx[5 : 0] == 2);
  assign A_op_intr = A_op_opx & (A_iw_opx[5 : 0] == 61);
  assign A_op_rsvx43 = A_op_opx & (A_iw_opx[5 : 0] == 43);
  assign A_op_srl = A_op_opx & (A_iw_opx[5 : 0] == 27);
  assign A_op_trap = A_op_opx & (A_iw_opx[5 : 0] == 45);
  assign A_op_rsvx17 = A_op_opx & (A_iw_opx[5 : 0] == 17);
  assign A_op_break = A_op_opx & (A_iw_opx[5 : 0] == 52);
  assign A_op_rdctl = A_op_opx & (A_iw_opx[5 : 0] == 38);
  assign A_op_cmpltu = A_op_opx & (A_iw_opx[5 : 0] == 48);
  assign A_op_callr = A_op_opx & (A_iw_opx[5 : 0] == 29);
  assign A_op_cmpge = A_op_opx & (A_iw_opx[5 : 0] == 8);
  assign A_op_rsvx47 = A_op_opx & (A_iw_opx[5 : 0] == 47);
  assign A_op_and = A_op_opx & (A_iw_opx[5 : 0] == 14);
  assign A_op_rsvx00 = A_op_opx & (A_iw_opx[5 : 0] == 0);
  assign A_op_rsvx56 = A_op_opx & (A_iw_opx[5 : 0] == 56);
  assign A_op_hbreak = A_op_opx & (A_iw_opx[5 : 0] == 53);
  assign A_op_flushp = A_op_opx & (A_iw_opx[5 : 0] == 4);
  assign A_op_nor = A_op_opx & (A_iw_opx[5 : 0] == 6);
  assign A_op_rsvx50 = A_op_opx & (A_iw_opx[5 : 0] == 50);
  assign A_op_initi = A_op_opx & (A_iw_opx[5 : 0] == 41);
  assign A_op_srai = A_op_opx & (A_iw_opx[5 : 0] == 58);
  assign A_op_sync = A_op_opx & (A_iw_opx[5 : 0] == 54);
  assign A_op_rsvx15 = A_op_opx & (A_iw_opx[5 : 0] == 15);
  assign A_op_rsvx55 = A_op_opx & (A_iw_opx[5 : 0] == 55);
  assign A_op_crst = A_op_opx & (A_iw_opx[5 : 0] == 62);
  assign A_op_rsvx42 = A_op_opx & (A_iw_opx[5 : 0] == 42);
  assign A_op_xor = A_op_opx & (A_iw_opx[5 : 0] == 30);
  assign A_op_rsvx34 = A_op_opx & (A_iw_opx[5 : 0] == 34);
  assign A_op_mulxss = A_op_opx & (A_iw_opx[5 : 0] == 31);
  assign A_op_rsvx51 = A_op_opx & (A_iw_opx[5 : 0] == 51);
  assign A_op_rsvx10 = A_op_opx & (A_iw_opx[5 : 0] == 10);
  assign A_op_eret = A_op_opx & (A_iw_opx[5 : 0] == 1);
  assign A_op_rsvx25 = A_op_opx & (A_iw_opx[5 : 0] == 25);
  assign A_op_jmp = A_op_opx & (A_iw_opx[5 : 0] == 13);
  assign A_op_or = A_op_opx & (A_iw_opx[5 : 0] == 22);
  assign A_op_rsvx35 = A_op_opx & (A_iw_opx[5 : 0] == 35);
  assign A_op_sra = A_op_opx & (A_iw_opx[5 : 0] == 59);
  assign A_op_rsvx20 = A_op_opx & (A_iw_opx[5 : 0] == 20);
  assign A_op_slli = A_op_opx & (A_iw_opx[5 : 0] == 18);
  assign A_op_mulxsu = A_op_opx & (A_iw_opx[5 : 0] == 23);
  assign A_op_rsvx21 = A_op_opx & (A_iw_opx[5 : 0] == 21);
  assign A_op_ror = A_op_opx & (A_iw_opx[5 : 0] == 11);
  assign A_op_srli = A_op_opx & (A_iw_opx[5 : 0] == 26);
  assign A_op_sll = A_op_opx & (A_iw_opx[5 : 0] == 19);
  assign A_op_div = A_op_opx & (A_iw_opx[5 : 0] == 37);
  assign A_op_cmplt = A_op_opx & (A_iw_opx[5 : 0] == 16);
  assign A_op_add = A_op_opx & (A_iw_opx[5 : 0] == 49);
  assign A_op_rsvx44 = A_op_opx & (A_iw_opx[5 : 0] == 44);
  assign A_op_bret = A_op_opx & (A_iw_opx[5 : 0] == 9);
  assign A_op_rsvx60 = A_op_opx & (A_iw_opx[5 : 0] == 60);
  assign A_op_rsvx63 = A_op_opx & (A_iw_opx[5 : 0] == 63);
  assign A_op_mul = A_op_opx & (A_iw_opx[5 : 0] == 39);
  assign A_op_cmpgeu = A_op_opx & (A_iw_opx[5 : 0] == 40);
  assign A_op_cmpne = A_op_opx & (A_iw_opx[5 : 0] == 24);
  assign A_op_cmpeq = A_op_opx & (A_iw_opx[5 : 0] == 32);
  assign A_op_ret = A_op_opx & (A_iw_opx[5 : 0] == 5);
  assign A_op_rol = A_op_opx & (A_iw_opx[5 : 0] == 3);
  assign A_op_sub = A_op_opx & (A_iw_opx[5 : 0] == 57);
  assign A_op_nextpc = A_op_opx & (A_iw_opx[5 : 0] == 28);
  assign A_op_divu = A_op_opx & (A_iw_opx[5 : 0] == 36);
  assign W_op_rsv02 = W_iw_op[5 : 0] == 2;
  assign W_op_cmplti = W_iw_op[5 : 0] == 16;
  assign W_op_rsv18 = W_iw_op[5 : 0] == 18;
  assign W_op_rsv26 = W_iw_op[5 : 0] == 26;
  assign W_op_rsv42 = W_iw_op[5 : 0] == 42;
  assign W_op_ldbio = W_iw_op[5 : 0] == 39;
  assign W_op_ldbu = W_iw_op[5 : 0] == 3;
  assign W_op_orhi = W_iw_op[5 : 0] == 52;
  assign W_op_bge = W_iw_op[5 : 0] == 14;
  assign W_op_stc = W_iw_op[5 : 0] == 29;
  assign W_op_br = W_iw_op[5 : 0] == 6;
  assign W_op_ldhio = W_iw_op[5 : 0] == 47;
  assign W_op_rsv41 = W_iw_op[5 : 0] == 41;
  assign W_op_ldwio = W_iw_op[5 : 0] == 55;
  assign W_op_rsv61 = W_iw_op[5 : 0] == 61;
  assign W_op_opx = W_iw_op[5 : 0] == 58;
  assign W_op_stb = W_iw_op[5 : 0] == 5;
  assign W_op_rsv62 = W_iw_op[5 : 0] == 62;
  assign W_op_bltu = W_iw_op[5 : 0] == 54;
  assign W_op_custom = W_iw_op[5 : 0] == 50;
  assign W_op_muli = W_iw_op[5 : 0] == 36;
  assign W_op_xori = W_iw_op[5 : 0] == 28;
  assign W_op_cmpgei = W_iw_op[5 : 0] == 8;
  assign W_op_ldw = W_iw_op[5 : 0] == 23;
  assign W_op_cmpeqi = W_iw_op[5 : 0] == 32;
  assign W_op_ldh = W_iw_op[5 : 0] == 15;
  assign W_op_stw = W_iw_op[5 : 0] == 21;
  assign W_op_rsv09 = W_iw_op[5 : 0] == 9;
  assign W_op_cmpnei = W_iw_op[5 : 0] == 24;
  assign W_op_ldb = W_iw_op[5 : 0] == 7;
  assign W_op_bgeu = W_iw_op[5 : 0] == 46;
  assign W_op_stwio = W_iw_op[5 : 0] == 53;
  assign W_op_rsv33 = W_iw_op[5 : 0] == 33;
  assign W_op_ldl = W_iw_op[5 : 0] == 31;
  assign W_op_andhi = W_iw_op[5 : 0] == 44;
  assign W_op_ldbuio = W_iw_op[5 : 0] == 35;
  assign W_op_rsv34 = W_iw_op[5 : 0] == 34;
  assign W_op_sthio = W_iw_op[5 : 0] == 45;
  assign W_op_cmpgeui = W_iw_op[5 : 0] == 40;
  assign W_op_stbio = W_iw_op[5 : 0] == 37;
  assign W_op_andi = W_iw_op[5 : 0] == 12;
  assign W_op_addi = W_iw_op[5 : 0] == 4;
  assign W_op_flushda = W_iw_op[5 : 0] == 27;
  assign W_op_rsv49 = W_iw_op[5 : 0] == 49;
  assign W_op_jmpi = W_iw_op[5 : 0] == 1;
  assign W_op_initda = W_iw_op[5 : 0] == 19;
  assign W_op_blt = W_iw_op[5 : 0] == 22;
  assign W_op_beq = W_iw_op[5 : 0] == 38;
  assign W_op_ori = W_iw_op[5 : 0] == 20;
  assign W_op_cmpltui = W_iw_op[5 : 0] == 48;
  assign W_op_xorhi = W_iw_op[5 : 0] == 60;
  assign W_op_rsv56 = W_iw_op[5 : 0] == 56;
  assign W_op_ldhuio = W_iw_op[5 : 0] == 43;
  assign W_op_rsv63 = W_iw_op[5 : 0] == 63;
  assign W_op_bne = W_iw_op[5 : 0] == 30;
  assign W_op_rsv57 = W_iw_op[5 : 0] == 57;
  assign W_op_call = W_iw_op[5 : 0] == 0;
  assign W_op_ldhu = W_iw_op[5 : 0] == 11;
  assign W_op_flushd = W_iw_op[5 : 0] == 59;
  assign W_op_initd = W_iw_op[5 : 0] == 51;
  assign W_op_rsv10 = W_iw_op[5 : 0] == 10;
  assign W_op_rsv17 = W_iw_op[5 : 0] == 17;
  assign W_op_sth = W_iw_op[5 : 0] == 13;
  assign W_op_rsv25 = W_iw_op[5 : 0] == 25;
  assign W_op_flushi = W_op_opx & (W_iw_opx[5 : 0] == 12);
  assign W_op_mulxuu = W_op_opx & (W_iw_opx[5 : 0] == 7);
  assign W_op_rsvx33 = W_op_opx & (W_iw_opx[5 : 0] == 33);
  assign W_op_wrctl = W_op_opx & (W_iw_opx[5 : 0] == 46);
  assign W_op_roli = W_op_opx & (W_iw_opx[5 : 0] == 2);
  assign W_op_intr = W_op_opx & (W_iw_opx[5 : 0] == 61);
  assign W_op_rsvx43 = W_op_opx & (W_iw_opx[5 : 0] == 43);
  assign W_op_srl = W_op_opx & (W_iw_opx[5 : 0] == 27);
  assign W_op_trap = W_op_opx & (W_iw_opx[5 : 0] == 45);
  assign W_op_rsvx17 = W_op_opx & (W_iw_opx[5 : 0] == 17);
  assign W_op_break = W_op_opx & (W_iw_opx[5 : 0] == 52);
  assign W_op_rdctl = W_op_opx & (W_iw_opx[5 : 0] == 38);
  assign W_op_cmpltu = W_op_opx & (W_iw_opx[5 : 0] == 48);
  assign W_op_callr = W_op_opx & (W_iw_opx[5 : 0] == 29);
  assign W_op_cmpge = W_op_opx & (W_iw_opx[5 : 0] == 8);
  assign W_op_rsvx47 = W_op_opx & (W_iw_opx[5 : 0] == 47);
  assign W_op_and = W_op_opx & (W_iw_opx[5 : 0] == 14);
  assign W_op_rsvx00 = W_op_opx & (W_iw_opx[5 : 0] == 0);
  assign W_op_rsvx56 = W_op_opx & (W_iw_opx[5 : 0] == 56);
  assign W_op_hbreak = W_op_opx & (W_iw_opx[5 : 0] == 53);
  assign W_op_flushp = W_op_opx & (W_iw_opx[5 : 0] == 4);
  assign W_op_nor = W_op_opx & (W_iw_opx[5 : 0] == 6);
  assign W_op_rsvx50 = W_op_opx & (W_iw_opx[5 : 0] == 50);
  assign W_op_initi = W_op_opx & (W_iw_opx[5 : 0] == 41);
  assign W_op_srai = W_op_opx & (W_iw_opx[5 : 0] == 58);
  assign W_op_sync = W_op_opx & (W_iw_opx[5 : 0] == 54);
  assign W_op_rsvx15 = W_op_opx & (W_iw_opx[5 : 0] == 15);
  assign W_op_rsvx55 = W_op_opx & (W_iw_opx[5 : 0] == 55);
  assign W_op_crst = W_op_opx & (W_iw_opx[5 : 0] == 62);
  assign W_op_rsvx42 = W_op_opx & (W_iw_opx[5 : 0] == 42);
  assign W_op_xor = W_op_opx & (W_iw_opx[5 : 0] == 30);
  assign W_op_rsvx34 = W_op_opx & (W_iw_opx[5 : 0] == 34);
  assign W_op_mulxss = W_op_opx & (W_iw_opx[5 : 0] == 31);
  assign W_op_rsvx51 = W_op_opx & (W_iw_opx[5 : 0] == 51);
  assign W_op_rsvx10 = W_op_opx & (W_iw_opx[5 : 0] == 10);
  assign W_op_eret = W_op_opx & (W_iw_opx[5 : 0] == 1);
  assign W_op_rsvx25 = W_op_opx & (W_iw_opx[5 : 0] == 25);
  assign W_op_jmp = W_op_opx & (W_iw_opx[5 : 0] == 13);
  assign W_op_or = W_op_opx & (W_iw_opx[5 : 0] == 22);
  assign W_op_rsvx35 = W_op_opx & (W_iw_opx[5 : 0] == 35);
  assign W_op_sra = W_op_opx & (W_iw_opx[5 : 0] == 59);
  assign W_op_rsvx20 = W_op_opx & (W_iw_opx[5 : 0] == 20);
  assign W_op_slli = W_op_opx & (W_iw_opx[5 : 0] == 18);
  assign W_op_mulxsu = W_op_opx & (W_iw_opx[5 : 0] == 23);
  assign W_op_rsvx21 = W_op_opx & (W_iw_opx[5 : 0] == 21);
  assign W_op_ror = W_op_opx & (W_iw_opx[5 : 0] == 11);
  assign W_op_srli = W_op_opx & (W_iw_opx[5 : 0] == 26);
  assign W_op_sll = W_op_opx & (W_iw_opx[5 : 0] == 19);
  assign W_op_div = W_op_opx & (W_iw_opx[5 : 0] == 37);
  assign W_op_cmplt = W_op_opx & (W_iw_opx[5 : 0] == 16);
  assign W_op_add = W_op_opx & (W_iw_opx[5 : 0] == 49);
  assign W_op_rsvx44 = W_op_opx & (W_iw_opx[5 : 0] == 44);
  assign W_op_bret = W_op_opx & (W_iw_opx[5 : 0] == 9);
  assign W_op_rsvx60 = W_op_opx & (W_iw_opx[5 : 0] == 60);
  assign W_op_rsvx63 = W_op_opx & (W_iw_opx[5 : 0] == 63);
  assign W_op_mul = W_op_opx & (W_iw_opx[5 : 0] == 39);
  assign W_op_cmpgeu = W_op_opx & (W_iw_opx[5 : 0] == 40);
  assign W_op_cmpne = W_op_opx & (W_iw_opx[5 : 0] == 24);
  assign W_op_cmpeq = W_op_opx & (W_iw_opx[5 : 0] == 32);
  assign W_op_ret = W_op_opx & (W_iw_opx[5 : 0] == 5);
  assign W_op_rol = W_op_opx & (W_iw_opx[5 : 0] == 3);
  assign W_op_sub = W_op_opx & (W_iw_opx[5 : 0] == 57);
  assign W_op_nextpc = W_op_opx & (W_iw_opx[5 : 0] == 28);
  assign W_op_divu = W_op_opx & (W_iw_opx[5 : 0] == 36);
  assign F_iw_a = F_iw[31 : 27];
  assign F_iw_b = F_iw[26 : 22];
  assign F_iw_c = F_iw[21 : 17];
  assign F_iw_custom_n = F_iw[13 : 6];
  assign F_iw_custom_readra = F_iw[16];
  assign F_iw_custom_readrb = F_iw[15];
  assign F_iw_custom_writerc = F_iw[14];
  assign F_iw_opx = F_iw[16 : 11];
  assign F_iw_shift_imm5 = F_iw[10 : 6];
  assign F_iw_control_regnum = F_iw[8 : 6];
  assign F_iw_imm16 = F_iw[21 : 6];
  assign F_iw_op = F_iw[5 : 0];
  assign F_iw_memsz = F_iw[4 : 3];
  assign F_mem8 = F_iw_memsz == 2'b00;
  assign F_mem16 = F_iw_memsz == 2'b01;
  assign F_mem32 = F_iw_memsz[1] == 1'b1;
  assign F_ram_iw_a = F_ram_iw[31 : 27];
  assign F_ram_iw_b = F_ram_iw[26 : 22];
  assign F_ram_iw_c = F_ram_iw[21 : 17];
  assign F_ram_iw_custom_n = F_ram_iw[13 : 6];
  assign F_ram_iw_custom_readra = F_ram_iw[16];
  assign F_ram_iw_custom_readrb = F_ram_iw[15];
  assign F_ram_iw_custom_writerc = F_ram_iw[14];
  assign F_ram_iw_opx = F_ram_iw[16 : 11];
  assign F_ram_iw_shift_imm5 = F_ram_iw[10 : 6];
  assign F_ram_iw_control_regnum = F_ram_iw[8 : 6];
  assign F_ram_iw_imm16 = F_ram_iw[21 : 6];
  assign F_ram_iw_op = F_ram_iw[5 : 0];
  assign F_ram_iw_memsz = F_ram_iw[4 : 3];
  assign F_ram_mem8 = F_ram_iw_memsz == 2'b00;
  assign F_ram_mem16 = F_ram_iw_memsz == 2'b01;
  assign F_ram_mem32 = F_ram_iw_memsz[1] == 1'b1;
  assign D_iw_a = D_iw[31 : 27];
  assign D_iw_b = D_iw[26 : 22];
  assign D_iw_c = D_iw[21 : 17];
  assign D_iw_custom_n = D_iw[13 : 6];
  assign D_iw_custom_readra = D_iw[16];
  assign D_iw_custom_readrb = D_iw[15];
  assign D_iw_custom_writerc = D_iw[14];
  assign D_iw_opx = D_iw[16 : 11];
  assign D_iw_shift_imm5 = D_iw[10 : 6];
  assign D_iw_control_regnum = D_iw[8 : 6];
  assign D_iw_imm16 = D_iw[21 : 6];
  assign D_iw_op = D_iw[5 : 0];
  assign D_iw_memsz = D_iw[4 : 3];
  assign D_mem8 = D_iw_memsz == 2'b00;
  assign D_mem16 = D_iw_memsz == 2'b01;
  assign D_mem32 = D_iw_memsz[1] == 1'b1;
  assign E_iw_a = E_iw[31 : 27];
  assign E_iw_b = E_iw[26 : 22];
  assign E_iw_c = E_iw[21 : 17];
  assign E_iw_custom_n = E_iw[13 : 6];
  assign E_iw_custom_readra = E_iw[16];
  assign E_iw_custom_readrb = E_iw[15];
  assign E_iw_custom_writerc = E_iw[14];
  assign E_iw_opx = E_iw[16 : 11];
  assign E_iw_shift_imm5 = E_iw[10 : 6];
  assign E_iw_control_regnum = E_iw[8 : 6];
  assign E_iw_imm16 = E_iw[21 : 6];
  assign E_iw_op = E_iw[5 : 0];
  assign E_iw_memsz = E_iw[4 : 3];
  assign E_mem8 = E_iw_memsz == 2'b00;
  assign E_mem16 = E_iw_memsz == 2'b01;
  assign E_mem32 = E_iw_memsz[1] == 1'b1;
  assign M_iw_a = M_iw[31 : 27];
  assign M_iw_b = M_iw[26 : 22];
  assign M_iw_c = M_iw[21 : 17];
  assign M_iw_custom_n = M_iw[13 : 6];
  assign M_iw_custom_readra = M_iw[16];
  assign M_iw_custom_readrb = M_iw[15];
  assign M_iw_custom_writerc = M_iw[14];
  assign M_iw_opx = M_iw[16 : 11];
  assign M_iw_shift_imm5 = M_iw[10 : 6];
  assign M_iw_control_regnum = M_iw[8 : 6];
  assign M_iw_imm16 = M_iw[21 : 6];
  assign M_iw_op = M_iw[5 : 0];
  assign M_iw_memsz = M_iw[4 : 3];
  assign M_mem8 = M_iw_memsz == 2'b00;
  assign M_mem16 = M_iw_memsz == 2'b01;
  assign M_mem32 = M_iw_memsz[1] == 1'b1;
  assign A_iw_a = A_iw[31 : 27];
  assign A_iw_b = A_iw[26 : 22];
  assign A_iw_c = A_iw[21 : 17];
  assign A_iw_custom_n = A_iw[13 : 6];
  assign A_iw_custom_readra = A_iw[16];
  assign A_iw_custom_readrb = A_iw[15];
  assign A_iw_custom_writerc = A_iw[14];
  assign A_iw_opx = A_iw[16 : 11];
  assign A_iw_shift_imm5 = A_iw[10 : 6];
  assign A_iw_control_regnum = A_iw[8 : 6];
  assign A_iw_imm16 = A_iw[21 : 6];
  assign A_iw_op = A_iw[5 : 0];
  assign A_iw_memsz = A_iw[4 : 3];
  assign A_mem8 = A_iw_memsz == 2'b00;
  assign A_mem16 = A_iw_memsz == 2'b01;
  assign A_mem32 = A_iw_memsz[1] == 1'b1;
  assign W_iw_a = W_iw[31 : 27];
  assign W_iw_b = W_iw[26 : 22];
  assign W_iw_c = W_iw[21 : 17];
  assign W_iw_custom_n = W_iw[13 : 6];
  assign W_iw_custom_readra = W_iw[16];
  assign W_iw_custom_readrb = W_iw[15];
  assign W_iw_custom_writerc = W_iw[14];
  assign W_iw_opx = W_iw[16 : 11];
  assign W_iw_shift_imm5 = W_iw[10 : 6];
  assign W_iw_control_regnum = W_iw[8 : 6];
  assign W_iw_imm16 = W_iw[21 : 6];
  assign W_iw_op = W_iw[5 : 0];
  assign W_iw_memsz = W_iw[4 : 3];
  assign W_mem8 = W_iw_memsz == 2'b00;
  assign W_mem16 = W_iw_memsz == 2'b01;
  assign W_mem32 = W_iw_memsz[1] == 1'b1;
  assign F_stall = D_stall;
  assign F_en = ~F_stall;
  assign F_iw = (latched_oci_tb_hbreak_req & hbreak_enabled) ? 4040762 :
    1'b0                                 ? 127034 :
    (intr_req)                                 ? 3926074 : 
    F_ram_iw;

  assign F_kill = D_refetch | M_pipe_flush | E_valid_jmp_indirect |
    ((D_br_pred_taken | D_ctrl_uncond_cti) & D_issue);

  assign F_br_taken_waddr_partial = F_pc_plus_one[9 : 0] + 
    F_ram_iw_imm16[11 : 2];

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_inst_ram_hit <= 0;
      else if (D_en)
          D_inst_ram_hit <= F_inst_ram_hit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_issue <= 0;
      else if (D_en)
          D_issue <= F_issue;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_kill <= 0;
      else if (D_en)
          D_kill <= F_kill;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_br_taken_waddr_partial <= 0;
      else if (D_en)
          D_br_taken_waddr_partial <= F_br_taken_waddr_partial;
    end


  assign D_refetch = ~D_inst_ram_hit & ~D_kill;
  assign D_br_offset_sex = {{16 {D_iw_imm16[15]}}, D_iw_imm16[15 : 12]};
  assign D_br_offset_remaining = D_br_offset_sex[3 : 0];
  assign D_br_taken_waddr = { D_pc_plus_one[13 : 10] +
    D_br_offset_remaining + 
    D_br_taken_waddr_partial[10],
    D_br_taken_waddr_partial[9 : 0]};

  assign D_br_taken_baddr = {D_br_taken_waddr, 2'b00};
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_br_taken_baddr <= 0;
      else if (E_en)
          E_br_taken_baddr <= D_br_taken_baddr;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_br_taken_baddr <= 0;
      else if (M_en)
          M_br_taken_baddr <= E_br_taken_baddr;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_br_taken_baddr <= 0;
      else if (A_en)
          A_br_taken_baddr <= M_br_taken_baddr;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          W_br_taken_baddr <= 0;
      else if (1'b1)
          W_br_taken_baddr <= A_br_taken_baddr;
    end


  assign F_pcb_nxt = {F_pc_nxt, 2'b00};
  assign F_pcb = {F_pc, 2'b00};
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          F_pc <= 0;
      else if (F_en)
          F_pc <= F_pc_nxt;
    end


  assign F_pc_plus_one = F_pc + 1;
  assign F_ic_data_rd_addr_nxt = F_pc_nxt[9 : 0];
//cpu_ic_data, which is an nios2_sdp_ram
cpu_ic_data_module cpu_ic_data
  (
    .clock     (clk),
    .data      (i_readdata_d1),
    .q         (F_ic_iw),
    .rdaddress (F_ic_data_rd_addr_nxt),
    .rden      (F_en),
    .wraddress ({ic_fill_line, ic_fill_dp_offset}),
    .wren      (i_readdatavalid_d1)
  );

  assign F_ic_tag_rd_addr_nxt = F_pc_nxt[9 : 3];
  assign ic_tag_clr_valid_bits_nxt = (M_ctrl_invalidate_i & M_valid) | D_ic_fill_starting | reset_d1;
  assign ic_fill_valid_bits_nxt = ic_tag_clr_valid_bits_nxt ? 0 :
    D_ic_fill_starting_d1     ? ic_fill_valid_bit_new : 
    (ic_fill_valid_bits | ic_fill_valid_bit_new);

  assign ic_fill_valid_bits_en = ic_tag_clr_valid_bits_nxt | D_ic_fill_starting_d1 | 
    i_readdatavalid_d1;

  assign ic_tag_wraddress_nxt = reset_d1                ? 1 :
    (M_ctrl_crst & M_valid)              ? 0 :
    (M_ctrl_invalidate_i & M_valid)        ? M_alu_result[11 : 5] :
    D_ic_fill_starting      ? D_pc_line_field :
    ic_fill_line;

  assign ic_tag_wren = ic_tag_clr_valid_bits | i_readdatavalid_d1;
  assign ic_tag_wrdata = {ic_fill_tag, ic_fill_valid_bits};
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          reset_d1 <= 1;
      else if (1)
          reset_d1 <= 0;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_tag_clr_valid_bits <= 1;
      else if (1'b1)
          ic_tag_clr_valid_bits <= ic_tag_clr_valid_bits_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_valid_bits <= 0;
      else if (ic_fill_valid_bits_en)
          ic_fill_valid_bits <= ic_fill_valid_bits_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_tag_wraddress <= 0;
      else if (1'b1)
          ic_tag_wraddress <= ic_tag_wraddress_nxt;
    end


//cpu_ic_tag, which is an nios2_sdp_ram
cpu_ic_tag_module cpu_ic_tag
  (
    .clock     (clk),
    .data      (ic_tag_wrdata),
    .q         (F_ic_tag_rd),
    .rdaddress (F_ic_tag_rd_addr_nxt),
    .rden      (F_en),
    .wraddress (ic_tag_wraddress),
    .wren      (ic_tag_wren)
  );

//synthesis translate_off
`ifdef NO_PLI
defparam cpu_ic_tag.lpm_file = "cpu_ic_tag_ram.dat";
`else
defparam cpu_ic_tag.lpm_file = "cpu_ic_tag_ram.hex";
`endif
//synthesis translate_on
//synthesis read_comments_as_HDL on
//defparam cpu_ic_tag.lpm_file = "cpu_ic_tag_ram.mif";
//synthesis read_comments_as_HDL off
  assign F_ic_tag_field = F_ic_tag_rd[11 : 8];
  assign F_ic_valid_bits = F_ic_tag_rd[7 : 0];
  assign F_ic_desired_tag = F_pc[13 : 10];
  assign F_ic_valid = (F_pc[2 : 0] == 3'd0)? F_ic_valid_bits[0] :
    (F_pc[2 : 0] == 3'd1)? F_ic_valid_bits[1] :
    (F_pc[2 : 0] == 3'd2)? F_ic_valid_bits[2] :
    (F_pc[2 : 0] == 3'd3)? F_ic_valid_bits[3] :
    (F_pc[2 : 0] == 3'd4)? F_ic_valid_bits[4] :
    (F_pc[2 : 0] == 3'd5)? F_ic_valid_bits[5] :
    (F_pc[2 : 0] == 3'd6)? F_ic_valid_bits[6] :
    F_ic_valid_bits[7];

  assign F_ic_hit = F_ic_valid & (F_ic_desired_tag == F_ic_tag_field);
  assign F_pc_tag_field = F_pc[13 : 10];
  assign F_pc_line_field = F_pc[9 : 3];
  assign D_pc_tag_field = D_pc[13 : 10];
  assign D_pc_line_field = D_pc[9 : 3];
  assign D_pc_offset_field = D_pc[2 : 0];
  assign D_ic_want_fill_unfiltered = ~D_inst_ram_hit & ~D_kill & ~M_pipe_flush;
  assign ic_fill_prevent_refill_nxt = D_ic_fill_starting | (ic_fill_prevent_refill & ~(M_ctrl_invalidate_i & M_valid));
  assign F_ic_fill_same_tag_line = (F_pc_tag_field == ic_fill_tag) & (F_pc_line_field == ic_fill_line);
  assign D_ic_fill_ignore = ic_fill_prevent_refill & D_ic_fill_same_tag_line;
  assign D_ic_fill_starting = ~ic_fill_active & D_ic_want_fill & ~D_ic_fill_ignore;
  assign ic_fill_done = ic_fill_dp_last_word & i_readdatavalid_d1;
  assign ic_fill_active_nxt = D_ic_fill_starting | (ic_fill_active & ~ic_fill_done);
  assign ic_fill_dp_last_word = ic_fill_dp_offset_nxt == ic_fill_initial_offset;
  assign ic_fill_dp_offset_en = D_ic_fill_starting_d1 | i_readdatavalid_d1;
  assign ic_fill_dp_offset_nxt = D_ic_fill_starting_d1 ? 
    ic_fill_initial_offset : 
    (ic_fill_dp_offset + 1);

  assign ic_fill_ap_offset_nxt = ic_fill_req_accepted ? (ic_fill_ap_offset + 1) :
    D_ic_fill_starting   ? D_pc_offset_field :
    ic_fill_ap_offset;

  assign ic_fill_ap_cnt_nxt = ic_fill_req_accepted ? (ic_fill_ap_cnt + 1) :
    D_ic_fill_starting   ? 1 :
    ic_fill_ap_cnt;

  assign ic_fill_ap_last_word = ic_fill_ap_cnt[3];
  assign ic_fill_req_accepted = i_read & ~i_waitrequest;
  assign i_read_nxt = D_ic_fill_starting | 
    (i_read & (i_waitrequest | ~ic_fill_ap_last_word));

  assign i_address = {ic_fill_tag, 
    ic_fill_line[6 : 0],
    ic_fill_ap_offset, 
    2'b00};

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_ap_offset <= 0;
      else if (1'b1)
          ic_fill_ap_offset <= ic_fill_ap_offset_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_ap_cnt <= 0;
      else if (1'b1)
          ic_fill_ap_cnt <= ic_fill_ap_cnt_nxt;
    end


  assign ic_fill_valid_bit_new = (ic_fill_dp_offset_nxt == 3'd0)? 8'b00000001 :
    (ic_fill_dp_offset_nxt == 3'd1)? 8'b00000010 :
    (ic_fill_dp_offset_nxt == 3'd2)? 8'b00000100 :
    (ic_fill_dp_offset_nxt == 3'd3)? 8'b00001000 :
    (ic_fill_dp_offset_nxt == 3'd4)? 8'b00010000 :
    (ic_fill_dp_offset_nxt == 3'd5)? 8'b00100000 :
    (ic_fill_dp_offset_nxt == 3'd6)? 8'b01000000 :
    8'b10000000;

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_ic_fill_starting_d1 <= 0;
      else if (1'b1)
          D_ic_fill_starting_d1 <= D_ic_fill_starting;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_ic_fill_same_tag_line <= 0;
      else if (D_en)
          D_ic_fill_same_tag_line <= F_ic_fill_same_tag_line;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_active <= 0;
      else if (1'b1)
          ic_fill_active <= ic_fill_active_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_prevent_refill <= 0;
      else if (1'b1)
          ic_fill_prevent_refill <= ic_fill_prevent_refill_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_tag <= 0;
      else if (D_ic_fill_starting)
          ic_fill_tag <= D_pc_tag_field;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_line <= 0;
      else if (D_ic_fill_starting)
          ic_fill_line <= D_pc_line_field;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_initial_offset <= 0;
      else if (D_ic_fill_starting)
          ic_fill_initial_offset <= D_pc_offset_field;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_dp_offset <= 0;
      else if (ic_fill_dp_offset_en)
          ic_fill_dp_offset <= ic_fill_dp_offset_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          i_readdata_d1 <= 0;
      else if (1'b1)
          i_readdata_d1 <= i_readdata;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          i_readdatavalid_d1 <= 0;
      else if (1'b1)
          i_readdatavalid_d1 <= i_readdatavalid;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          i_read <= 0;
      else if (1'b1)
          i_read <= i_read_nxt;
    end


  assign F_sel_instruction_master = 1'b1;
  assign F_ram_iw = F_ic_iw;
  assign F_inst_ram_hit = (F_ic_hit & ~(A_valid_crst)) | 
    ~F_sel_instruction_master;

  assign F_issue = F_inst_ram_hit & ~F_kill;
  assign F_bht_ptr_nxt = F_pc_nxt[7 : 0] ^ 
    M_br_cond_taken_history[7 : 0];

//cpu_bht, which is an nios2_sdp_ram
cpu_bht_module cpu_bht
  (
    .clock     (clk),
    .data      (M_bht_wr_data_filtered),
    .q         (F_bht_data),
    .rdaddress (F_bht_ptr_nxt),
    .rden      (F_en),
    .wraddress (M_bht_ptr_filtered),
    .wren      (M_bht_wr_en_filtered)
  );

//synthesis translate_off
`ifdef NO_PLI
defparam cpu_bht.lpm_file = "cpu_bht_ram.dat";
`else
defparam cpu_bht.lpm_file = "cpu_bht_ram.hex";
`endif
//synthesis translate_on
//synthesis read_comments_as_HDL on
//defparam cpu_bht.lpm_file = "cpu_bht_ram.mif";
//synthesis read_comments_as_HDL off
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_bht_data <= 0;
      else if (D_en)
          D_bht_data <= F_bht_data;
    end


  assign D_br_cond_pred_taken = D_bht_data[1] == 0;
  assign D_br_pred_taken = D_ctrl_br & (D_ctrl_br_uncond | D_br_cond_pred_taken);
  assign D_br_pred_not_taken = D_ctrl_br_cond & !D_br_cond_pred_taken;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          F_bht_ptr <= 0;
      else if (F_en)
          F_bht_ptr <= F_bht_ptr_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_bht_ptr <= 0;
      else if (D_en)
          D_bht_ptr <= F_bht_ptr;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_bht_data <= 0;
      else if (E_en)
          E_bht_data <= D_bht_data;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_bht_ptr <= 0;
      else if (E_en)
          E_bht_ptr <= D_bht_ptr;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_bht_data <= 0;
      else if (M_en)
          M_bht_data <= E_bht_data;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_bht_ptr_unfiltered <= 0;
      else if (M_en)
          M_bht_ptr_unfiltered <= E_bht_ptr;
    end


  assign E_br_cond_pred_taken = E_bht_data[1] == 0;
  assign E_br_actually_taken = E_cmp_result;
  assign E_br_mispredict = E_ctrl_br_cond & (E_br_cond_pred_taken != E_br_actually_taken);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_br_mispredict <= 0;
      else if (M_en)
          M_br_mispredict <= E_br_mispredict;
    end


  assign E_br_cond_taken_history = E_add_br_to_taken_history_filtered ? 
    { M_br_cond_taken_history[6 : 0], 
    E_br_actually_taken } :
    M_br_cond_taken_history;

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_br_cond_taken_history <= 0;
      else if (M_en)
          M_br_cond_taken_history <= E_br_cond_taken_history;
    end


  assign M_bht_wr_data_unfiltered = (({M_bht_data, (M_br_mispredict & M_valid_from_E)}) == {2'd0, 1'b0})? 2'd1 :
    (({M_bht_data, (M_br_mispredict & M_valid_from_E)}) == {2'd0, 1'b1})? 2'd2 :
    (({M_bht_data, (M_br_mispredict & M_valid_from_E)}) == {2'd1, 1'b0})? 2'd1 :
    (({M_bht_data, (M_br_mispredict & M_valid_from_E)}) == {2'd1, 1'b1})? 2'd0 :
    (({M_bht_data, (M_br_mispredict & M_valid_from_E)}) == {2'd2, 1'b0})? 2'd3 :
    (({M_bht_data, (M_br_mispredict & M_valid_from_E)}) == {2'd2, 1'b1})? 2'd0 :
    (({M_bht_data, (M_br_mispredict & M_valid_from_E)}) == {2'd3, 1'b0})? 2'd3 :
    2'd2;

  assign M_bht_wr_en_unfiltered = M_ctrl_br_cond & M_valid_from_E;
  assign E_add_br_to_taken_history_unfiltered = E_ctrl_br_cond & E_valid;
  assign D_pcb = {D_pc, 2'b00};
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_pcb <= 0;
      else if (E_en)
          E_pcb <= D_pcb;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_pcb <= 0;
      else if (M_en)
          M_pcb <= E_pcb;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_pcb <= 0;
      else if (A_en)
          A_pcb <= M_pcb;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          W_pcb <= 0;
      else if (1'b1)
          W_pcb <= A_pcb;
    end


  assign D_dep_stall = D_data_depend & D_issue & ~M_pipe_flush;
  assign D_stall = D_dep_stall | E_stall;
  assign D_en = ~D_stall;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_iw <= 0;
      else if (D_en)
          D_iw <= F_iw;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_pc <= 0;
      else if (D_en)
          D_pc <= F_pc;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_pc_plus_one <= 0;
      else if (D_en)
          D_pc_plus_one <= F_pc_plus_one;
    end


  assign D_valid = D_issue & ~D_data_depend & ~M_pipe_flush;
  assign D_jmp_direct_target_waddr = D_iw[31 : 6];
  assign D_jmp_direct_target_baddr = {D_jmp_direct_target_waddr, 2'b00};
  assign D_extra_pc = D_br_pred_not_taken ? D_br_taken_waddr : 
    D_pc_plus_one;

  assign D_extra_pcb = {D_extra_pc, 2'b00};
  assign E_stall = M_stall;
  assign E_en = ~E_stall;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_valid_from_D <= 0;
      else if (E_en)
          E_valid_from_D <= D_valid;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_iw <= 0;
      else if (E_en)
          E_iw <= D_iw;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_dst_regnum <= 0;
      else if (E_en)
          E_dst_regnum <= D_dst_regnum;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_wr_dst_reg_from_D <= 0;
      else if (E_en)
          E_wr_dst_reg_from_D <= D_wr_dst_reg;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_extra_pc <= 0;
      else if (E_en)
          E_extra_pc <= D_extra_pc;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_pc <= 0;
      else if (E_en)
          E_pc <= D_pc;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_valid_jmp_indirect <= 0;
      else if (E_en)
          E_valid_jmp_indirect <= D_ctrl_jmp_indirect & D_valid;
    end


  assign E_extra_pcb = {E_extra_pc, 2'b00};
  assign E_valid = E_valid_from_D & ~E_cancel;
  assign E_wr_dst_reg = E_wr_dst_reg_from_D & ~E_cancel;
  assign E_valid_prior_to_hbreak = E_valid_from_D & ~M_pipe_flush;
  assign E_cancel = M_pipe_flush | E_hbreak_req;
  assign M_pipe_flush_nxt = (E_valid & (E_br_mispredict | E_ctrl_flush_pipe_always)) |
    (E_valid_prior_to_hbreak & E_hbreak_req);

  assign M_pipe_flush_waddr_nxt = E_hbreak_req        ? E_pc                       :
    E_ctrl_jmp_indirect ? E_src1[15 : 2]        :
    E_ctrl_crst         ? 0 :
    E_ctrl_exception    ? 8   :
    E_ctrl_break        ? 8200 :
    E_extra_pc;

  assign M_pipe_flush_baddr_nxt = {M_pipe_flush_waddr_nxt, 2'b00};
  assign E_sel_data_master = 1'b1;
  assign M_stall = A_stall;
  assign M_en = ~M_stall;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_valid_from_E <= 0;
      else if (M_en)
          M_valid_from_E <= E_valid;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_iw <= 0;
      else if (M_en)
          M_iw <= E_iw;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_mem_byte_en <= 0;
      else if (M_en)
          M_mem_byte_en <= E_mem_byte_en;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_alu_result <= 0;
      else if (M_en)
          M_alu_result <= E_alu_result;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_st_data <= 0;
      else if (M_en)
          M_st_data <= E_st_data;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_dst_regnum <= 0;
      else if (M_en)
          M_dst_regnum <= E_dst_regnum;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_cmp_result <= 0;
      else if (M_en)
          M_cmp_result <= E_cmp_result;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_wr_dst_reg_from_E <= 0;
      else if (M_en)
          M_wr_dst_reg_from_E <= E_wr_dst_reg;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_target_pcb <= 0;
      else if (M_en)
          M_target_pcb <= E_src1[15 : 0];
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_pipe_flush <= 1'b1;
      else if (M_en)
          M_pipe_flush <= M_pipe_flush_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_pipe_flush_waddr <= 0;
      else if (M_en)
          M_pipe_flush_waddr <= M_pipe_flush_waddr_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_sel_data_master <= 0;
      else if (M_en)
          M_sel_data_master <= E_sel_data_master;
    end


  assign M_pipe_flush_baddr = {M_pipe_flush_waddr, 2'b00};
  assign M_mem_baddr = M_alu_result[15 : 0];
  assign M_exc_any = 1'b0;
  assign M_ram_rd_data = M_dc_rd_data;
  assign M_fwd_reg_data = M_alu_result;
  assign M_inst_result = (M_ctrl_rdctl_inst)? M_control_rd_data :
    (M_ctrl_mem)? M_ram_rd_data :
    M_alu_result;

  assign M_ld_align_sh16 = (M_ctrl_ld8 | M_ctrl_ld16) & M_mem_baddr[1] &
    ~M_exc_any;

  assign M_ld_align_sh8 = M_ctrl_ld8 & M_mem_baddr[0] &
    ~M_exc_any;

  assign M_ld_align_byte1_fill = M_ctrl_ld8 & ~M_exc_any;
  assign M_ld_align_byte2_byte3_fill = M_ctrl_ld8_ld16 & ~M_exc_any;
  assign M_cancel = 1'b0;
  assign M_valid = M_valid_from_E & ~M_cancel;
  assign M_wr_dst_reg = M_wr_dst_reg_from_E & ~M_cancel;
  assign A_stall = A_mem_stall|A_mul_stall|A_div_stall|A_shift_rot_stall;
  assign A_en = ~A_stall;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_valid <= 0;
      else if (A_en)
          A_valid <= M_valid;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_iw <= 0;
      else if (A_en)
          A_iw <= M_iw;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_inst_result <= 0;
      else if (A_en)
          A_inst_result <= M_inst_result;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_mem_byte_en <= 0;
      else if (A_en)
          A_mem_byte_en <= M_mem_byte_en;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_st_data <= 0;
      else if (A_en)
          A_st_data <= M_st_data;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_dst_regnum_from_M <= 0;
      else if (A_en)
          A_dst_regnum_from_M <= M_dst_regnum;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ld_align_sh16 <= 0;
      else if (A_en)
          A_ld_align_sh16 <= M_ld_align_sh16;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ld_align_sh8 <= 0;
      else if (A_en)
          A_ld_align_sh8 <= M_ld_align_sh8;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ld_align_byte1_fill <= 0;
      else if (A_en)
          A_ld_align_byte1_fill <= M_ld_align_byte1_fill;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ld_align_byte2_byte3_fill <= 0;
      else if (A_en)
          A_ld_align_byte2_byte3_fill <= M_ld_align_byte2_byte3_fill;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_cmp_result <= 0;
      else if (A_en)
          A_cmp_result <= M_cmp_result;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_mem_baddr <= 0;
      else if (A_en)
          A_mem_baddr <= M_mem_baddr;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_wr_dst_reg_from_M <= 1'b1;
      else if (A_en)
          A_wr_dst_reg_from_M <= M_wr_dst_reg;
    end


  assign A_pipe_flush = 1'b0;
  assign A_pipe_flush_waddr = 0;
  assign A_valid_crst = 0;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_div_done <= 0;
      else if (1'b1)
          A_div_done <= A_en ? 0 : A_div_quot_ready;
    end


  assign A_slow_inst_result_en = A_ctrl_div|A_ctrl_ld;
  assign A_slow_inst_sel_nxt = A_en ? 0 : A_ctrl_div|A_dc_av_rd_req;
  assign A_slow_inst_result_nxt = (A_ctrl_div)? A_div_quot :
    A_slow_ld_data_aligned_nxt;

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_slow_inst_sel <= 0;
      else if (1'b1)
          A_slow_inst_sel <= A_slow_inst_sel_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_slow_inst_result <= 0;
      else if (A_slow_inst_result_en)
          A_slow_inst_result <= A_slow_inst_result_nxt;
    end


  assign A_wr_data_unfiltered = (A_ctrl_mul_lsw)? A_mul_result :
    (A_ctrl_shift_rot)? A_shift_rot_result :
    (~A_slow_inst_sel)? A_inst_result_aligned :
    A_slow_inst_result;

  assign A_fwd_reg_data = A_wr_data_filtered;
  assign A_wr_dst_reg = A_wr_dst_reg_from_M;
  assign A_dst_regnum = A_dst_regnum_from_M;
  assign W_en = 1'b1;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          W_wr_data <= 0;
      else if (1'b1)
          W_wr_data <= A_wr_data_filtered;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          W_iw <= 0;
      else if (1'b1)
          W_iw <= A_iw;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          W_valid <= 0;
      else if (1'b1)
          W_valid <= A_valid & A_en;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          W_wr_dst_reg <= 0;
      else if (1'b1)
          W_wr_dst_reg <= A_wr_dst_reg & A_en;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          W_dst_regnum <= 0;
      else if (1'b1)
          W_dst_regnum <= A_dst_regnum;
    end


  assign F_pc_nxt = (A_pipe_flush)? A_pipe_flush_waddr :
    (M_pipe_flush)? M_pipe_flush_waddr :
    (E_valid_jmp_indirect)? E_src1[15 : 2] :
    (D_refetch)? D_pc :
    ((D_br_pred_taken & D_issue))? D_br_taken_waddr :
    ((D_ctrl_jmp_direct & D_issue))? D_jmp_direct_target_waddr :
    F_pc_plus_one;

  assign F_iw_a_rf = D_en ? F_ram_iw_a : D_iw_a;
  assign F_iw_b_rf = D_en ? F_ram_iw_b : D_iw_b;
//cpu_register_bank_a, which is an nios2_sdp_ram
cpu_register_bank_a_module cpu_register_bank_a
  (
    .clock     (clk),
    .data      (A_wr_data_filtered),
    .q         (D_rf_a),
    .rdaddress (F_iw_a_rf),
    .wraddress (A_dst_regnum),
    .wren      (A_wr_dst_reg)
  );

//synthesis translate_off
`ifdef NO_PLI
defparam cpu_register_bank_a.lpm_file = "cpu_rf_ram_a.dat";
`else
defparam cpu_register_bank_a.lpm_file = "cpu_rf_ram_a.hex";
`endif
//synthesis translate_on
//synthesis read_comments_as_HDL on
//defparam cpu_register_bank_a.lpm_file = "cpu_rf_ram_a.mif";
//synthesis read_comments_as_HDL off
//cpu_register_bank_b, which is an nios2_sdp_ram
cpu_register_bank_b_module cpu_register_bank_b
  (
    .clock     (clk),
    .data      (A_wr_data_filtered),
    .q         (D_rf_b),
    .rdaddress (F_iw_b_rf),
    .wraddress (A_dst_regnum),
    .wren      (A_wr_dst_reg)
  );

//synthesis translate_off
`ifdef NO_PLI
defparam cpu_register_bank_b.lpm_file = "cpu_rf_ram_b.dat";
`else
defparam cpu_register_bank_b.lpm_file = "cpu_rf_ram_b.hex";
`endif
//synthesis translate_on
//synthesis read_comments_as_HDL on
//defparam cpu_register_bank_b.lpm_file = "cpu_rf_ram_b.mif";
//synthesis read_comments_as_HDL off
  assign D_regnum_a_cmp_F = (F_ram_iw_a == D_dst_regnum) & D_wr_dst_reg;
  assign E_regnum_a_cmp_F = (F_ram_iw_a == E_dst_regnum) & E_wr_dst_reg;
  assign M_regnum_a_cmp_F = (F_ram_iw_a == M_dst_regnum) & M_wr_dst_reg;
  assign A_regnum_a_cmp_F = (F_ram_iw_a == A_dst_regnum) & A_wr_dst_reg;
  assign D_regnum_b_cmp_F = (F_ram_iw_b == D_dst_regnum) & D_wr_dst_reg;
  assign E_regnum_b_cmp_F = (F_ram_iw_b == E_dst_regnum) & E_wr_dst_reg;
  assign M_regnum_b_cmp_F = (F_ram_iw_b == M_dst_regnum) & M_wr_dst_reg;
  assign A_regnum_b_cmp_F = (F_ram_iw_b == A_dst_regnum) & A_wr_dst_reg;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_regnum_a_cmp_D <= 0;
      else if (E_en)
          E_regnum_a_cmp_D <= D_en ? D_regnum_a_cmp_F : 1'b0;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_regnum_a_cmp_D <= 0;
      else if (M_en)
          M_regnum_a_cmp_D <= D_en ? E_regnum_a_cmp_F : E_regnum_a_cmp_D;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_regnum_a_cmp_D <= 0;
      else if (A_en)
          A_regnum_a_cmp_D <= D_en ? M_regnum_a_cmp_F : M_regnum_a_cmp_D;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          W_regnum_a_cmp_D <= 0;
      else if (1'b1)
          W_regnum_a_cmp_D <= D_en ? A_regnum_a_cmp_F : A_regnum_a_cmp_D;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_regnum_b_cmp_D <= 0;
      else if (E_en)
          E_regnum_b_cmp_D <= D_en ? D_regnum_b_cmp_F : 1'b0;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_regnum_b_cmp_D <= 0;
      else if (M_en)
          M_regnum_b_cmp_D <= D_en ? E_regnum_b_cmp_F : E_regnum_b_cmp_D;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_regnum_b_cmp_D <= 0;
      else if (A_en)
          A_regnum_b_cmp_D <= D_en ? M_regnum_b_cmp_F : M_regnum_b_cmp_D;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          W_regnum_b_cmp_D <= 0;
      else if (1'b1)
          W_regnum_b_cmp_D <= D_en ? A_regnum_b_cmp_F : A_regnum_b_cmp_D;
    end


  assign D_ctrl_a_is_src = ~D_ctrl_a_not_src;
  assign D_ctrl_b_is_src = ~D_ctrl_b_not_src;
  assign D_src1_hazard_E = E_regnum_a_cmp_D & D_ctrl_a_is_src;
  assign D_src1_hazard_M = M_regnum_a_cmp_D & D_ctrl_a_is_src;
  assign D_src1_hazard_A = A_regnum_a_cmp_D & D_ctrl_a_is_src;
  assign D_src1_hazard_W = W_regnum_a_cmp_D & D_ctrl_a_is_src;
  assign D_src2_hazard_E = E_regnum_b_cmp_D & D_ctrl_b_is_src;
  assign D_src2_hazard_M = M_regnum_b_cmp_D & D_ctrl_b_is_src;
  assign D_src2_hazard_A = A_regnum_b_cmp_D & D_ctrl_b_is_src;
  assign D_src2_hazard_W = W_regnum_b_cmp_D & D_ctrl_b_is_src;
  assign D_data_depend = ((D_src1_hazard_E | D_src2_hazard_E) & E_ctrl_late_result) |
    ((D_src1_hazard_M | D_src2_hazard_M) & M_ctrl_late_result);

  assign D_dstfield_regnum = D_ctrl_b_is_dst ? D_iw_b : D_iw_c;
  assign D_dst_regnum = D_ctrl_implicit_dst_retaddr ? 5'd31 : 
    D_ctrl_implicit_dst_eretaddr ? 5'd29 : 
    D_dstfield_regnum;

  assign D_wr_dst_reg = (D_dst_regnum != 0) & ~D_ctrl_ignore_dst & D_valid;
  assign E_fwd_reg_data = E_alu_result;
  assign D_src1_reg = (D_src1_hazard_E)? E_fwd_reg_data :
    (D_src1_hazard_M)? M_fwd_reg_data :
    (D_src1_hazard_A)? A_fwd_reg_data :
    (D_src1_hazard_W)? W_wr_data :
    D_rf_a;

  assign D_src1 = D_src1_reg;
  assign D_src2_reg = (D_src2_hazard_E)? E_fwd_reg_data :
    (D_src2_hazard_M)? M_fwd_reg_data :
    (D_src2_hazard_A)? A_fwd_reg_data :
    (D_src2_hazard_W)? W_wr_data :
    D_rf_b;

  assign D_src2_imm_sel = {D_ctrl_hi_imm,D_ctrl_unsigned_lo_imm};
  assign D_src2_imm = (D_src2_imm_sel == 2'b00)? {{16 {D_iw_imm16[15]}}, D_iw_imm16} :
    (D_src2_imm_sel == 2'b01)? {{16 {1'b0}}          , D_iw_imm16} :
    (D_src2_imm_sel == 2'b10)? {D_iw_imm16                               , 16'b0     } :
    {{16 {1'b0}}          , 16'b0     };

  assign D_src2 = D_ctrl_src2_choose_imm ? D_src2_imm : D_src2_reg;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_src1 <= 0;
      else if (E_en)
          E_src1 <= D_src1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_src2 <= 0;
      else if (E_en)
          E_src2 <= D_src2;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_src2_reg <= 0;
      else if (E_en)
          E_src2_reg <= D_src2_reg;
    end


  assign D_logic_op_raw = D_op_opx ? D_iw_opx[4 : 3] : 
    D_iw_op[4 : 3];

  assign D_logic_op = D_ctrl_alu_force_xor ? 2'b11 : D_logic_op_raw;
  assign D_compare_op = D_op_opx ? D_iw_opx[4 : 3] : 
    D_iw_op[4 : 3];

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_logic_op <= 0;
      else if (E_en)
          E_logic_op <= D_logic_op;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_compare_op <= 0;
      else if (E_en)
          E_compare_op <= D_compare_op;
    end


  assign E_arith_src1 = { E_src1[31] ^ E_ctrl_alu_signed_cmp, 
    E_src1[30 : 0]};

  assign E_arith_src2 = { E_src2[31] ^ E_ctrl_alu_signed_cmp, 
    E_src2[30 : 0]};

  assign E_arith_result = E_ctrl_alu_subtract ?
    E_arith_src1 - E_arith_src2 :
    E_arith_src1 + E_arith_src2;

  assign E_mem_baddr = E_arith_result[15 : 0];
  assign E_logic_result = (E_logic_op == 2'b00)? (~(E_src1 | E_src2)) :
    (E_logic_op == 2'b01)? (E_src1 & E_src2) :
    (E_logic_op == 2'b10)? (E_src1 | E_src2) :
    (E_src1 ^ E_src2);

  assign E_eq = E_src1_eq_src2;
  assign E_lt = E_arith_result[32];
  assign E_cmp_result = (E_compare_op == 2'b00)? E_eq :
    (E_compare_op == 2'b01)? ~E_lt :
    (E_compare_op == 2'b10)? E_lt :
    ~E_eq;

  assign E_alu_result = (E_ctrl_dst_data_sel_cmp)? E_cmp_result :
    (E_ctrl_dst_data_sel_logic_result)? E_logic_result :
    (E_ctrl_dst_data_sel_pc_plus_one)? {E_extra_pc, 2'b00} :
    E_arith_result[31 : 0];

  assign E_stb_data = E_src2_reg[7 : 0];
  assign E_sth_data = E_src2_reg[15 : 0];
  assign E_st_data = (E_mem8)? {E_stb_data, E_stb_data, E_stb_data, E_stb_data} :
    (E_mem16)? {E_sth_data, E_sth_data} :
    E_src2_reg;

  assign E_mem_byte_en = ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b00, 2'b00})? 4'b0001 :
    ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b00, 2'b01})? 4'b0010 :
    ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b00, 2'b10})? 4'b0100 :
    ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b00, 2'b11})? 4'b1000 :
    ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b01, 2'b00})? 4'b0011 :
    ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b01, 2'b01})? 4'b0011 :
    ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b01, 2'b10})? 4'b1100 :
    ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b01, 2'b11})? 4'b1100 :
    4'b1111;

  assign D_control_rd_data_base_regs = (D_iw_control_regnum == 3'd0)? A_status_reg :
    (D_iw_control_regnum == 3'd1)? A_estatus_reg :
    (D_iw_control_regnum == 3'd2)? A_bstatus_reg :
    (D_iw_control_regnum == 3'd3)? A_ienable_reg :
    (D_iw_control_regnum == 3'd4)? A_ipending_reg :
    0;

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_control_rd_data_base_regs <= 0;
      else if (E_en)
          E_control_rd_data_base_regs <= D_control_rd_data_base_regs;
    end


  assign E_control_rd_data = E_control_rd_data_base_regs;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_control_rd_data <= 0;
      else if (M_en)
          M_control_rd_data <= E_control_rd_data;
    end


  assign M_wrctl_status = M_ctrl_wrctl_inst & 
    (M_iw_control_regnum == 3'd0);

  assign M_wrctl_estatus = M_ctrl_wrctl_inst & 
    (M_iw_control_regnum == 3'd1);

  assign M_wrctl_bstatus = M_ctrl_wrctl_inst & 
    (M_iw_control_regnum == 3'd2);

  assign M_wrctl_ienable = M_ctrl_wrctl_inst & 
    (M_iw_control_regnum == 3'd3);

  assign iactive = d_irq[31 : 0] & 32'b00000000000000000000000000000001;
  assign A_ienable_reg_nxt = ((M_wrctl_ienable & M_valid) ? 
    M_alu_result[31 : 0] : A_ienable_reg) & 32'b00000000000000000000000000000001;

  assign A_ipending_reg_nxt = iactive & A_ienable_reg & oci_ienable & 32'b00000000000000000000000000000001;
  assign A_status_reg_pie_inst_nxt = (M_ctrl_exception | M_ctrl_break |
    M_ctrl_crst)      ? 1'b0 :
    M_op_eret         ? A_estatus_reg :
    M_op_bret         ? A_bstatus_reg :
    M_wrctl_status    ? M_alu_result[0] :
    A_status_reg_pie;

  assign A_status_reg_pie_nxt = M_valid           ? A_status_reg_pie_inst_nxt : 
    A_status_reg_pie;

  assign A_estatus_reg_inst_nxt = M_ctrl_crst       ? 0 :
    M_ctrl_exception  ? A_status_reg :
    M_wrctl_estatus   ? M_alu_result[0] :
    A_estatus_reg;

  assign A_estatus_reg_nxt = M_valid ? A_estatus_reg_inst_nxt : A_estatus_reg;
  assign A_bstatus_reg_inst_nxt = M_ctrl_break      ? A_status_reg :
    M_wrctl_bstatus   ? M_alu_result[0] :
    A_bstatus_reg;

  assign A_bstatus_reg_nxt = M_valid ? A_bstatus_reg_inst_nxt : A_bstatus_reg;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_status_reg_pie <= 0;
      else if (A_en)
          A_status_reg_pie <= A_status_reg_pie_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_estatus_reg <= 0;
      else if (A_en)
          A_estatus_reg <= A_estatus_reg_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_bstatus_reg <= 0;
      else if (A_en)
          A_bstatus_reg <= A_bstatus_reg_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ienable_reg <= 0;
      else if (A_en)
          A_ienable_reg <= A_ienable_reg_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ipending_reg <= 0;
      else if (1'b1)
          A_ipending_reg <= A_ipending_reg_nxt;
    end


  assign A_status_reg = A_status_reg_pie;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hbreak_enabled <= 1'b1;
      else if (M_valid & M_en)
          hbreak_enabled <= M_ctrl_break ? 1'b0 : M_op_bret ? 1'b1 : hbreak_enabled;
    end


  assign oci_tb_hbreak_req = oci_hbreak_req;
  assign hbreak_req = (oci_tb_hbreak_req | latched_oci_tb_hbreak_req) 
    & hbreak_enabled   
    & ~(wait_for_one_post_bret_inst);

  assign E_hbreak_req = hbreak_req & 
    ~(E_op_hbreak & E_valid_prior_to_hbreak);

  assign latched_oci_tb_hbreak_req_next = latched_oci_tb_hbreak_req ? 
    hbreak_enabled : 
    (hbreak_req & E_valid_prior_to_hbreak);

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          latched_oci_tb_hbreak_req <= 1'b0;
      else if (1'b1)
          latched_oci_tb_hbreak_req <= latched_oci_tb_hbreak_req_next;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          wait_for_one_post_bret_inst <= 1'b0;
      else if (1'b1)
          wait_for_one_post_bret_inst <= (~hbreak_enabled & oci_single_step_mode) ? 1'b1 
                    : ((E_en & E_valid_prior_to_hbreak) | 
                    (~oci_single_step_mode))             ? 1'b0 
                    : wait_for_one_post_bret_inst;

    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_valid_wrctl_ienable <= 0;
      else if (A_en)
          A_valid_wrctl_ienable <= M_wrctl_ienable & M_valid;
    end


  assign intr_req = A_status_reg_pie & (A_ipending_reg != 0) &
    ~A_valid_wrctl_ienable;

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_dc_victim_rd_data <= 0;
      else if (A_en)
          A_dc_victim_rd_data <= M_dc_victim_rd_data;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_dc_victim_tag <= 0;
      else if (A_en)
          A_dc_victim_tag <= M_dc_victim_tag;
    end


  assign E_mem_bypass_non_io = E_arith_result[31];
  assign E_ctrl_ld_bypass = (E_ctrl_ld_io | (E_ctrl_ld_non_io & E_mem_bypass_non_io)) &
    E_sel_data_master;

  assign M_ctrl_ld_bypass_nxt = E_ctrl_ld_bypass;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_bypass <= 0;
      else if (M_en)
          M_ctrl_ld_bypass <= M_ctrl_ld_bypass_nxt;
    end


  assign A_ctrl_ld_bypass_nxt = M_ctrl_ld_bypass;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_ld_bypass <= 0;
      else if (A_en)
          A_ctrl_ld_bypass <= A_ctrl_ld_bypass_nxt;
    end


  assign E_ctrl_st_bypass = (E_ctrl_st_io | (E_ctrl_st_non_io & E_mem_bypass_non_io)) &
    E_sel_data_master;

  assign M_ctrl_st_bypass_nxt = E_ctrl_st_bypass;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_st_bypass <= 0;
      else if (M_en)
          M_ctrl_st_bypass <= M_ctrl_st_bypass_nxt;
    end


  assign A_ctrl_st_bypass_nxt = M_ctrl_st_bypass;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_st_bypass <= 0;
      else if (A_en)
          A_ctrl_st_bypass <= A_ctrl_st_bypass_nxt;
    end


  assign E_ctrl_ld_st_bypass = (E_ctrl_ld_st_io | 
    (E_ctrl_ld_st_non_io & E_mem_bypass_non_io)) &
    E_sel_data_master;

  assign M_ctrl_ld_st_bypass_nxt = E_ctrl_ld_st_bypass;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_st_bypass <= 0;
      else if (M_en)
          M_ctrl_ld_st_bypass <= M_ctrl_ld_st_bypass_nxt;
    end


  assign A_ctrl_ld_st_bypass_nxt = M_ctrl_ld_st_bypass;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_ld_st_bypass <= 0;
      else if (A_en)
          A_ctrl_ld_st_bypass <= A_ctrl_ld_st_bypass_nxt;
    end


  assign E_ctrl_ld_non_bypass = (E_ctrl_ld_non_io & ~E_mem_bypass_non_io) | 
    (E_ctrl_ld & ~E_sel_data_master);

  assign M_ctrl_ld_non_bypass_nxt = E_ctrl_ld_non_bypass;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_non_bypass <= 0;
      else if (M_en)
          M_ctrl_ld_non_bypass <= M_ctrl_ld_non_bypass_nxt;
    end


  assign A_ctrl_ld_non_bypass_nxt = M_ctrl_ld_non_bypass;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_ld_non_bypass <= 0;
      else if (A_en)
          A_ctrl_ld_non_bypass <= A_ctrl_ld_non_bypass_nxt;
    end


  assign E_ctrl_st_non_bypass = (E_ctrl_st_non_io & ~E_mem_bypass_non_io) | 
    (E_ctrl_st & ~E_sel_data_master);

  assign M_ctrl_st_non_bypass_nxt = E_ctrl_st_non_bypass;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_st_non_bypass <= 0;
      else if (M_en)
          M_ctrl_st_non_bypass <= M_ctrl_st_non_bypass_nxt;
    end


  assign A_ctrl_st_non_bypass_nxt = M_ctrl_st_non_bypass;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_st_non_bypass <= 0;
      else if (A_en)
          A_ctrl_st_non_bypass <= A_ctrl_st_non_bypass_nxt;
    end


  assign E_ctrl_ld_st_non_bypass = (E_ctrl_ld_st_non_io & ~E_mem_bypass_non_io) | 
    (E_ctrl_ld_st & ~E_sel_data_master);

  assign M_ctrl_ld_st_non_bypass_nxt = E_ctrl_ld_st_non_bypass;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_st_non_bypass <= 0;
      else if (M_en)
          M_ctrl_ld_st_non_bypass <= M_ctrl_ld_st_non_bypass_nxt;
    end


  assign A_ctrl_ld_st_non_bypass_nxt = M_ctrl_ld_st_non_bypass;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_ld_st_non_bypass <= 0;
      else if (A_en)
          A_ctrl_ld_st_non_bypass <= A_ctrl_ld_st_non_bypass_nxt;
    end


  assign E_ctrl_ld_st_non_bypass_non_st32 = (E_ctrl_ld_st_non_io_non_st32 & ~E_mem_bypass_non_io) |
    (E_ctrl_ld_st_non_st32 & ~E_sel_data_master);

  assign M_ctrl_ld_st_non_bypass_non_st32_nxt = E_ctrl_ld_st_non_bypass_non_st32;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_st_non_bypass_non_st32 <= 0;
      else if (M_en)
          M_ctrl_ld_st_non_bypass_non_st32 <= M_ctrl_ld_st_non_bypass_non_st32_nxt;
    end


  assign A_ctrl_ld_st_non_bypass_non_st32_nxt = M_ctrl_ld_st_non_bypass_non_st32;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_ld_st_non_bypass_non_st32 <= 0;
      else if (A_en)
          A_ctrl_ld_st_non_bypass_non_st32 <= A_ctrl_ld_st_non_bypass_non_st32_nxt;
    end


  assign M_st_initd_flushd_flushda_dc_wr_en = ((M_ctrl_st_non_bypass & M_sel_data_master) | 
    M_ctrl_initd_flushd_flushda) & M_valid;

  assign A_dc_line = A_mem_baddr[11 : 2];
  assign A_dc_fill_wr_en = av_process_readdata & ~A_ctrl_ld_bypass;
  assign A_dc_fill_wr_data = d_readdata_d1;
  assign A_dc_fill_line = A_dc_line;
  assign A_dc_fill_byte_en = A_ctrl_ld_dcache_management ? {4{1'b1}} : ~A_mem_byte_en;
  assign A_dc_fill_wr_tag = {A_ctrl_st, dc_line_valid_on, A_dc_desired_tag};
  assign dc_data_portb_wr_data = A_dc_fill_wr_en ? A_dc_fill_wr_data : M_st_data;
  assign dc_data_portb_byte_en = A_dc_fill_wr_en ? A_dc_fill_byte_en : M_mem_byte_en;
  assign dc_data_portb_addr = A_dc_fill_wr_en ? A_dc_fill_line : M_dc_line;
  assign dc_data_portb_wr_en = A_en ? M_st_initd_flushd_flushda_dc_wr_en : A_dc_fill_wr_en;
  assign dc_tag_portb_data = A_dc_fill_wr_en ? A_dc_fill_wr_tag : 
    M_ctrl_st ? {dc_line_dirty_on, dc_line_valid_on, M_dc_desired_tag} :
    {dc_line_dirty_off, dc_line_valid_off, M_dc_desired_tag};

  assign dc_tag_portb_addr = A_dc_fill_wr_en ? A_dc_fill_line : M_dc_line;
  assign dc_tag_portb_wr_en = dc_data_portb_wr_en;
  assign dc_data_wr_byte_0 = dc_data_portb_wr_en & dc_data_portb_byte_en[0];
  assign dc_data_wr_byte_1 = dc_data_portb_wr_en & dc_data_portb_byte_en[1];
  assign dc_data_wr_byte_2 = dc_data_portb_wr_en & dc_data_portb_byte_en[2];
  assign dc_data_wr_byte_3 = dc_data_portb_wr_en & dc_data_portb_byte_en[3];
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_dc_latest_data_byte_0 <= 0;
      else if (dc_data_wr_byte_0)
          A_dc_latest_data_byte_0 <= dc_data_portb_wr_data[7 : 0];
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_dc_latest_data_byte_1 <= 0;
      else if (dc_data_wr_byte_1)
          A_dc_latest_data_byte_1 <= dc_data_portb_wr_data[15 : 8];
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_dc_latest_data_byte_2 <= 0;
      else if (dc_data_wr_byte_2)
          A_dc_latest_data_byte_2 <= dc_data_portb_wr_data[23 : 16];
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_dc_latest_data_byte_3 <= 0;
      else if (dc_data_wr_byte_3)
          A_dc_latest_data_byte_3 <= dc_data_portb_wr_data[31 : 24];
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_dc_latest_data_valid_byte_0 <= 0;
      else if (1'b1)
          A_dc_latest_data_valid_byte_0 <= A_en ? dc_data_wr_byte_0
                    : (A_dc_latest_data_valid_byte_0 | dc_data_wr_byte_0);

    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_dc_latest_data_valid_byte_1 <= 0;
      else if (1'b1)
          A_dc_latest_data_valid_byte_1 <= A_en ? dc_data_wr_byte_1
                    : (A_dc_latest_data_valid_byte_1 | dc_data_wr_byte_1);

    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_dc_latest_data_valid_byte_2 <= 0;
      else if (1'b1)
          A_dc_latest_data_valid_byte_2 <= A_en ? dc_data_wr_byte_2
                    : (A_dc_latest_data_valid_byte_2 | dc_data_wr_byte_2);

    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_dc_latest_data_valid_byte_3 <= 0;
      else if (1'b1)
          A_dc_latest_data_valid_byte_3 <= A_en ? dc_data_wr_byte_3
                    : (A_dc_latest_data_valid_byte_3 | dc_data_wr_byte_3);

    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_dc_latest_data_valid <= 0;
      else if (1'b1)
          A_dc_latest_data_valid <= A_en ? dc_data_portb_wr_en
                    : (A_dc_latest_data_valid | dc_data_portb_wr_en);

    end


  assign dc_line_dirty_on = 1'b1;
  assign dc_line_dirty_off = 1'b0;
  assign dc_line_valid_on = 1'b1;
  assign dc_line_valid_off = 1'b0;
  assign M_dc_dirty = M_dc_tag_entry[5];
  assign M_dc_valid = M_dc_tag_entry[4];
  assign M_dc_actual_tag = M_dc_tag_entry[3 : 0];
//cpu_dc_tag, which is an e_bdpram
cpu_dc_tag_module cpu_dc_tag
  (
    .address_a (E_dc_line),
    .address_b (dc_tag_portb_addr),
    .clock0    (clk),
    .clock1    (clk),
    .clocken0  (M_en),
    .clocken1  (1'b1),
    .data_b    (dc_tag_portb_data),
    .q_a       (M_dc_tag_entry),
    .q_b       (M_dc_tag_entry_unused),
    .wren_b    (dc_tag_portb_wr_en)
  );

//synthesis translate_off
`ifdef NO_PLI
defparam cpu_dc_tag.lpm_file = "cpu_dc_tag_ram.dat";
`else
defparam cpu_dc_tag.lpm_file = "cpu_dc_tag_ram.hex";
`endif
//synthesis translate_on
//synthesis read_comments_as_HDL on
//defparam cpu_dc_tag.lpm_file = "cpu_dc_tag_ram.mif";
//synthesis read_comments_as_HDL off
  assign M_dc_desired_tag = M_mem_baddr[15 : 12];
  assign M_M_dc_tag_match = M_dc_desired_tag == M_dc_actual_tag;
  assign A_dc_desired_tag = A_mem_baddr[15 : 12];
  assign M_dc_line = M_mem_baddr[11 : 2];
  assign M_A_dc_desired_tag_match = M_dc_desired_tag == A_dc_desired_tag;
  assign M_A_dc_line_match = M_dc_line == A_dc_line;
  assign M_A_dc_latest_line_match = M_A_dc_line_match & A_dc_latest_data_valid;
  assign E_dc_line = E_mem_baddr[11 : 2];
//cpu_dc_data, which is an e_bdpram
cpu_dc_data_module cpu_dc_data
  (
    .address_a (E_dc_line),
    .address_b (dc_data_portb_addr),
    .byteena_b (dc_data_portb_byte_en),
    .clock0    (clk),
    .clock1    (clk),
    .clocken0  (M_en),
    .clocken1  (1'b1),
    .data_b    (dc_data_portb_wr_data),
    .q_a       (M_dc_rd_data),
    .q_b       (A_dc_rd_data_unused),
    .wren_b    (dc_data_portb_wr_en)
  );

  assign M_dc_hit = M_A_dc_latest_line_match ? 
    (M_A_dc_desired_tag_match & ~A_ctrl_initd_flushd_flushda &
    ~M_ctrl_ld) :
    (M_M_dc_tag_match & M_dc_valid);

  assign M_dc_victim_rd_data_byte_0 = (M_A_dc_latest_line_match & A_dc_latest_data_valid_byte_0) ?
    A_dc_latest_data_byte_0 : M_dc_rd_data[7 : 0];

  assign M_dc_victim_rd_data_byte_1 = (M_A_dc_latest_line_match & A_dc_latest_data_valid_byte_1) ?
    A_dc_latest_data_byte_1 : M_dc_rd_data[15 : 8];

  assign M_dc_victim_rd_data_byte_2 = (M_A_dc_latest_line_match & A_dc_latest_data_valid_byte_2) ?
    A_dc_latest_data_byte_2 : M_dc_rd_data[23 : 16];

  assign M_dc_victim_rd_data_byte_3 = (M_A_dc_latest_line_match & A_dc_latest_data_valid_byte_3) ?
    A_dc_latest_data_byte_3 : M_dc_rd_data[31 : 24];

  assign M_dc_victim_rd_data = { M_dc_victim_rd_data_byte_3, M_dc_victim_rd_data_byte_2,
    M_dc_victim_rd_data_byte_1, M_dc_victim_rd_data_byte_0 };

  assign M_dc_victim_tag = M_A_dc_latest_line_match ? A_dc_desired_tag : M_dc_actual_tag;
  assign M_dc_victim_dirty = M_A_dc_latest_line_match ? A_ctrl_st : M_dc_dirty;
  assign M_dc_av_wr_req = M_valid & 
    ((M_sel_data_master &
    ((M_ctrl_ld_st_non_bypass & M_dc_victim_dirty & ~M_dc_hit) | 
    (M_ctrl_st_bypass))) |
    (M_ctrl_flushd_flushda & M_dc_victim_dirty));

  assign M_dc_av_rd_req = M_valid & M_sel_data_master &
    ((~M_dc_hit & M_ctrl_ld_st_non_bypass_non_st32) | M_ctrl_ld_bypass);

  assign dc_tag_field_nxt = (A_ctrl_ld_st_bypass | d_read_nxt) ? 
    A_dc_desired_tag : 
    A_dc_victim_tag;

  assign dc_line_field_nxt = A_dc_line[9 : 0];
  assign dc_byte_field_nxt = A_ctrl_ld_st_bypass ? 
    A_mem_baddr[1 : 0] : 
    0;

  assign d_writedata_nxt = A_ctrl_st_bypass ? A_st_data : A_dc_victim_rd_data;
  assign d_byteenable_nxt = A_ctrl_ld_st_bypass ? A_mem_byte_en : {4{1'b1}};
  assign d_address_nxt = {dc_tag_field_nxt, dc_line_field_nxt, dc_byte_field_nxt};
  assign av_wr_data_transfer = d_write & ~d_waitrequest;
  assign av_wr_done_nxt = A_en ? 0 : (av_wr_done | av_wr_data_transfer);
  assign d_write_nxt = A_dc_av_wr_req & ~av_wr_done & d_waitrequest;
  assign A_wr_stall = d_write_nxt;
  assign av_rd_data_transfer = d_read & ~d_waitrequest;
  assign d_read_nxt = A_dc_av_rd_req & d_waitrequest & ~av_process_readdata &
    ~av_rd_done & ~d_write_nxt;

  assign A_rd_stall = A_dc_av_rd_req & ~av_rd_done;
  assign A_mem_stall = A_wr_stall | A_rd_stall;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_en_d1 <= 0;
      else if (1'b1)
          A_en_d1 <= A_en;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d_writedata <= 0;
      else if (A_en_d1)
          d_writedata <= d_writedata_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d_byteenable <= 0;
      else if (A_en_d1)
          d_byteenable <= d_byteenable_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d_address <= 0;
      else if (A_en_d1 | d_read_nxt)
          d_address <= d_address_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          av_wr_done <= 0;
      else if (1'b1)
          av_wr_done <= av_wr_done_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          av_process_readdata <= 0;
      else if (1'b1)
          av_process_readdata <= av_rd_data_transfer;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          av_rd_done <= 0;
      else if (1'b1)
          av_rd_done <= av_process_readdata;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_dc_av_wr_req <= 0;
      else if (A_en)
          A_dc_av_wr_req <= M_dc_av_wr_req;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_dc_av_rd_req <= 0;
      else if (A_en)
          A_dc_av_rd_req <= M_dc_av_rd_req;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d_readdata_d1 <= 0;
      else if (1'b1)
          d_readdata_d1 <= d_readdata;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d_write <= 0;
      else if (1'b1)
          d_write <= d_write_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d_read <= 0;
      else if (1'b1)
          d_read <= d_read_nxt;
    end


  assign A_slow_ld_data_unaligned = d_readdata_d1;
  assign A_slow_ld_data_sign_bit_16 = A_mem_baddr[1]  ? 
    {A_slow_ld_data_unaligned[31], A_slow_ld_data_unaligned[23]} : 
    {A_slow_ld_data_unaligned[15], A_slow_ld_data_unaligned[7]};

  assign A_slow_ld_data_sign_bit = ((A_mem_baddr[0]) | A_ctrl_ld16) ? 
    A_slow_ld_data_sign_bit_16[1] : A_slow_ld_data_sign_bit_16[0];

  assign A_slow_ld_data_fill_bit = A_slow_ld_data_sign_bit & A_ctrl_ld_signed;
  assign A_slow_ld16_data = A_ld_align_sh16 ? 
    A_slow_ld_data_unaligned[31 : 16] :
    A_slow_ld_data_unaligned[15 : 0];

  assign A_slow_ld_byte0_data_aligned_nxt = A_ld_align_sh8 ? 
    A_slow_ld16_data[15 : 8] :
    A_slow_ld16_data[7 : 0];

  assign A_slow_ld_byte1_data_aligned_nxt = A_ld_align_byte1_fill ? 
    {8 {A_slow_ld_data_fill_bit}} : 
    A_slow_ld16_data[15 : 8];

  assign A_slow_ld_byte2_data_aligned_nxt = A_ld_align_byte2_byte3_fill ? 
    {8 {A_slow_ld_data_fill_bit}} : 
    A_slow_ld_data_unaligned[23 : 16];

  assign A_slow_ld_byte3_data_aligned_nxt = A_ld_align_byte2_byte3_fill ? 
    {8 {A_slow_ld_data_fill_bit}} : 
    A_slow_ld_data_unaligned[31 : 24];

  assign A_slow_ld_data_aligned_nxt = {A_slow_ld_byte3_data_aligned_nxt, A_slow_ld_byte2_data_aligned_nxt, 
    A_slow_ld_byte1_data_aligned_nxt, A_slow_ld_byte0_data_aligned_nxt};

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_data_ram_ld_align_sign_bit_16_hi <= 0;
      else if (M_en)
          M_data_ram_ld_align_sign_bit_16_hi <= (E_mem_baddr[0]) | E_ctrl_ld16;
    end


  assign M_data_ram_ld_align_sign_bit_16 = M_mem_baddr[1] ? 
    {M_ram_rd_data[31], M_ram_rd_data[23]} : 
    {M_ram_rd_data[15], M_ram_rd_data[7]};

  assign M_data_ram_ld_align_sign_bit = M_data_ram_ld_align_sign_bit_16_hi ?
    M_data_ram_ld_align_sign_bit_16[1] : 
    M_data_ram_ld_align_sign_bit_16[0];

  assign M_data_ram_ld_align_fill_bit = M_data_ram_ld_align_sign_bit & M_ctrl_ld_signed;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_data_ram_ld_align_fill_bit <= 0;
      else if (A_en)
          A_data_ram_ld_align_fill_bit <= M_data_ram_ld_align_fill_bit;
    end


  assign A_data_ram_ld16_data = A_ld_align_sh16 ? 
    A_inst_result[31 : 16] :
    A_inst_result[15 : 0];

  assign A_data_ram_ld_byte0_data = A_ld_align_sh8 ? 
    A_data_ram_ld16_data[15 : 8] :
    A_data_ram_ld16_data[7 : 0];

  assign A_data_ram_ld_byte1_data = A_ld_align_byte1_fill ? 
    {8 {A_data_ram_ld_align_fill_bit}} : 
    A_data_ram_ld16_data[15 : 8];

  assign A_data_ram_ld_byte2_data = A_ld_align_byte2_byte3_fill ? 
    {8 {A_data_ram_ld_align_fill_bit}} : 
    A_inst_result[23 : 16];

  assign A_data_ram_ld_byte3_data = A_ld_align_byte2_byte3_fill ? 
    {8 {A_data_ram_ld_align_fill_bit}} : 
    A_inst_result[31 : 24];

  assign A_inst_result_aligned = {A_data_ram_ld_byte3_data, A_data_ram_ld_byte2_data, 
    A_data_ram_ld_byte1_data, A_data_ram_ld_byte0_data};

  assign A_mul_cnt_nxt = A_mul_stall ? 
    A_mul_cnt-1 :
    4;

  assign A_mul_done_nxt = A_mul_cnt_nxt == 0;
  assign A_mul_stall_nxt = ~A_mul_done_nxt & 
    (A_mul_stall |
    (M_ctrl_mul_lsw & M_valid & A_en));

  assign A_mul_src1_nxt = (~A_mul_stall)? M_src1 :
    {A_mul_src1[15 : 0],
    16'b0};

  assign A_mul_src2_nxt = (~A_mul_stall)? M_src2 :
    {16'b0,
    A_mul_src2[31 : 16]};

  assign A_mul_partial_prod_nxt = A_mul_cell_result[31 : 0];
  assign A_mul_result_nxt = A_mul_stall_d3 ?
    A_mul_partial_prod + A_mul_result :
    A_mul_partial_prod;

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_mul_src1 <= 0;
      else if (1'b1)
          A_mul_src1 <= A_mul_src1_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_mul_src2 <= 0;
      else if (1'b1)
          A_mul_src2 <= A_mul_src2_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_mul_partial_prod <= 0;
      else if (1'b1)
          A_mul_partial_prod <= A_mul_partial_prod_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_mul_result <= 0;
      else if (1'b1)
          A_mul_result <= A_mul_result_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_mul_cnt <= 0;
      else if (1'b1)
          A_mul_cnt <= A_mul_cnt_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_mul_stall <= 0;
      else if (1'b1)
          A_mul_stall <= A_mul_stall_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_mul_stall_d1 <= 0;
      else if (1'b1)
          A_mul_stall_d1 <= A_mul_stall;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_mul_stall_d2 <= 0;
      else if (1'b1)
          A_mul_stall_d2 <= A_mul_stall_d1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_mul_stall_d3 <= 0;
      else if (1'b1)
          A_mul_stall_d3 <= A_mul_stall_d2;
    end


  cpu_mult_cell the_cpu_mult_cell
    (
      .A_mul_cell_result (A_mul_cell_result),
      .A_mul_src1        (A_mul_src1),
      .A_mul_src2        (A_mul_src2),
      .clk               (clk),
      .reset_n           (reset_n)
    );

  assign E_div_negate_src1 = E_ctrl_div_signed & E_src1[31];
  assign E_div_negate_src2 = E_ctrl_div_signed & E_src2[31];
  assign E_div_negate_result = E_div_negate_src1 ^ E_div_negate_src2;
  assign E_div_src1 = E_div_negate_src1 ? -E_src1 : E_src1;
  assign E_div_src2 = E_div_negate_src2 ? -E_src2 : E_src2;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_div_negate_result <= 0;
      else if (M_en)
          M_div_negate_result <= E_div_negate_result;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_div_negate_result <= 0;
      else if (A_en)
          A_div_negate_result <= M_div_negate_result;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_div_src1 <= 0;
      else if (M_en)
          M_div_src1 <= E_div_src1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_div_src2 <= 0;
      else if (M_en)
          M_div_src2 <= E_div_src2;
    end


  assign M_src1 = M_div_src1;
  assign M_src2 = M_div_src2;
  assign A_div_rem_den_sum_diff = A_div_do_sub ?
    A_div_rem - {1'b0, A_div_den} :
    A_div_rem + {1'b0, A_div_den};

  assign A_div_rem_sign_bit = A_div_rem_den_sum_diff[32];
  assign A_div_quot_bit_nxt = ~A_div_rem_den_sum_diff[32];
  assign A_div_den_is_normalized = A_div_den_is_normalized_sticky |
    (A_div_norm_cnt[5] |
    A_div_den[31] |
    A_div_rem_sign_bit);

  assign A_div_discover_quotient_bits = A_div_den_is_normalized;
  assign A_div_last_quotient_bit_nxt = A_div_den_is_normalized & (A_div_norm_cnt == 1);
  assign A_div_norm_cnt_nxt = A_en ? 1 : 
    (A_div_den_is_normalized ? 
    A_div_norm_cnt-1 : 
    A_div_norm_cnt+1);

  assign A_div_rem_nxt = A_en ? 
    {1'b0, M_div_src1} : 
    {A_div_rem_den_sum_diff[31 : 0], 1'b0};

  assign A_div_rem_en = A_en | A_div_discover_quotient_bits;
  assign A_div_den_nxt = A_en ? M_div_src2 : {A_div_den[30 : 0], 1'b0};
  assign A_div_den_en = A_en | ~A_div_den_is_normalized;
  assign A_div_quot_shifted = {A_div_quot[30 : 0], 
    A_div_quot_bit ^ A_div_negate_result};

  assign A_div_quot_hot1 = A_div_negate_result & A_div_last_quotient_bit;
  assign A_div_quot_nxt = A_en ? 
    {32{M_div_negate_result}} : 
    (A_div_quot_shifted + A_div_quot_hot1);

  assign A_div_quot_en = A_en | A_div_accumulate_quotient_bits;
  assign A_div_stall = A_ctrl_div & A_valid & ~A_div_done;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_div_den <= 0;
      else if (A_div_den_en)
          A_div_den <= A_div_den_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_div_rem <= 0;
      else if (A_div_rem_en)
          A_div_rem <= A_div_rem_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_div_quot <= 0;
      else if (A_div_quot_en)
          A_div_quot <= A_div_quot_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_div_accumulate_quotient_bits <= 0;
      else if (1'b1)
          A_div_accumulate_quotient_bits <= A_en ? 1'b0 : A_div_discover_quotient_bits;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_div_quot_bit <= 0;
      else if (1'b1)
          A_div_quot_bit <= A_div_quot_bit_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_div_last_quotient_bit <= 0;
      else if (1'b1)
          A_div_last_quotient_bit <= A_en ? 1'b0 : A_div_last_quotient_bit_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_div_quot_ready <= 0;
      else if (1'b1)
          A_div_quot_ready <= A_en ? 1'b0 : A_div_last_quotient_bit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_div_den_is_normalized_sticky <= 0;
      else if (1'b1)
          A_div_den_is_normalized_sticky <= A_en ? 1'b0 : A_div_den_is_normalized;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_div_norm_cnt <= 0;
      else if (1'b1)
          A_div_norm_cnt <= A_div_norm_cnt_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_div_do_sub <= 0;
      else if (1'b1)
          A_div_do_sub <= A_en ? 1'b1 : ~A_div_rem_sign_bit;
    end


  assign A_shift_rot_cnt_nxt = A_shift_rot_stall ? 
    A_shift_rot_cnt-1 :
    1;

  assign A_shift_rot_done_nxt = A_shift_rot_cnt_nxt == 0;
  assign A_shift_rot_stall_nxt = ~A_shift_rot_done_nxt & 
    (A_shift_rot_stall |
    (M_ctrl_shift_rot & M_valid & A_en));

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_shift_rot_cnt <= 0;
      else if (1'b1)
          A_shift_rot_cnt <= A_shift_rot_cnt_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_shift_rot_stall <= 0;
      else if (1'b1)
          A_shift_rot_stall <= A_shift_rot_stall_nxt;
    end


  assign E_rot_n = E_src2[4 : 0];
  assign E_rot_rn = E_ctrl_shift_rot_right ? -E_rot_n : E_rot_n;
  assign E_rot_fill_bit = E_ctrl_shift_right_arith ? E_src1[31] : 0;
  assign E_rot_left_mask = (E_rot_n[2 : 0] == 3'b000)? 8'b00000000 :
    (E_rot_n[2 : 0] == 3'b001)? 8'b00000001 :
    (E_rot_n[2 : 0] == 3'b010)? 8'b00000011 :
    (E_rot_n[2 : 0] == 3'b011)? 8'b00000111 :
    (E_rot_n[2 : 0] == 3'b100)? 8'b00001111 :
    (E_rot_n[2 : 0] == 3'b101)? 8'b00011111 :
    (E_rot_n[2 : 0] == 3'b110)? 8'b00111111 :
    8'b01111111;

  assign E_rot_right_mask = (E_rot_n[2 : 0] == 3'b000)? 8'b00000000 :
    (E_rot_n[2 : 0] == 3'b001)? 8'b10000000 :
    (E_rot_n[2 : 0] == 3'b010)? 8'b11000000 :
    (E_rot_n[2 : 0] == 3'b011)? 8'b11100000 :
    (E_rot_n[2 : 0] == 3'b100)? 8'b11110000 :
    (E_rot_n[2 : 0] == 3'b101)? 8'b11111000 :
    (E_rot_n[2 : 0] == 3'b110)? 8'b11111100 :
    8'b11111110;

  assign E_rot_mask = E_ctrl_shift_rot_right ? E_rot_right_mask : E_rot_left_mask;
  assign E_rot_pass0 = E_ctrl_rot ||                                              (E_ctrl_shift_rot_right && (E_rot_n < 24));
  assign E_rot_pass1 = E_ctrl_rot || (E_ctrl_shift_rot_left && (E_rot_n <  8)) || (E_ctrl_shift_rot_right && (E_rot_n < 16));
  assign E_rot_pass2 = E_ctrl_rot || (E_ctrl_shift_rot_left && (E_rot_n < 16)) || (E_ctrl_shift_rot_right && (E_rot_n <  8));
  assign E_rot_pass3 = E_ctrl_rot || (E_ctrl_shift_rot_left && (E_rot_n < 24));
  assign E_rot_sel_fill0 = E_ctrl_shift_rot_left && (E_rot_n >=  8);
  assign E_rot_sel_fill1 = (E_ctrl_shift_rot_left && (E_rot_n >= 16)) || (E_ctrl_shift_rot_right && (E_rot_n >= 24));
  assign E_rot_sel_fill2 = (E_ctrl_shift_rot_left && (E_rot_n >= 24)) || (E_ctrl_shift_rot_right && (E_rot_n >= 16));
  assign E_rot_sel_fill3 = E_ctrl_shift_rot_right && (E_rot_n >=  8);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_fill_bit <= 0;
      else if (M_en)
          M_rot_fill_bit <= E_rot_fill_bit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_mask <= 0;
      else if (M_en)
          M_rot_mask <= E_rot_mask;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_pass0 <= 0;
      else if (M_en)
          M_rot_pass0 <= E_rot_pass0;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_pass1 <= 0;
      else if (M_en)
          M_rot_pass1 <= E_rot_pass1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_pass2 <= 0;
      else if (M_en)
          M_rot_pass2 <= E_rot_pass2;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_pass3 <= 0;
      else if (M_en)
          M_rot_pass3 <= E_rot_pass3;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_sel_fill0 <= 0;
      else if (M_en)
          M_rot_sel_fill0 <= E_rot_sel_fill0;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_sel_fill1 <= 0;
      else if (M_en)
          M_rot_sel_fill1 <= E_rot_sel_fill1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_sel_fill2 <= 0;
      else if (M_en)
          M_rot_sel_fill2 <= E_rot_sel_fill2;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_sel_fill3 <= 0;
      else if (M_en)
          M_rot_sel_fill3 <= E_rot_sel_fill3;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_rot_fill_bit <= 0;
      else if (A_en)
          A_rot_fill_bit <= M_rot_fill_bit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_rot_mask <= 0;
      else if (A_en)
          A_rot_mask <= M_rot_mask;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_rot_pass0 <= 0;
      else if (A_en)
          A_rot_pass0 <= M_rot_pass0;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_rot_pass1 <= 0;
      else if (A_en)
          A_rot_pass1 <= M_rot_pass1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_rot_pass2 <= 0;
      else if (A_en)
          A_rot_pass2 <= M_rot_pass2;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_rot_pass3 <= 0;
      else if (A_en)
          A_rot_pass3 <= M_rot_pass3;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_rot_sel_fill0 <= 0;
      else if (A_en)
          A_rot_sel_fill0 <= M_rot_sel_fill0;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_rot_sel_fill1 <= 0;
      else if (A_en)
          A_rot_sel_fill1 <= M_rot_sel_fill1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_rot_sel_fill2 <= 0;
      else if (A_en)
          A_rot_sel_fill2 <= M_rot_sel_fill2;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_rot_sel_fill3 <= 0;
      else if (A_en)
          A_rot_sel_fill3 <= M_rot_sel_fill3;
    end


  assign E_rot_prestep1 = E_rot_rn[0] ? {E_src1[30 : 0], E_src1[31]} : E_src1;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_step1 <= 0;
      else if (M_en)
          M_rot_step1 <= E_rot_rn[1] ? {E_rot_prestep1[29 : 0], E_rot_prestep1[31 : 30]} : E_rot_prestep1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_rn <= 0;
      else if (M_en)
          M_rot_rn <= E_rot_rn;
    end


  assign M_rot_prestep2 = M_rot_rn[2] ? {M_rot_step1[27 : 0], M_rot_step1[31 : 28]} : M_rot_step1;
  always @(negedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Mn_rot_step2 <= 0;
      else if (1'b1)
          Mn_rot_step2 <= M_rot_rn[3] ? {M_rot_prestep2[23 : 0], M_rot_prestep2[31 : 24]} : M_rot_prestep2;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_rot <= 0;
      else if (A_en)
          A_rot <= M_rot_rn[4] ? 
                    {Mn_rot_step2[15 : 0], Mn_rot_step2[31 : 16]} : 
                    Mn_rot_step2;

    end


  assign A_rot_lut0 = {8{A_rot_sel_fill0 & A_rot_fill_bit}} | (A_rot_fill_bit ? ({8{~A_rot_sel_fill0}} & (A_rot[7 : 0] | A_rot_mask)) : ({8{~A_rot_sel_fill0}} & A_rot[7 : 0] & ~A_rot_mask));
  assign A_rot_lut1 = {8{A_rot_sel_fill1 & A_rot_fill_bit}} | (A_rot_fill_bit ? ({8{~A_rot_sel_fill1}} & (A_rot[15 : 8] | A_rot_mask)) : ({8{~A_rot_sel_fill1}} & A_rot[15 : 8] & ~A_rot_mask));
  assign A_rot_lut2 = {8{A_rot_sel_fill2 & A_rot_fill_bit}} | (A_rot_fill_bit ? ({8{~A_rot_sel_fill2}} & (A_rot[23 : 16] | A_rot_mask)) : ({8{~A_rot_sel_fill2}} & A_rot[23 : 16] & ~A_rot_mask));
  assign A_rot_lut3 = {8{A_rot_sel_fill3 & A_rot_fill_bit}} | (A_rot_fill_bit ? ({8{~A_rot_sel_fill3}} & (A_rot[31 : 24] | A_rot_mask)) : ({8{~A_rot_sel_fill3}} & A_rot[31 : 24] & ~A_rot_mask));
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_shift_rot_result[7 : 0] <= 0;
      else if (1'b1)
          A_shift_rot_result[7 : 0] <= A_rot_pass0 ? A_rot[7 : 0] : A_rot_lut0;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_shift_rot_result[15 : 8] <= 0;
      else if (1'b1)
          A_shift_rot_result[15 : 8] <= A_rot_pass1 ? A_rot[15 : 8] : A_rot_lut1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_shift_rot_result[23 : 16] <= 0;
      else if (1'b1)
          A_shift_rot_result[23 : 16] <= A_rot_pass2 ? A_rot[23 : 16] : A_rot_lut2;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_shift_rot_result[31 : 24] <= 0;
      else if (1'b1)
          A_shift_rot_result[31 : 24] <= A_rot_pass3 ? A_rot[31 : 24] : A_rot_lut3;
    end


  cpu_nios2_oci the_cpu_nios2_oci
    (
      .A_cmp_result                          (A_cmp_result),
      .A_ctrl_exception                      (A_ctrl_exception),
      .A_ctrl_ld                             (A_ctrl_ld),
      .A_ctrl_st                             (A_ctrl_st),
      .A_en                                  (A_en),
      .A_mem_baddr                           (A_mem_baddr),
      .A_op_beq                              (A_op_beq),
      .A_op_bge                              (A_op_bge),
      .A_op_bgeu                             (A_op_bgeu),
      .A_op_blt                              (A_op_blt),
      .A_op_bltu                             (A_op_bltu),
      .A_op_bne                              (A_op_bne),
      .A_op_br                               (A_op_br),
      .A_op_bret                             (A_op_bret),
      .A_op_call                             (A_op_call),
      .A_op_callr                            (A_op_callr),
      .A_op_eret                             (A_op_eret),
      .A_op_jmp                              (A_op_jmp),
      .A_op_ret                              (A_op_ret),
      .A_pcb                                 (A_pcb),
      .A_st_data                             (A_st_data),
      .A_valid                               (A_valid),
      .A_wr_data_filtered                    (A_wr_data_filtered),
      .D_en                                  (D_en),
      .E_en                                  (E_en),
      .E_valid                               (E_valid),
      .F_pc                                  (F_pc),
      .M_en                                  (M_en),
      .address                               (jtag_debug_module_address),
      .begintransfer                         (jtag_debug_module_begintransfer),
      .byteenable                            (jtag_debug_module_byteenable),
      .chipselect                            (jtag_debug_module_select),
      .clk                                   (jtag_debug_module_clk),
      .debugaccess                           (jtag_debug_module_debugaccess),
      .hbreak_enabled                        (hbreak_enabled),
      .jtag_debug_module_debugaccess_to_roms (jtag_debug_module_debugaccess_to_roms),
      .oci_hbreak_req                        (oci_hbreak_req),
      .oci_ienable                           (oci_ienable),
      .oci_single_step_mode                  (oci_single_step_mode),
      .readdata                              (jtag_debug_module_readdata),
      .reset                                 (jtag_debug_module_reset),
      .reset_n                               (reset_n),
      .resetrequest                          (jtag_debug_module_resetrequest),
      .write                                 (jtag_debug_module_write),
      .writedata                             (jtag_debug_module_writedata)
    );

  //jtag_debug_module, which is an e_avalon_slave
  assign F_ctrl_a_not_src = F_op_call | F_op_jmpi;
  assign D_ctrl_a_not_src_nxt = F_ctrl_a_not_src;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_ctrl_a_not_src <= 0;
      else if (D_en)
          D_ctrl_a_not_src <= D_ctrl_a_not_src_nxt;
    end


  assign F_ctrl_b_not_src = F_op_addi | F_op_muli | F_op_andhi | F_op_orhi | F_op_xorhi | F_op_andi | F_op_ori | F_op_xori | F_op_call | F_op_cmpgei | F_op_cmplti | F_op_cmpnei | F_op_cmpgeui | F_op_cmpltui | F_op_cmpeqi | F_op_rsv56 | F_op_jmpi | F_op_rsv09 | F_op_rsv17 | F_op_rsv25 | F_op_rsv33 | F_op_rsv41 | F_op_rsv49 | F_op_rsv57 | F_op_ldb | F_op_ldh | F_op_ldl | F_op_ldw | F_op_ldbio | F_op_ldhio | F_op_ldwio | F_op_rsv63 | F_op_ldbu | F_op_ldhu | F_op_ldbuio | F_op_ldhuio | F_op_initd | F_op_flushd | F_op_flushda;
  assign D_ctrl_b_not_src_nxt = F_ctrl_b_not_src;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_ctrl_b_not_src <= 0;
      else if (D_en)
          D_ctrl_b_not_src <= D_ctrl_b_not_src_nxt;
    end


  assign F_ctrl_b_is_dst = F_op_addi | F_op_muli | F_op_andhi | F_op_orhi | F_op_xorhi | F_op_andi | F_op_ori | F_op_xori | F_op_call | F_op_cmpgei | F_op_cmplti | F_op_cmpnei | F_op_cmpgeui | F_op_cmpltui | F_op_cmpeqi | F_op_rsv56 | F_op_jmpi | F_op_rsv09 | F_op_rsv17 | F_op_rsv25 | F_op_rsv33 | F_op_rsv41 | F_op_rsv49 | F_op_rsv57 | F_op_ldb | F_op_ldh | F_op_ldl | F_op_ldw | F_op_ldbio | F_op_ldhio | F_op_ldwio | F_op_rsv63 | F_op_ldbu | F_op_ldhu | F_op_ldbuio | F_op_ldhuio | F_op_initd | F_op_flushd | F_op_flushda;
  assign D_ctrl_b_is_dst_nxt = F_ctrl_b_is_dst;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_ctrl_b_is_dst <= 0;
      else if (D_en)
          D_ctrl_b_is_dst <= D_ctrl_b_is_dst_nxt;
    end


  assign F_ctrl_ignore_dst = F_op_br | F_op_bge | F_op_blt | F_op_bne | F_op_beq | F_op_bgeu | F_op_bltu | F_op_rsv62 | F_op_stb | F_op_sth | F_op_stw | F_op_stc | F_op_stbio | F_op_sthio | F_op_stwio | F_op_rsv61 | F_op_jmpi | F_op_rsv09 | F_op_rsv17 | F_op_rsv25 | F_op_rsv33 | F_op_rsv41 | F_op_rsv49 | F_op_rsv57;
  assign D_ctrl_ignore_dst_nxt = F_ctrl_ignore_dst;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_ctrl_ignore_dst <= 0;
      else if (D_en)
          D_ctrl_ignore_dst <= D_ctrl_ignore_dst_nxt;
    end


  assign D_ctrl_src2_choose_imm = D_op_addi | D_op_muli | D_op_andhi | D_op_orhi | D_op_xorhi | D_op_andi | D_op_ori | D_op_xori | D_op_call | D_op_cmpgei | D_op_cmplti | D_op_cmpnei | D_op_cmpgeui | D_op_cmpltui | D_op_cmpeqi | D_op_rsv56 | D_op_jmpi | D_op_rsv09 | D_op_rsv17 | D_op_rsv25 | D_op_rsv33 | D_op_rsv41 | D_op_rsv49 | D_op_rsv57 | D_op_ldb | D_op_ldh | D_op_ldl | D_op_ldw | D_op_ldbio | D_op_ldhio | D_op_ldwio | D_op_rsv63 | D_op_ldbu | D_op_ldhu | D_op_ldbuio | D_op_ldhuio | D_op_initd | D_op_flushd | D_op_flushda | D_op_stb | D_op_sth | D_op_stw | D_op_stc | D_op_stbio | D_op_sthio | D_op_stwio | D_op_rsv61 | D_op_roli | D_op_rsvx10 | D_op_slli | D_op_srli | D_op_rsvx34 | D_op_rsvx42 | D_op_rsvx50 | D_op_srai;
  assign F_ctrl_br = F_op_br | F_op_bge | F_op_blt | F_op_bne | F_op_beq | F_op_bgeu | F_op_bltu | F_op_rsv62;
  assign D_ctrl_br_nxt = F_ctrl_br;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_ctrl_br <= 0;
      else if (D_en)
          D_ctrl_br <= D_ctrl_br_nxt;
    end


  assign E_ctrl_br_nxt = D_ctrl_br;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_br <= 0;
      else if (E_en)
          E_ctrl_br <= E_ctrl_br_nxt;
    end


  assign M_ctrl_br_nxt = E_ctrl_br;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_br <= 0;
      else if (M_en)
          M_ctrl_br <= M_ctrl_br_nxt;
    end


  assign F_ctrl_br_uncond = F_op_br | F_op_rsv02;
  assign D_ctrl_br_uncond_nxt = F_ctrl_br_uncond;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_ctrl_br_uncond <= 0;
      else if (D_en)
          D_ctrl_br_uncond <= D_ctrl_br_uncond_nxt;
    end


  assign D_ctrl_br_cond = D_op_bge | D_op_rsv10 | D_op_blt | D_op_bne | D_op_rsv62 | D_op_bgeu | D_op_rsv42 | D_op_bltu | D_op_beq | D_op_rsv34;
  assign E_ctrl_br_cond_nxt = D_ctrl_br_cond;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_br_cond <= 0;
      else if (E_en)
          E_ctrl_br_cond <= E_ctrl_br_cond_nxt;
    end


  assign M_ctrl_br_cond_nxt = E_ctrl_br_cond;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_br_cond <= 0;
      else if (M_en)
          M_ctrl_br_cond <= M_ctrl_br_cond_nxt;
    end


  assign F_ctrl_jmp_direct = F_op_call | F_op_jmpi;
  assign D_ctrl_jmp_direct_nxt = F_ctrl_jmp_direct;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_ctrl_jmp_direct <= 0;
      else if (D_en)
          D_ctrl_jmp_direct <= D_ctrl_jmp_direct_nxt;
    end


  assign D_ctrl_uncond_cti = D_op_call | D_op_jmpi | D_op_ret | D_op_jmp | D_op_rsvx21 | D_op_callr | D_op_eret | D_op_bret | D_op_rsvx17 | D_op_rsvx25;
  assign D_ctrl_jmp_indirect = D_op_ret | D_op_jmp | D_op_rsvx21 | D_op_callr | D_op_eret | D_op_bret | D_op_rsvx17 | D_op_rsvx25;
  assign E_ctrl_jmp_indirect_nxt = D_ctrl_jmp_indirect;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_jmp_indirect <= 0;
      else if (E_en)
          E_ctrl_jmp_indirect <= E_ctrl_jmp_indirect_nxt;
    end


  assign M_ctrl_jmp_indirect_nxt = E_ctrl_jmp_indirect;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_jmp_indirect <= 0;
      else if (M_en)
          M_ctrl_jmp_indirect <= M_ctrl_jmp_indirect_nxt;
    end


  assign A_ctrl_jmp_indirect_nxt = M_ctrl_jmp_indirect;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_jmp_indirect <= 0;
      else if (A_en)
          A_ctrl_jmp_indirect <= A_ctrl_jmp_indirect_nxt;
    end


  assign D_ctrl_unimp_inst = D_op_mulxuu | D_op_rsvx15 | D_op_mulxsu | D_op_mulxss | D_op_initda;
  assign E_ctrl_unimp_inst_nxt = D_ctrl_unimp_inst;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_unimp_inst <= 0;
      else if (E_en)
          E_ctrl_unimp_inst <= E_ctrl_unimp_inst_nxt;
    end


  assign M_ctrl_unimp_inst_nxt = E_ctrl_unimp_inst;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_unimp_inst <= 0;
      else if (M_en)
          M_ctrl_unimp_inst <= M_ctrl_unimp_inst_nxt;
    end


  assign A_ctrl_unimp_inst_nxt = M_ctrl_unimp_inst;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_unimp_inst <= 0;
      else if (A_en)
          A_ctrl_unimp_inst <= A_ctrl_unimp_inst_nxt;
    end


  assign D_ctrl_illegal_inst = 1'b0;
  assign E_ctrl_illegal_inst_nxt = 1'b0;
  assign E_ctrl_illegal_inst = E_ctrl_illegal_inst_nxt;
  assign M_ctrl_illegal_inst_nxt = 1'b0;
  assign M_ctrl_illegal_inst = M_ctrl_illegal_inst_nxt;
  assign A_ctrl_illegal_inst_nxt = 1'b0;
  assign A_ctrl_illegal_inst = A_ctrl_illegal_inst_nxt;
  assign D_ctrl_exception = D_op_trap | D_op_rsvx44 | D_op_mulxuu | D_op_rsvx15 | D_op_mulxsu | D_op_mulxss | D_op_initda | D_op_intr | D_op_rsvx60;
  assign E_ctrl_exception_nxt = D_ctrl_exception;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_exception <= 0;
      else if (E_en)
          E_ctrl_exception <= E_ctrl_exception_nxt;
    end


  assign M_ctrl_exception_nxt = E_ctrl_exception;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_exception <= 0;
      else if (M_en)
          M_ctrl_exception <= M_ctrl_exception_nxt;
    end


  assign A_ctrl_exception_nxt = M_ctrl_exception;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_exception <= 0;
      else if (A_en)
          A_ctrl_exception <= A_ctrl_exception_nxt;
    end


  assign D_ctrl_break = D_op_break | D_op_hbreak;
  assign E_ctrl_break_nxt = D_ctrl_break;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_break <= 0;
      else if (E_en)
          E_ctrl_break <= E_ctrl_break_nxt;
    end


  assign M_ctrl_break_nxt = E_ctrl_break;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_break <= 0;
      else if (M_en)
          M_ctrl_break <= M_ctrl_break_nxt;
    end


  assign A_ctrl_break_nxt = M_ctrl_break;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_break <= 0;
      else if (A_en)
          A_ctrl_break <= A_ctrl_break_nxt;
    end


  assign D_ctrl_crst = 1'b0;
  assign E_ctrl_crst_nxt = 1'b0;
  assign E_ctrl_crst = E_ctrl_crst_nxt;
  assign M_ctrl_crst_nxt = 1'b0;
  assign M_ctrl_crst = M_ctrl_crst_nxt;
  assign A_ctrl_crst_nxt = 1'b0;
  assign A_ctrl_crst = A_ctrl_crst_nxt;
  assign D_ctrl_flush_pipe_always = D_op_flushp | D_op_bret | D_op_initi | D_op_flushi | D_op_wrctl | D_op_bret | D_op_eret | D_op_trap | D_op_rsvx44 | D_op_mulxuu | D_op_rsvx15 | D_op_mulxsu | D_op_mulxss | D_op_initda | D_op_intr | D_op_rsvx60 | D_op_break | D_op_hbreak | D_op_crst;
  assign E_ctrl_flush_pipe_always_nxt = D_ctrl_flush_pipe_always;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_flush_pipe_always <= 0;
      else if (E_en)
          E_ctrl_flush_pipe_always <= E_ctrl_flush_pipe_always_nxt;
    end


  assign M_ctrl_flush_pipe_always_nxt = E_ctrl_flush_pipe_always;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_flush_pipe_always <= 0;
      else if (M_en)
          M_ctrl_flush_pipe_always <= M_ctrl_flush_pipe_always_nxt;
    end


  assign A_ctrl_flush_pipe_always_nxt = M_ctrl_flush_pipe_always;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_flush_pipe_always <= 0;
      else if (A_en)
          A_ctrl_flush_pipe_always <= A_ctrl_flush_pipe_always_nxt;
    end


  assign D_ctrl_implicit_dst_retaddr = D_op_call | D_op_rsv02;
  assign D_ctrl_implicit_dst_eretaddr = D_op_mulxuu | D_op_rsvx15 | D_op_mulxsu | D_op_mulxss | D_op_initda;
  assign D_ctrl_hi_imm = D_op_andhi | D_op_orhi | D_op_xorhi;
  assign D_ctrl_unsigned_lo_imm = D_op_andi | D_op_ori | D_op_xori | D_op_cmpgeui | D_op_cmpltui | D_op_roli | D_op_rsvx10 | D_op_slli | D_op_srli | D_op_rsvx34 | D_op_rsvx42 | D_op_rsvx50 | D_op_srai;
  assign D_ctrl_alu_force_xor = D_op_cmpgei | D_op_cmpgeui | D_op_cmpeqi | D_op_cmpge | D_op_cmpgeu | D_op_cmpeq | D_op_cmpnei | D_op_cmpne | D_op_bge | D_op_rsv10 | D_op_bgeu | D_op_rsv42 | D_op_beq | D_op_rsv34 | D_op_bne | D_op_rsv62;
  assign D_ctrl_alu_signed_cmp = D_op_cmpge | D_op_cmpgei | D_op_cmplt | D_op_cmplti | D_op_bge | D_op_blt;
  assign E_ctrl_alu_signed_cmp_nxt = D_ctrl_alu_signed_cmp;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_alu_signed_cmp <= 0;
      else if (E_en)
          E_ctrl_alu_signed_cmp <= E_ctrl_alu_signed_cmp_nxt;
    end


  assign D_ctrl_alu_subtract = D_op_sub | D_op_rsvx25 | D_op_cmplti | D_op_cmpltui | D_op_cmplt | D_op_cmpltu | D_op_blt | D_op_bltu | D_op_cmpgei | D_op_cmpgeui | D_op_cmpge | D_op_cmpgeu | D_op_bge | D_op_rsv10 | D_op_bgeu | D_op_rsv42;
  assign E_ctrl_alu_subtract_nxt = D_ctrl_alu_subtract;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_alu_subtract <= 0;
      else if (E_en)
          E_ctrl_alu_subtract <= E_ctrl_alu_subtract_nxt;
    end


  assign D_ctrl_dst_data_sel_cmp = D_op_cmpgei | D_op_cmplti | D_op_cmpnei | D_op_cmpgeui | D_op_cmpltui | D_op_cmpeqi | D_op_rsvx00 | D_op_cmpge | D_op_cmplt | D_op_cmpne | D_op_cmpgeu | D_op_cmpltu | D_op_cmpeq | D_op_rsvx56;
  assign E_ctrl_dst_data_sel_cmp_nxt = D_ctrl_dst_data_sel_cmp;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_dst_data_sel_cmp <= 0;
      else if (E_en)
          E_ctrl_dst_data_sel_cmp <= E_ctrl_dst_data_sel_cmp_nxt;
    end


  assign D_ctrl_dst_data_sel_logic_result = D_op_and | D_op_or | D_op_xor | D_op_nor | D_op_andhi | D_op_orhi | D_op_xorhi | D_op_andi | D_op_ori | D_op_xori;
  assign E_ctrl_dst_data_sel_logic_result_nxt = D_ctrl_dst_data_sel_logic_result;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_dst_data_sel_logic_result <= 0;
      else if (E_en)
          E_ctrl_dst_data_sel_logic_result <= E_ctrl_dst_data_sel_logic_result_nxt;
    end


  assign D_ctrl_dst_data_sel_pc_plus_one = D_op_call | D_op_rsv02 | D_op_nextpc | D_op_callr | D_op_trap | D_op_rsvx44 | D_op_mulxuu | D_op_rsvx15 | D_op_mulxsu | D_op_mulxss | D_op_initda | D_op_intr | D_op_rsvx60 | D_op_break | D_op_hbreak;
  assign E_ctrl_dst_data_sel_pc_plus_one_nxt = D_ctrl_dst_data_sel_pc_plus_one;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_dst_data_sel_pc_plus_one <= 0;
      else if (E_en)
          E_ctrl_dst_data_sel_pc_plus_one <= E_ctrl_dst_data_sel_pc_plus_one_nxt;
    end


  assign E_ctrl_wrctl_inst = E_op_wrctl;
  assign M_ctrl_wrctl_inst_nxt = E_ctrl_wrctl_inst;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_wrctl_inst <= 0;
      else if (M_en)
          M_ctrl_wrctl_inst <= M_ctrl_wrctl_inst_nxt;
    end


  assign A_ctrl_wrctl_inst_nxt = M_ctrl_wrctl_inst;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_wrctl_inst <= 0;
      else if (A_en)
          A_ctrl_wrctl_inst <= A_ctrl_wrctl_inst_nxt;
    end


  assign E_ctrl_rdctl_inst = E_op_rdctl;
  assign M_ctrl_rdctl_inst_nxt = E_ctrl_rdctl_inst;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_rdctl_inst <= 0;
      else if (M_en)
          M_ctrl_rdctl_inst <= M_ctrl_rdctl_inst_nxt;
    end


  assign A_ctrl_rdctl_inst_nxt = M_ctrl_rdctl_inst;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_rdctl_inst <= 0;
      else if (A_en)
          A_ctrl_rdctl_inst <= A_ctrl_rdctl_inst_nxt;
    end


  assign E_ctrl_ld = E_op_ldb | E_op_ldh | E_op_ldl | E_op_ldw | E_op_ldbio | E_op_ldhio | E_op_ldwio | E_op_rsv63 | E_op_ldbu | E_op_ldhu | E_op_ldbuio | E_op_ldhuio;
  assign M_ctrl_ld_nxt = E_ctrl_ld;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld <= 0;
      else if (M_en)
          M_ctrl_ld <= M_ctrl_ld_nxt;
    end


  assign A_ctrl_ld_nxt = M_ctrl_ld;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_ld <= 0;
      else if (A_en)
          A_ctrl_ld <= A_ctrl_ld_nxt;
    end


  assign E_ctrl_ld_dcache_management = E_op_ldb | E_op_ldh | E_op_ldl | E_op_ldw | E_op_ldbio | E_op_ldhio | E_op_ldwio | E_op_rsv63 | E_op_ldbu | E_op_ldhu | E_op_ldbuio | E_op_ldhuio | E_op_initd | E_op_flushd | E_op_flushda;
  assign M_ctrl_ld_dcache_management_nxt = E_ctrl_ld_dcache_management;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_dcache_management <= 0;
      else if (M_en)
          M_ctrl_ld_dcache_management <= M_ctrl_ld_dcache_management_nxt;
    end


  assign A_ctrl_ld_dcache_management_nxt = M_ctrl_ld_dcache_management;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_ld_dcache_management <= 0;
      else if (A_en)
          A_ctrl_ld_dcache_management <= A_ctrl_ld_dcache_management_nxt;
    end


  assign E_ctrl_ld_signed = E_op_ldb | E_op_ldh | E_op_ldl | E_op_ldw | E_op_ldbio | E_op_ldhio | E_op_ldwio | E_op_rsv63;
  assign M_ctrl_ld_signed_nxt = E_ctrl_ld_signed;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_signed <= 0;
      else if (M_en)
          M_ctrl_ld_signed <= M_ctrl_ld_signed_nxt;
    end


  assign A_ctrl_ld_signed_nxt = M_ctrl_ld_signed;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_ld_signed <= 0;
      else if (A_en)
          A_ctrl_ld_signed <= A_ctrl_ld_signed_nxt;
    end


  assign E_ctrl_ld8 = E_op_ldb | E_op_ldbu | E_op_ldbio | E_op_ldbuio;
  assign M_ctrl_ld8_nxt = E_ctrl_ld8;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld8 <= 0;
      else if (M_en)
          M_ctrl_ld8 <= M_ctrl_ld8_nxt;
    end


  assign A_ctrl_ld8_nxt = M_ctrl_ld8;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_ld8 <= 0;
      else if (A_en)
          A_ctrl_ld8 <= A_ctrl_ld8_nxt;
    end


  assign E_ctrl_ld16 = E_op_ldhu | E_op_ldh | E_op_ldhio | E_op_ldhuio;
  assign M_ctrl_ld16_nxt = E_ctrl_ld16;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld16 <= 0;
      else if (M_en)
          M_ctrl_ld16 <= M_ctrl_ld16_nxt;
    end


  assign A_ctrl_ld16_nxt = M_ctrl_ld16;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_ld16 <= 0;
      else if (A_en)
          A_ctrl_ld16 <= A_ctrl_ld16_nxt;
    end


  assign E_ctrl_ld32 = E_op_ldw | E_op_ldl | E_op_ldwio | E_op_rsv63;
  assign M_ctrl_ld32_nxt = E_ctrl_ld32;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld32 <= 0;
      else if (M_en)
          M_ctrl_ld32 <= M_ctrl_ld32_nxt;
    end


  assign A_ctrl_ld32_nxt = M_ctrl_ld32;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_ld32 <= 0;
      else if (A_en)
          A_ctrl_ld32 <= A_ctrl_ld32_nxt;
    end


  assign E_ctrl_ld8_ld16 = E_op_ldb | E_op_ldbu | E_op_ldbio | E_op_ldbuio | E_op_ldhu | E_op_ldh | E_op_ldhio | E_op_ldhuio;
  assign M_ctrl_ld8_ld16_nxt = E_ctrl_ld8_ld16;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld8_ld16 <= 0;
      else if (M_en)
          M_ctrl_ld8_ld16 <= M_ctrl_ld8_ld16_nxt;
    end


  assign A_ctrl_ld8_ld16_nxt = M_ctrl_ld8_ld16;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_ld8_ld16 <= 0;
      else if (A_en)
          A_ctrl_ld8_ld16 <= A_ctrl_ld8_ld16_nxt;
    end


  assign E_ctrl_ld_io = E_op_ldbuio | E_op_ldhuio | E_op_ldbio | E_op_ldhio | E_op_ldwio | E_op_rsv63;
  assign M_ctrl_ld_io_nxt = E_ctrl_ld_io;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_io <= 0;
      else if (M_en)
          M_ctrl_ld_io <= M_ctrl_ld_io_nxt;
    end


  assign E_ctrl_ld_non_io = E_op_ldbu | E_op_ldhu | E_op_ldb | E_op_ldh | E_op_ldw | E_op_ldl;
  assign M_ctrl_ld_non_io_nxt = E_ctrl_ld_non_io;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_non_io <= 0;
      else if (M_en)
          M_ctrl_ld_non_io <= M_ctrl_ld_non_io_nxt;
    end


  assign A_ctrl_ld_non_io_nxt = M_ctrl_ld_non_io;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_ld_non_io <= 0;
      else if (A_en)
          A_ctrl_ld_non_io <= A_ctrl_ld_non_io_nxt;
    end


  assign E_ctrl_st = E_op_stb | E_op_sth | E_op_stw | E_op_stc | E_op_stbio | E_op_sthio | E_op_stwio | E_op_rsv61;
  assign M_ctrl_st_nxt = E_ctrl_st;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_st <= 0;
      else if (M_en)
          M_ctrl_st <= M_ctrl_st_nxt;
    end


  assign A_ctrl_st_nxt = M_ctrl_st;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_st <= 0;
      else if (A_en)
          A_ctrl_st <= A_ctrl_st_nxt;
    end


  assign E_ctrl_st8 = E_op_stb | E_op_stbio;
  assign M_ctrl_st8_nxt = E_ctrl_st8;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_st8 <= 0;
      else if (M_en)
          M_ctrl_st8 <= M_ctrl_st8_nxt;
    end


  assign E_ctrl_st16 = E_op_sth | E_op_rsv09 | E_op_sthio | E_op_rsv41;
  assign M_ctrl_st16_nxt = E_ctrl_st16;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_st16 <= 0;
      else if (M_en)
          M_ctrl_st16 <= M_ctrl_st16_nxt;
    end


  assign E_ctrl_st_io = E_op_stbio | E_op_rsv33 | E_op_sthio | E_op_rsv41 | E_op_stwio | E_op_rsv49 | E_op_rsv61 | E_op_rsv57;
  assign M_ctrl_st_io_nxt = E_ctrl_st_io;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_st_io <= 0;
      else if (M_en)
          M_ctrl_st_io <= M_ctrl_st_io_nxt;
    end


  assign E_ctrl_st_non_io = E_op_stb | E_op_sth | E_op_stw | E_op_stc;
  assign M_ctrl_st_non_io_nxt = E_ctrl_st_non_io;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_st_non_io <= 0;
      else if (M_en)
          M_ctrl_st_non_io <= M_ctrl_st_non_io_nxt;
    end


  assign E_ctrl_mem8 = E_op_ldb | E_op_ldbu | E_op_ldbio | E_op_ldbuio | E_op_stb | E_op_stbio;
  assign M_ctrl_mem8_nxt = E_ctrl_mem8;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_mem8 <= 0;
      else if (M_en)
          M_ctrl_mem8 <= M_ctrl_mem8_nxt;
    end


  assign E_ctrl_mem16 = E_op_ldhu | E_op_ldh | E_op_ldhio | E_op_ldhuio | E_op_sth | E_op_rsv09 | E_op_sthio | E_op_rsv41;
  assign M_ctrl_mem16_nxt = E_ctrl_mem16;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_mem16 <= 0;
      else if (M_en)
          M_ctrl_mem16 <= M_ctrl_mem16_nxt;
    end


  assign E_ctrl_mem32 = E_op_ldw | E_op_ldl | E_op_ldwio | E_op_rsv63 | E_op_stw | E_op_rsv17 | E_op_stc | E_op_rsv25 | E_op_stwio | E_op_rsv49 | E_op_rsv61 | E_op_rsv57;
  assign M_ctrl_mem32_nxt = E_ctrl_mem32;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_mem32 <= 0;
      else if (M_en)
          M_ctrl_mem32 <= M_ctrl_mem32_nxt;
    end


  assign E_ctrl_ld_st = E_op_ldb | E_op_ldh | E_op_ldl | E_op_ldw | E_op_ldbio | E_op_ldhio | E_op_ldwio | E_op_rsv63 | E_op_ldbu | E_op_ldhu | E_op_ldbuio | E_op_ldhuio | E_op_stb | E_op_sth | E_op_stw | E_op_stc | E_op_stbio | E_op_sthio | E_op_stwio | E_op_rsv61;
  assign M_ctrl_ld_st_nxt = E_ctrl_ld_st;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_st <= 0;
      else if (M_en)
          M_ctrl_ld_st <= M_ctrl_ld_st_nxt;
    end


  assign A_ctrl_ld_st_nxt = M_ctrl_ld_st;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_ld_st <= 0;
      else if (A_en)
          A_ctrl_ld_st <= A_ctrl_ld_st_nxt;
    end


  assign E_ctrl_ld_st_io = E_op_ldbuio | E_op_ldhuio | E_op_ldbio | E_op_ldhio | E_op_ldwio | E_op_rsv63 | E_op_stbio | E_op_rsv33 | E_op_sthio | E_op_rsv41 | E_op_stwio | E_op_rsv49 | E_op_rsv61 | E_op_rsv57;
  assign M_ctrl_ld_st_io_nxt = E_ctrl_ld_st_io;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_st_io <= 0;
      else if (M_en)
          M_ctrl_ld_st_io <= M_ctrl_ld_st_io_nxt;
    end


  assign E_ctrl_ld_st_non_io = E_op_ldbu | E_op_ldhu | E_op_ldb | E_op_ldh | E_op_ldw | E_op_ldl | E_op_stb | E_op_sth | E_op_stw | E_op_stc;
  assign M_ctrl_ld_st_non_io_nxt = E_ctrl_ld_st_non_io;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_st_non_io <= 0;
      else if (M_en)
          M_ctrl_ld_st_non_io <= M_ctrl_ld_st_non_io_nxt;
    end


  assign E_ctrl_ld_st_non_io_non_st32 = E_op_ldbu | E_op_ldhu | E_op_ldb | E_op_ldh | E_op_ldw | E_op_ldl | E_op_stb | E_op_sth;
  assign M_ctrl_ld_st_non_io_non_st32_nxt = E_ctrl_ld_st_non_io_non_st32;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_st_non_io_non_st32 <= 0;
      else if (M_en)
          M_ctrl_ld_st_non_io_non_st32 <= M_ctrl_ld_st_non_io_non_st32_nxt;
    end


  assign E_ctrl_ld_st_non_st32 = E_op_ldb | E_op_ldh | E_op_ldl | E_op_ldw | E_op_ldbio | E_op_ldhio | E_op_ldwio | E_op_rsv63 | E_op_ldbu | E_op_ldhu | E_op_ldbuio | E_op_ldhuio | E_op_stb | E_op_stbio | E_op_sth | E_op_rsv09 | E_op_sthio | E_op_rsv41;
  assign M_ctrl_ld_st_non_st32_nxt = E_ctrl_ld_st_non_st32;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_st_non_st32 <= 0;
      else if (M_en)
          M_ctrl_ld_st_non_st32 <= M_ctrl_ld_st_non_st32_nxt;
    end


  assign E_ctrl_dcache_management = E_op_initd | E_op_rsv49 | E_op_flushd | E_op_rsv57 | E_op_flushda | E_op_rsv25;
  assign M_ctrl_dcache_management_nxt = E_ctrl_dcache_management;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_dcache_management <= 0;
      else if (M_en)
          M_ctrl_dcache_management <= M_ctrl_dcache_management_nxt;
    end


  assign A_ctrl_dcache_management_nxt = M_ctrl_dcache_management;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_dcache_management <= 0;
      else if (A_en)
          A_ctrl_dcache_management <= A_ctrl_dcache_management_nxt;
    end


  assign E_ctrl_mem = E_op_ldb | E_op_ldh | E_op_ldl | E_op_ldw | E_op_ldbio | E_op_ldhio | E_op_ldwio | E_op_rsv63 | E_op_ldbu | E_op_ldhu | E_op_ldbuio | E_op_ldhuio | E_op_initd | E_op_flushd | E_op_flushda | E_op_stb | E_op_sth | E_op_stw | E_op_stc | E_op_stbio | E_op_sthio | E_op_stwio | E_op_rsv61;
  assign M_ctrl_mem_nxt = E_ctrl_mem;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_mem <= 0;
      else if (M_en)
          M_ctrl_mem <= M_ctrl_mem_nxt;
    end


  assign A_ctrl_mem_nxt = M_ctrl_mem;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_mem <= 0;
      else if (A_en)
          A_ctrl_mem <= A_ctrl_mem_nxt;
    end


  assign E_ctrl_invalidate_i = E_op_initi | E_op_flushi;
  assign M_ctrl_invalidate_i_nxt = E_ctrl_invalidate_i;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_invalidate_i <= 0;
      else if (M_en)
          M_ctrl_invalidate_i <= M_ctrl_invalidate_i_nxt;
    end


  assign A_ctrl_invalidate_i_nxt = M_ctrl_invalidate_i;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_invalidate_i <= 0;
      else if (A_en)
          A_ctrl_invalidate_i <= A_ctrl_invalidate_i_nxt;
    end


  assign D_ctrl_custom_combo = 1'b0;
  assign E_ctrl_custom_combo_nxt = 1'b0;
  assign E_ctrl_custom_combo = E_ctrl_custom_combo_nxt;
  assign D_ctrl_custom_multi = 1'b0;
  assign E_ctrl_custom_multi_nxt = 1'b0;
  assign E_ctrl_custom_multi = E_ctrl_custom_multi_nxt;
  assign M_ctrl_custom_multi_nxt = 1'b0;
  assign M_ctrl_custom_multi = M_ctrl_custom_multi_nxt;
  assign A_ctrl_custom_multi_nxt = 1'b0;
  assign A_ctrl_custom_multi = A_ctrl_custom_multi_nxt;
  assign D_ctrl_supervisor_only = D_op_initi | D_op_initd | D_op_eret | D_op_bret | D_op_wrctl | D_op_rdctl;
  assign E_ctrl_supervisor_only_nxt = D_ctrl_supervisor_only;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_supervisor_only <= 0;
      else if (E_en)
          E_ctrl_supervisor_only <= E_ctrl_supervisor_only_nxt;
    end


  assign D_ctrl_mul_lsw = D_op_muli | D_op_mul | D_op_rsvx47 | D_op_rsvx55 | D_op_rsvx63;
  assign E_ctrl_mul_lsw_nxt = D_ctrl_mul_lsw;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_mul_lsw <= 0;
      else if (E_en)
          E_ctrl_mul_lsw <= E_ctrl_mul_lsw_nxt;
    end


  assign M_ctrl_mul_lsw_nxt = E_ctrl_mul_lsw;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_mul_lsw <= 0;
      else if (M_en)
          M_ctrl_mul_lsw <= M_ctrl_mul_lsw_nxt;
    end


  assign A_ctrl_mul_lsw_nxt = M_ctrl_mul_lsw;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_mul_lsw <= 0;
      else if (A_en)
          A_ctrl_mul_lsw <= A_ctrl_mul_lsw_nxt;
    end


  assign D_ctrl_rot = D_op_roli | D_op_rsvx34 | D_op_rol | D_op_rsvx35 | D_op_rsvx10 | D_op_ror | D_op_rsvx42 | D_op_rsvx43;
  assign E_ctrl_rot_nxt = D_ctrl_rot;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_rot <= 0;
      else if (E_en)
          E_ctrl_rot <= E_ctrl_rot_nxt;
    end


  assign M_ctrl_rot_nxt = E_ctrl_rot;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_rot <= 0;
      else if (M_en)
          M_ctrl_rot <= M_ctrl_rot_nxt;
    end


  assign D_ctrl_shift_rot = D_op_slli | D_op_rsvx50 | D_op_sll | D_op_rsvx51 | D_op_roli | D_op_rsvx34 | D_op_rol | D_op_rsvx35 | D_op_srli | D_op_srl | D_op_srai | D_op_sra | D_op_rsvx10 | D_op_ror | D_op_rsvx42 | D_op_rsvx43;
  assign E_ctrl_shift_rot_nxt = D_ctrl_shift_rot;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_shift_rot <= 0;
      else if (E_en)
          E_ctrl_shift_rot <= E_ctrl_shift_rot_nxt;
    end


  assign M_ctrl_shift_rot_nxt = E_ctrl_shift_rot;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_shift_rot <= 0;
      else if (M_en)
          M_ctrl_shift_rot <= M_ctrl_shift_rot_nxt;
    end


  assign A_ctrl_shift_rot_nxt = M_ctrl_shift_rot;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_shift_rot <= 0;
      else if (A_en)
          A_ctrl_shift_rot <= A_ctrl_shift_rot_nxt;
    end


  assign D_ctrl_shift_rot_left = D_op_slli | D_op_rsvx50 | D_op_sll | D_op_rsvx51 | D_op_roli | D_op_rsvx34 | D_op_rol | D_op_rsvx35;
  assign E_ctrl_shift_rot_left_nxt = D_ctrl_shift_rot_left;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_shift_rot_left <= 0;
      else if (E_en)
          E_ctrl_shift_rot_left <= E_ctrl_shift_rot_left_nxt;
    end


  assign M_ctrl_shift_rot_left_nxt = E_ctrl_shift_rot_left;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_shift_rot_left <= 0;
      else if (M_en)
          M_ctrl_shift_rot_left <= M_ctrl_shift_rot_left_nxt;
    end


  assign D_ctrl_shift_rot_right = D_op_srli | D_op_srl | D_op_srai | D_op_sra | D_op_rsvx10 | D_op_ror | D_op_rsvx42 | D_op_rsvx43;
  assign E_ctrl_shift_rot_right_nxt = D_ctrl_shift_rot_right;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_shift_rot_right <= 0;
      else if (E_en)
          E_ctrl_shift_rot_right <= E_ctrl_shift_rot_right_nxt;
    end


  assign M_ctrl_shift_rot_right_nxt = E_ctrl_shift_rot_right;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_shift_rot_right <= 0;
      else if (M_en)
          M_ctrl_shift_rot_right <= M_ctrl_shift_rot_right_nxt;
    end


  assign D_ctrl_shift_right_arith = D_op_srai | D_op_sra;
  assign E_ctrl_shift_right_arith_nxt = D_ctrl_shift_right_arith;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_shift_right_arith <= 0;
      else if (E_en)
          E_ctrl_shift_right_arith <= E_ctrl_shift_right_arith_nxt;
    end


  assign M_ctrl_shift_right_arith_nxt = E_ctrl_shift_right_arith;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_shift_right_arith <= 0;
      else if (M_en)
          M_ctrl_shift_right_arith <= M_ctrl_shift_right_arith_nxt;
    end


  assign D_ctrl_div = D_op_divu | D_op_div;
  assign E_ctrl_div_nxt = D_ctrl_div;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_div <= 0;
      else if (E_en)
          E_ctrl_div <= E_ctrl_div_nxt;
    end


  assign M_ctrl_div_nxt = E_ctrl_div;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_div <= 0;
      else if (M_en)
          M_ctrl_div <= M_ctrl_div_nxt;
    end


  assign A_ctrl_div_nxt = M_ctrl_div;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_div <= 0;
      else if (A_en)
          A_ctrl_div <= A_ctrl_div_nxt;
    end


  assign D_ctrl_div_signed = D_op_div;
  assign E_ctrl_div_signed_nxt = D_ctrl_div_signed;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_div_signed <= 0;
      else if (E_en)
          E_ctrl_div_signed <= E_ctrl_div_signed_nxt;
    end


  assign E_ctrl_initd = E_op_initd | E_op_rsv49;
  assign M_ctrl_initd_nxt = E_ctrl_initd;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_initd <= 0;
      else if (M_en)
          M_ctrl_initd <= M_ctrl_initd_nxt;
    end


  assign A_ctrl_initd_nxt = M_ctrl_initd;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_initd <= 0;
      else if (A_en)
          A_ctrl_initd <= A_ctrl_initd_nxt;
    end


  assign E_ctrl_initd_flushd = E_op_initd | E_op_rsv49 | E_op_flushd | E_op_rsv57;
  assign M_ctrl_initd_flushd_nxt = E_ctrl_initd_flushd;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_initd_flushd <= 0;
      else if (M_en)
          M_ctrl_initd_flushd <= M_ctrl_initd_flushd_nxt;
    end


  assign A_ctrl_initd_flushd_nxt = M_ctrl_initd_flushd;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_initd_flushd <= 0;
      else if (A_en)
          A_ctrl_initd_flushd <= A_ctrl_initd_flushd_nxt;
    end


  assign E_ctrl_flushd_flushda = E_op_flushd | E_op_rsv57 | E_op_flushda | E_op_rsv25;
  assign M_ctrl_flushd_flushda_nxt = E_ctrl_flushd_flushda;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_flushd_flushda <= 0;
      else if (M_en)
          M_ctrl_flushd_flushda <= M_ctrl_flushd_flushda_nxt;
    end


  assign A_ctrl_flushd_flushda_nxt = M_ctrl_flushd_flushda;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_flushd_flushda <= 0;
      else if (A_en)
          A_ctrl_flushd_flushda <= A_ctrl_flushd_flushda_nxt;
    end


  assign E_ctrl_initd_flushd_flushda = E_op_flushda | E_op_initd | E_op_flushd;
  assign M_ctrl_initd_flushd_flushda_nxt = E_ctrl_initd_flushd_flushda;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_initd_flushd_flushda <= 0;
      else if (M_en)
          M_ctrl_initd_flushd_flushda <= M_ctrl_initd_flushd_flushda_nxt;
    end


  assign A_ctrl_initd_flushd_flushda_nxt = M_ctrl_initd_flushd_flushda;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_initd_flushd_flushda <= 0;
      else if (A_en)
          A_ctrl_initd_flushd_flushda <= A_ctrl_initd_flushd_flushda_nxt;
    end


  assign E_ctrl_mem_data_access = E_op_ldb | E_op_ldh | E_op_ldl | E_op_ldw | E_op_ldbio | E_op_ldhio | E_op_ldwio | E_op_rsv63 | E_op_ldbu | E_op_ldhu | E_op_ldbuio | E_op_ldhuio | E_op_stb | E_op_sth | E_op_stw | E_op_stc | E_op_stbio | E_op_sthio | E_op_stwio | E_op_rsv61 | E_op_flushda;
  assign M_ctrl_mem_data_access_nxt = E_ctrl_mem_data_access;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_mem_data_access <= 0;
      else if (M_en)
          M_ctrl_mem_data_access <= M_ctrl_mem_data_access_nxt;
    end


  assign A_ctrl_mem_data_access_nxt = M_ctrl_mem_data_access;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          A_ctrl_mem_data_access <= 0;
      else if (A_en)
          A_ctrl_mem_data_access <= A_ctrl_mem_data_access_nxt;
    end


  assign D_ctrl_late_result = D_op_ldb | D_op_ldh | D_op_ldl | D_op_ldw | D_op_ldbio | D_op_ldhio | D_op_ldwio | D_op_rsv63 | D_op_ldbu | D_op_ldhu | D_op_ldbuio | D_op_ldhuio | D_op_slli | D_op_rsvx50 | D_op_sll | D_op_rsvx51 | D_op_roli | D_op_rsvx34 | D_op_rol | D_op_rsvx35 | D_op_srli | D_op_srl | D_op_srai | D_op_sra | D_op_rsvx10 | D_op_ror | D_op_rsvx42 | D_op_rsvx43 | D_op_rdctl | D_op_muli | D_op_mul | D_op_rsvx47 | D_op_rsvx55 | D_op_rsvx63 | D_op_divu | D_op_div;
  assign E_ctrl_late_result_nxt = D_ctrl_late_result;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_late_result <= 0;
      else if (E_en)
          E_ctrl_late_result <= E_ctrl_late_result_nxt;
    end


  assign M_ctrl_late_result_nxt = E_ctrl_late_result;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_late_result <= 0;
      else if (M_en)
          M_ctrl_late_result <= M_ctrl_late_result_nxt;
    end


  //instruction_master, which is an e_avalon_master
  //data_master, which is an e_avalon_master

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  assign F_inst = ((((F_iw_op[5 : 0] == 2))))? 56'h20207273763032 :
    ((((F_iw_op[5 : 0] == 16))))? 56'h20636d706c7469 :
    ((((F_iw_op[5 : 0] == 18))))? 56'h20207273763138 :
    ((((F_iw_op[5 : 0] == 26))))? 56'h20207273763236 :
    ((((F_iw_op[5 : 0] == 42))))? 56'h20207273763432 :
    ((((F_iw_op[5 : 0] == 39))))? 56'h20206c6462696f :
    ((((F_iw_op[5 : 0] == 3))))? 56'h2020206c646275 :
    ((((F_iw_op[5 : 0] == 52))))? 56'h2020206f726869 :
    ((((F_iw_op[5 : 0] == 14))))? 56'h20202020626765 :
    ((((F_iw_op[5 : 0] == 29))))? 56'h20202020737463 :
    ((((F_iw_op[5 : 0] == 6))))? 56'h20202020206272 :
    ((((F_iw_op[5 : 0] == 47))))? 56'h20206c6468696f :
    ((((F_iw_op[5 : 0] == 41))))? 56'h20207273763431 :
    ((((F_iw_op[5 : 0] == 55))))? 56'h20206c6477696f :
    ((((F_iw_op[5 : 0] == 61))))? 56'h20207273763631 :
    ((((F_iw_op[5 : 0] == 5))))? 56'h20202020737462 :
    ((((F_iw_op[5 : 0] == 62))))? 56'h20207273763632 :
    ((((F_iw_op[5 : 0] == 54))))? 56'h202020626c7475 :
    ((((F_iw_op[5 : 0] == 50))))? 56'h20637573746f6d :
    ((((F_iw_op[5 : 0] == 36))))? 56'h2020206d756c69 :
    ((((F_iw_op[5 : 0] == 8))))? 56'h20636d70676569 :
    ((((F_iw_op[5 : 0] == 28))))? 56'h202020786f7269 :
    ((((F_iw_op[5 : 0] == 23))))? 56'h202020206c6477 :
    ((((F_iw_op[5 : 0] == 32))))? 56'h20636d70657169 :
    ((((F_iw_op[5 : 0] == 15))))? 56'h202020206c6468 :
    ((((F_iw_op[5 : 0] == 21))))? 56'h20202020737477 :
    ((((F_iw_op[5 : 0] == 9))))? 56'h20207273763039 :
    ((((F_iw_op[5 : 0] == 24))))? 56'h20636d706e6569 :
    ((((F_iw_op[5 : 0] == 7))))? 56'h202020206c6462 :
    ((((F_iw_op[5 : 0] == 46))))? 56'h20202062676575 :
    ((((F_iw_op[5 : 0] == 53))))? 56'h2020737477696f :
    ((((F_iw_op[5 : 0] == 33))))? 56'h20207273763333 :
    ((((F_iw_op[5 : 0] == 31))))? 56'h202020206c646c :
    ((((F_iw_op[5 : 0] == 44))))? 56'h2020616e646869 :
    ((((F_iw_op[5 : 0] == 34))))? 56'h20207273763334 :
    ((((F_iw_op[5 : 0] == 35))))? 56'h206c646275696f :
    ((((F_iw_op[5 : 0] == 45))))? 56'h2020737468696f :
    ((((F_iw_op[5 : 0] == 40))))? 56'h636d7067657569 :
    ((((F_iw_op[5 : 0] == 37))))? 56'h2020737462696f :
    ((((F_iw_op[5 : 0] == 12))))? 56'h202020616e6469 :
    ((((F_iw_op[5 : 0] == 4))))? 56'h20202061646469 :
    ((((F_iw_op[5 : 0] == 27))))? 56'h666c7573686461 :
    ((((F_iw_op[5 : 0] == 49))))? 56'h20207273763439 :
    ((((F_iw_op[5 : 0] == 1))))? 56'h2020206a6d7069 :
    ((((F_iw_op[5 : 0] == 19))))? 56'h20696e69746461 :
    ((((F_iw_op[5 : 0] == 22))))? 56'h20202020626c74 :
    ((((F_iw_op[5 : 0] == 38))))? 56'h20202020626571 :
    ((((F_iw_op[5 : 0] == 20))))? 56'h202020206f7269 :
    ((((F_iw_op[5 : 0] == 48))))? 56'h636d706c747569 :
    ((((F_iw_op[5 : 0] == 56))))? 56'h20207273763536 :
    ((((F_iw_op[5 : 0] == 60))))? 56'h2020786f726869 :
    ((((F_iw_op[5 : 0] == 43))))? 56'h206c646875696f :
    ((((F_iw_op[5 : 0] == 30))))? 56'h20202020626e65 :
    ((((F_iw_op[5 : 0] == 63))))? 56'h20207273763633 :
    ((((F_iw_op[5 : 0] == 57))))? 56'h20207273763537 :
    ((((F_iw_op[5 : 0] == 0))))? 56'h20202063616c6c :
    ((((F_iw_op[5 : 0] == 11))))? 56'h2020206c646875 :
    ((((F_iw_op[5 : 0] == 59))))? 56'h20666c75736864 :
    ((((F_iw_op[5 : 0] == 51))))? 56'h2020696e697464 :
    ((((F_iw_op[5 : 0] == 10))))? 56'h20207273763130 :
    ((((F_iw_op[5 : 0] == 17))))? 56'h20207273763137 :
    ((((F_iw_op[5 : 0] == 13))))? 56'h20202020737468 :
    ((((F_iw_op[5 : 0] == 25))))? 56'h20207273763235 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 12))))? 56'h20666c75736869 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 7))))? 56'h206d756c787575 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 33))))? 56'h20727376783333 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 46))))? 56'h2020777263746c :
    (((F_op_opx & (F_iw_opx[5 : 0] == 2))))? 56'h202020726f6c69 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 61))))? 56'h202020696e7472 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 43))))? 56'h20727376783433 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 27))))? 56'h2020202073726c :
    (((F_op_opx & (F_iw_opx[5 : 0] == 45))))? 56'h20202074726170 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 17))))? 56'h20727376783137 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 52))))? 56'h2020627265616b :
    (((F_op_opx & (F_iw_opx[5 : 0] == 38))))? 56'h2020726463746c :
    (((F_op_opx & (F_iw_opx[5 : 0] == 48))))? 56'h20636d706c7475 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 29))))? 56'h202063616c6c72 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 8))))? 56'h2020636d706765 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 47))))? 56'h20727376783437 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 14))))? 56'h20202020616e64 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 0))))? 56'h20727376783030 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 56))))? 56'h20727376783536 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 53))))? 56'h2068627265616b :
    (((F_op_opx & (F_iw_opx[5 : 0] == 4))))? 56'h20666c75736870 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 6))))? 56'h202020206e6f72 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 50))))? 56'h20727376783530 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 41))))? 56'h2020696e697469 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 58))))? 56'h20202073726169 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 54))))? 56'h20202073796e63 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 15))))? 56'h20727376783135 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 55))))? 56'h20727376783535 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 62))))? 56'h20202063727374 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 42))))? 56'h20727376783432 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 30))))? 56'h20202020786f72 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 34))))? 56'h20727376783334 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 31))))? 56'h206d756c787373 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 51))))? 56'h20727376783531 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 10))))? 56'h20727376783130 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 1))))? 56'h20202065726574 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 25))))? 56'h20727376783235 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 13))))? 56'h202020206a6d70 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 22))))? 56'h20202020206f72 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 35))))? 56'h20727376783335 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 59))))? 56'h20202020737261 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 20))))? 56'h20727376783230 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 18))))? 56'h202020736c6c69 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 23))))? 56'h206d756c787375 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 21))))? 56'h20727376783231 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 11))))? 56'h20202020726f72 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 26))))? 56'h20202073726c69 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 19))))? 56'h20202020736c6c :
    (((F_op_opx & (F_iw_opx[5 : 0] == 37))))? 56'h20202020646976 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 16))))? 56'h2020636d706c74 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 49))))? 56'h20202020616464 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 44))))? 56'h20727376783434 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 9))))? 56'h20202062726574 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 60))))? 56'h20727376783630 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 63))))? 56'h20727376783633 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 39))))? 56'h202020206d756c :
    (((F_op_opx & (F_iw_opx[5 : 0] == 40))))? 56'h20636d70676575 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 24))))? 56'h2020636d706e65 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 32))))? 56'h2020636d706571 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 5))))? 56'h20202020726574 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 3))))? 56'h20202020726f6c :
    (((F_op_opx & (F_iw_opx[5 : 0] == 57))))? 56'h20202020737562 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 28))))? 56'h206e6578747063 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 36))))? 56'h20202064697675 :
    56'h20202020424144;

  assign D_inst = ((((D_iw_op[5 : 0] == 2))))? 56'h20207273763032 :
    ((((D_iw_op[5 : 0] == 16))))? 56'h20636d706c7469 :
    ((((D_iw_op[5 : 0] == 18))))? 56'h20207273763138 :
    ((((D_iw_op[5 : 0] == 26))))? 56'h20207273763236 :
    ((((D_iw_op[5 : 0] == 42))))? 56'h20207273763432 :
    ((((D_iw_op[5 : 0] == 39))))? 56'h20206c6462696f :
    ((((D_iw_op[5 : 0] == 3))))? 56'h2020206c646275 :
    ((((D_iw_op[5 : 0] == 52))))? 56'h2020206f726869 :
    ((((D_iw_op[5 : 0] == 14))))? 56'h20202020626765 :
    ((((D_iw_op[5 : 0] == 29))))? 56'h20202020737463 :
    ((((D_iw_op[5 : 0] == 6))))? 56'h20202020206272 :
    ((((D_iw_op[5 : 0] == 47))))? 56'h20206c6468696f :
    ((((D_iw_op[5 : 0] == 41))))? 56'h20207273763431 :
    ((((D_iw_op[5 : 0] == 55))))? 56'h20206c6477696f :
    ((((D_iw_op[5 : 0] == 61))))? 56'h20207273763631 :
    ((((D_iw_op[5 : 0] == 5))))? 56'h20202020737462 :
    ((((D_iw_op[5 : 0] == 62))))? 56'h20207273763632 :
    ((((D_iw_op[5 : 0] == 54))))? 56'h202020626c7475 :
    ((((D_iw_op[5 : 0] == 50))))? 56'h20637573746f6d :
    ((((D_iw_op[5 : 0] == 36))))? 56'h2020206d756c69 :
    ((((D_iw_op[5 : 0] == 28))))? 56'h202020786f7269 :
    ((((D_iw_op[5 : 0] == 8))))? 56'h20636d70676569 :
    ((((D_iw_op[5 : 0] == 23))))? 56'h202020206c6477 :
    ((((D_iw_op[5 : 0] == 32))))? 56'h20636d70657169 :
    ((((D_iw_op[5 : 0] == 15))))? 56'h202020206c6468 :
    ((((D_iw_op[5 : 0] == 21))))? 56'h20202020737477 :
    ((((D_iw_op[5 : 0] == 9))))? 56'h20207273763039 :
    ((((D_iw_op[5 : 0] == 24))))? 56'h20636d706e6569 :
    ((((D_iw_op[5 : 0] == 7))))? 56'h202020206c6462 :
    ((((D_iw_op[5 : 0] == 46))))? 56'h20202062676575 :
    ((((D_iw_op[5 : 0] == 53))))? 56'h2020737477696f :
    ((((D_iw_op[5 : 0] == 33))))? 56'h20207273763333 :
    ((((D_iw_op[5 : 0] == 31))))? 56'h202020206c646c :
    ((((D_iw_op[5 : 0] == 44))))? 56'h2020616e646869 :
    ((((D_iw_op[5 : 0] == 35))))? 56'h206c646275696f :
    ((((D_iw_op[5 : 0] == 34))))? 56'h20207273763334 :
    ((((D_iw_op[5 : 0] == 45))))? 56'h2020737468696f :
    ((((D_iw_op[5 : 0] == 40))))? 56'h636d7067657569 :
    ((((D_iw_op[5 : 0] == 37))))? 56'h2020737462696f :
    ((((D_iw_op[5 : 0] == 12))))? 56'h202020616e6469 :
    ((((D_iw_op[5 : 0] == 4))))? 56'h20202061646469 :
    ((((D_iw_op[5 : 0] == 27))))? 56'h666c7573686461 :
    ((((D_iw_op[5 : 0] == 49))))? 56'h20207273763439 :
    ((((D_iw_op[5 : 0] == 1))))? 56'h2020206a6d7069 :
    ((((D_iw_op[5 : 0] == 19))))? 56'h20696e69746461 :
    ((((D_iw_op[5 : 0] == 22))))? 56'h20202020626c74 :
    ((((D_iw_op[5 : 0] == 38))))? 56'h20202020626571 :
    ((((D_iw_op[5 : 0] == 20))))? 56'h202020206f7269 :
    ((((D_iw_op[5 : 0] == 48))))? 56'h636d706c747569 :
    ((((D_iw_op[5 : 0] == 60))))? 56'h2020786f726869 :
    ((((D_iw_op[5 : 0] == 56))))? 56'h20207273763536 :
    ((((D_iw_op[5 : 0] == 43))))? 56'h206c646875696f :
    ((((D_iw_op[5 : 0] == 63))))? 56'h20207273763633 :
    ((((D_iw_op[5 : 0] == 30))))? 56'h20202020626e65 :
    ((((D_iw_op[5 : 0] == 57))))? 56'h20207273763537 :
    ((((D_iw_op[5 : 0] == 0))))? 56'h20202063616c6c :
    ((((D_iw_op[5 : 0] == 11))))? 56'h2020206c646875 :
    ((((D_iw_op[5 : 0] == 59))))? 56'h20666c75736864 :
    ((((D_iw_op[5 : 0] == 51))))? 56'h2020696e697464 :
    ((((D_iw_op[5 : 0] == 10))))? 56'h20207273763130 :
    ((((D_iw_op[5 : 0] == 17))))? 56'h20207273763137 :
    ((((D_iw_op[5 : 0] == 13))))? 56'h20202020737468 :
    ((((D_iw_op[5 : 0] == 25))))? 56'h20207273763235 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 12))))? 56'h20666c75736869 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 7))))? 56'h206d756c787575 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 33))))? 56'h20727376783333 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 46))))? 56'h2020777263746c :
    (((D_op_opx & (D_iw_opx[5 : 0] == 2))))? 56'h202020726f6c69 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 61))))? 56'h202020696e7472 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 43))))? 56'h20727376783433 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 27))))? 56'h2020202073726c :
    (((D_op_opx & (D_iw_opx[5 : 0] == 45))))? 56'h20202074726170 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 17))))? 56'h20727376783137 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 52))))? 56'h2020627265616b :
    (((D_op_opx & (D_iw_opx[5 : 0] == 38))))? 56'h2020726463746c :
    (((D_op_opx & (D_iw_opx[5 : 0] == 48))))? 56'h20636d706c7475 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 29))))? 56'h202063616c6c72 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 8))))? 56'h2020636d706765 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 47))))? 56'h20727376783437 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 14))))? 56'h20202020616e64 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 0))))? 56'h20727376783030 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 56))))? 56'h20727376783536 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 53))))? 56'h2068627265616b :
    (((D_op_opx & (D_iw_opx[5 : 0] == 4))))? 56'h20666c75736870 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 6))))? 56'h202020206e6f72 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 50))))? 56'h20727376783530 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 41))))? 56'h2020696e697469 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 58))))? 56'h20202073726169 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 54))))? 56'h20202073796e63 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 15))))? 56'h20727376783135 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 55))))? 56'h20727376783535 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 62))))? 56'h20202063727374 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 42))))? 56'h20727376783432 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 30))))? 56'h20202020786f72 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 34))))? 56'h20727376783334 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 31))))? 56'h206d756c787373 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 51))))? 56'h20727376783531 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 10))))? 56'h20727376783130 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 1))))? 56'h20202065726574 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 25))))? 56'h20727376783235 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 13))))? 56'h202020206a6d70 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 22))))? 56'h20202020206f72 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 35))))? 56'h20727376783335 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 59))))? 56'h20202020737261 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 20))))? 56'h20727376783230 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 18))))? 56'h202020736c6c69 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 23))))? 56'h206d756c787375 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 21))))? 56'h20727376783231 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 11))))? 56'h20202020726f72 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 26))))? 56'h20202073726c69 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 19))))? 56'h20202020736c6c :
    (((D_op_opx & (D_iw_opx[5 : 0] == 37))))? 56'h20202020646976 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 16))))? 56'h2020636d706c74 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 49))))? 56'h20202020616464 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 44))))? 56'h20727376783434 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 9))))? 56'h20202062726574 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 60))))? 56'h20727376783630 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 63))))? 56'h20727376783633 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 39))))? 56'h202020206d756c :
    (((D_op_opx & (D_iw_opx[5 : 0] == 40))))? 56'h20636d70676575 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 24))))? 56'h2020636d706e65 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 32))))? 56'h2020636d706571 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 5))))? 56'h20202020726574 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 3))))? 56'h20202020726f6c :
    (((D_op_opx & (D_iw_opx[5 : 0] == 57))))? 56'h20202020737562 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 28))))? 56'h206e6578747063 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 36))))? 56'h20202064697675 :
    56'h20202020424144;

  assign E_inst = ((((E_iw_op[5 : 0] == 2))))? 56'h20207273763032 :
    ((((E_iw_op[5 : 0] == 16))))? 56'h20636d706c7469 :
    ((((E_iw_op[5 : 0] == 18))))? 56'h20207273763138 :
    ((((E_iw_op[5 : 0] == 26))))? 56'h20207273763236 :
    ((((E_iw_op[5 : 0] == 42))))? 56'h20207273763432 :
    ((((E_iw_op[5 : 0] == 39))))? 56'h20206c6462696f :
    ((((E_iw_op[5 : 0] == 3))))? 56'h2020206c646275 :
    ((((E_iw_op[5 : 0] == 52))))? 56'h2020206f726869 :
    ((((E_iw_op[5 : 0] == 14))))? 56'h20202020626765 :
    ((((E_iw_op[5 : 0] == 29))))? 56'h20202020737463 :
    ((((E_iw_op[5 : 0] == 6))))? 56'h20202020206272 :
    ((((E_iw_op[5 : 0] == 47))))? 56'h20206c6468696f :
    ((((E_iw_op[5 : 0] == 41))))? 56'h20207273763431 :
    ((((E_iw_op[5 : 0] == 55))))? 56'h20206c6477696f :
    ((((E_iw_op[5 : 0] == 61))))? 56'h20207273763631 :
    ((((E_iw_op[5 : 0] == 5))))? 56'h20202020737462 :
    ((((E_iw_op[5 : 0] == 62))))? 56'h20207273763632 :
    ((((E_iw_op[5 : 0] == 54))))? 56'h202020626c7475 :
    ((((E_iw_op[5 : 0] == 50))))? 56'h20637573746f6d :
    ((((E_iw_op[5 : 0] == 36))))? 56'h2020206d756c69 :
    ((((E_iw_op[5 : 0] == 28))))? 56'h202020786f7269 :
    ((((E_iw_op[5 : 0] == 8))))? 56'h20636d70676569 :
    ((((E_iw_op[5 : 0] == 23))))? 56'h202020206c6477 :
    ((((E_iw_op[5 : 0] == 32))))? 56'h20636d70657169 :
    ((((E_iw_op[5 : 0] == 15))))? 56'h202020206c6468 :
    ((((E_iw_op[5 : 0] == 21))))? 56'h20202020737477 :
    ((((E_iw_op[5 : 0] == 9))))? 56'h20207273763039 :
    ((((E_iw_op[5 : 0] == 24))))? 56'h20636d706e6569 :
    ((((E_iw_op[5 : 0] == 7))))? 56'h202020206c6462 :
    ((((E_iw_op[5 : 0] == 46))))? 56'h20202062676575 :
    ((((E_iw_op[5 : 0] == 53))))? 56'h2020737477696f :
    ((((E_iw_op[5 : 0] == 33))))? 56'h20207273763333 :
    ((((E_iw_op[5 : 0] == 31))))? 56'h202020206c646c :
    ((((E_iw_op[5 : 0] == 44))))? 56'h2020616e646869 :
    ((((E_iw_op[5 : 0] == 35))))? 56'h206c646275696f :
    ((((E_iw_op[5 : 0] == 34))))? 56'h20207273763334 :
    ((((E_iw_op[5 : 0] == 45))))? 56'h2020737468696f :
    ((((E_iw_op[5 : 0] == 40))))? 56'h636d7067657569 :
    ((((E_iw_op[5 : 0] == 37))))? 56'h2020737462696f :
    ((((E_iw_op[5 : 0] == 12))))? 56'h202020616e6469 :
    ((((E_iw_op[5 : 0] == 4))))? 56'h20202061646469 :
    ((((E_iw_op[5 : 0] == 27))))? 56'h666c7573686461 :
    ((((E_iw_op[5 : 0] == 49))))? 56'h20207273763439 :
    ((((E_iw_op[5 : 0] == 1))))? 56'h2020206a6d7069 :
    ((((E_iw_op[5 : 0] == 19))))? 56'h20696e69746461 :
    ((((E_iw_op[5 : 0] == 22))))? 56'h20202020626c74 :
    ((((E_iw_op[5 : 0] == 38))))? 56'h20202020626571 :
    ((((E_iw_op[5 : 0] == 20))))? 56'h202020206f7269 :
    ((((E_iw_op[5 : 0] == 48))))? 56'h636d706c747569 :
    ((((E_iw_op[5 : 0] == 60))))? 56'h2020786f726869 :
    ((((E_iw_op[5 : 0] == 56))))? 56'h20207273763536 :
    ((((E_iw_op[5 : 0] == 43))))? 56'h206c646875696f :
    ((((E_iw_op[5 : 0] == 63))))? 56'h20207273763633 :
    ((((E_iw_op[5 : 0] == 30))))? 56'h20202020626e65 :
    ((((E_iw_op[5 : 0] == 57))))? 56'h20207273763537 :
    ((((E_iw_op[5 : 0] == 0))))? 56'h20202063616c6c :
    ((((E_iw_op[5 : 0] == 11))))? 56'h2020206c646875 :
    ((((E_iw_op[5 : 0] == 59))))? 56'h20666c75736864 :
    ((((E_iw_op[5 : 0] == 51))))? 56'h2020696e697464 :
    ((((E_iw_op[5 : 0] == 10))))? 56'h20207273763130 :
    ((((E_iw_op[5 : 0] == 17))))? 56'h20207273763137 :
    ((((E_iw_op[5 : 0] == 13))))? 56'h20202020737468 :
    ((((E_iw_op[5 : 0] == 25))))? 56'h20207273763235 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 12))))? 56'h20666c75736869 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 7))))? 56'h206d756c787575 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 33))))? 56'h20727376783333 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 46))))? 56'h2020777263746c :
    (((E_op_opx & (E_iw_opx[5 : 0] == 2))))? 56'h202020726f6c69 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 61))))? 56'h202020696e7472 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 43))))? 56'h20727376783433 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 27))))? 56'h2020202073726c :
    (((E_op_opx & (E_iw_opx[5 : 0] == 45))))? 56'h20202074726170 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 17))))? 56'h20727376783137 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 52))))? 56'h2020627265616b :
    (((E_op_opx & (E_iw_opx[5 : 0] == 38))))? 56'h2020726463746c :
    (((E_op_opx & (E_iw_opx[5 : 0] == 48))))? 56'h20636d706c7475 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 29))))? 56'h202063616c6c72 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 8))))? 56'h2020636d706765 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 47))))? 56'h20727376783437 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 14))))? 56'h20202020616e64 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 0))))? 56'h20727376783030 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 56))))? 56'h20727376783536 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 53))))? 56'h2068627265616b :
    (((E_op_opx & (E_iw_opx[5 : 0] == 4))))? 56'h20666c75736870 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 6))))? 56'h202020206e6f72 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 50))))? 56'h20727376783530 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 41))))? 56'h2020696e697469 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 58))))? 56'h20202073726169 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 54))))? 56'h20202073796e63 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 15))))? 56'h20727376783135 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 55))))? 56'h20727376783535 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 62))))? 56'h20202063727374 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 42))))? 56'h20727376783432 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 30))))? 56'h20202020786f72 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 34))))? 56'h20727376783334 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 31))))? 56'h206d756c787373 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 51))))? 56'h20727376783531 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 10))))? 56'h20727376783130 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 1))))? 56'h20202065726574 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 25))))? 56'h20727376783235 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 13))))? 56'h202020206a6d70 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 22))))? 56'h20202020206f72 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 35))))? 56'h20727376783335 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 59))))? 56'h20202020737261 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 20))))? 56'h20727376783230 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 18))))? 56'h202020736c6c69 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 23))))? 56'h206d756c787375 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 21))))? 56'h20727376783231 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 11))))? 56'h20202020726f72 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 26))))? 56'h20202073726c69 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 19))))? 56'h20202020736c6c :
    (((E_op_opx & (E_iw_opx[5 : 0] == 37))))? 56'h20202020646976 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 16))))? 56'h2020636d706c74 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 49))))? 56'h20202020616464 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 44))))? 56'h20727376783434 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 9))))? 56'h20202062726574 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 60))))? 56'h20727376783630 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 63))))? 56'h20727376783633 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 39))))? 56'h202020206d756c :
    (((E_op_opx & (E_iw_opx[5 : 0] == 40))))? 56'h20636d70676575 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 24))))? 56'h2020636d706e65 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 32))))? 56'h2020636d706571 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 5))))? 56'h20202020726574 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 3))))? 56'h20202020726f6c :
    (((E_op_opx & (E_iw_opx[5 : 0] == 57))))? 56'h20202020737562 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 28))))? 56'h206e6578747063 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 36))))? 56'h20202064697675 :
    56'h20202020424144;

  assign M_inst = ((((M_iw_op[5 : 0] == 2))))? 56'h20207273763032 :
    ((((M_iw_op[5 : 0] == 16))))? 56'h20636d706c7469 :
    ((((M_iw_op[5 : 0] == 18))))? 56'h20207273763138 :
    ((((M_iw_op[5 : 0] == 26))))? 56'h20207273763236 :
    ((((M_iw_op[5 : 0] == 42))))? 56'h20207273763432 :
    ((((M_iw_op[5 : 0] == 39))))? 56'h20206c6462696f :
    ((((M_iw_op[5 : 0] == 3))))? 56'h2020206c646275 :
    ((((M_iw_op[5 : 0] == 52))))? 56'h2020206f726869 :
    ((((M_iw_op[5 : 0] == 14))))? 56'h20202020626765 :
    ((((M_iw_op[5 : 0] == 29))))? 56'h20202020737463 :
    ((((M_iw_op[5 : 0] == 6))))? 56'h20202020206272 :
    ((((M_iw_op[5 : 0] == 47))))? 56'h20206c6468696f :
    ((((M_iw_op[5 : 0] == 41))))? 56'h20207273763431 :
    ((((M_iw_op[5 : 0] == 55))))? 56'h20206c6477696f :
    ((((M_iw_op[5 : 0] == 61))))? 56'h20207273763631 :
    ((((M_iw_op[5 : 0] == 5))))? 56'h20202020737462 :
    ((((M_iw_op[5 : 0] == 62))))? 56'h20207273763632 :
    ((((M_iw_op[5 : 0] == 54))))? 56'h202020626c7475 :
    ((((M_iw_op[5 : 0] == 50))))? 56'h20637573746f6d :
    ((((M_iw_op[5 : 0] == 36))))? 56'h2020206d756c69 :
    ((((M_iw_op[5 : 0] == 28))))? 56'h202020786f7269 :
    ((((M_iw_op[5 : 0] == 8))))? 56'h20636d70676569 :
    ((((M_iw_op[5 : 0] == 23))))? 56'h202020206c6477 :
    ((((M_iw_op[5 : 0] == 32))))? 56'h20636d70657169 :
    ((((M_iw_op[5 : 0] == 15))))? 56'h202020206c6468 :
    ((((M_iw_op[5 : 0] == 21))))? 56'h20202020737477 :
    ((((M_iw_op[5 : 0] == 9))))? 56'h20207273763039 :
    ((((M_iw_op[5 : 0] == 24))))? 56'h20636d706e6569 :
    ((((M_iw_op[5 : 0] == 7))))? 56'h202020206c6462 :
    ((((M_iw_op[5 : 0] == 46))))? 56'h20202062676575 :
    ((((M_iw_op[5 : 0] == 53))))? 56'h2020737477696f :
    ((((M_iw_op[5 : 0] == 33))))? 56'h20207273763333 :
    ((((M_iw_op[5 : 0] == 31))))? 56'h202020206c646c :
    ((((M_iw_op[5 : 0] == 44))))? 56'h2020616e646869 :
    ((((M_iw_op[5 : 0] == 35))))? 56'h206c646275696f :
    ((((M_iw_op[5 : 0] == 34))))? 56'h20207273763334 :
    ((((M_iw_op[5 : 0] == 45))))? 56'h2020737468696f :
    ((((M_iw_op[5 : 0] == 40))))? 56'h636d7067657569 :
    ((((M_iw_op[5 : 0] == 37))))? 56'h2020737462696f :
    ((((M_iw_op[5 : 0] == 12))))? 56'h202020616e6469 :
    ((((M_iw_op[5 : 0] == 4))))? 56'h20202061646469 :
    ((((M_iw_op[5 : 0] == 27))))? 56'h666c7573686461 :
    ((((M_iw_op[5 : 0] == 49))))? 56'h20207273763439 :
    ((((M_iw_op[5 : 0] == 1))))? 56'h2020206a6d7069 :
    ((((M_iw_op[5 : 0] == 19))))? 56'h20696e69746461 :
    ((((M_iw_op[5 : 0] == 22))))? 56'h20202020626c74 :
    ((((M_iw_op[5 : 0] == 38))))? 56'h20202020626571 :
    ((((M_iw_op[5 : 0] == 20))))? 56'h202020206f7269 :
    ((((M_iw_op[5 : 0] == 48))))? 56'h636d706c747569 :
    ((((M_iw_op[5 : 0] == 60))))? 56'h2020786f726869 :
    ((((M_iw_op[5 : 0] == 56))))? 56'h20207273763536 :
    ((((M_iw_op[5 : 0] == 43))))? 56'h206c646875696f :
    ((((M_iw_op[5 : 0] == 63))))? 56'h20207273763633 :
    ((((M_iw_op[5 : 0] == 30))))? 56'h20202020626e65 :
    ((((M_iw_op[5 : 0] == 57))))? 56'h20207273763537 :
    ((((M_iw_op[5 : 0] == 0))))? 56'h20202063616c6c :
    ((((M_iw_op[5 : 0] == 11))))? 56'h2020206c646875 :
    ((((M_iw_op[5 : 0] == 59))))? 56'h20666c75736864 :
    ((((M_iw_op[5 : 0] == 51))))? 56'h2020696e697464 :
    ((((M_iw_op[5 : 0] == 10))))? 56'h20207273763130 :
    ((((M_iw_op[5 : 0] == 17))))? 56'h20207273763137 :
    ((((M_iw_op[5 : 0] == 13))))? 56'h20202020737468 :
    ((((M_iw_op[5 : 0] == 25))))? 56'h20207273763235 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 12))))? 56'h20666c75736869 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 7))))? 56'h206d756c787575 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 33))))? 56'h20727376783333 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 46))))? 56'h2020777263746c :
    (((M_op_opx & (M_iw_opx[5 : 0] == 2))))? 56'h202020726f6c69 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 61))))? 56'h202020696e7472 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 43))))? 56'h20727376783433 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 27))))? 56'h2020202073726c :
    (((M_op_opx & (M_iw_opx[5 : 0] == 45))))? 56'h20202074726170 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 17))))? 56'h20727376783137 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 52))))? 56'h2020627265616b :
    (((M_op_opx & (M_iw_opx[5 : 0] == 38))))? 56'h2020726463746c :
    (((M_op_opx & (M_iw_opx[5 : 0] == 48))))? 56'h20636d706c7475 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 29))))? 56'h202063616c6c72 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 8))))? 56'h2020636d706765 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 47))))? 56'h20727376783437 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 14))))? 56'h20202020616e64 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 0))))? 56'h20727376783030 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 56))))? 56'h20727376783536 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 53))))? 56'h2068627265616b :
    (((M_op_opx & (M_iw_opx[5 : 0] == 4))))? 56'h20666c75736870 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 6))))? 56'h202020206e6f72 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 50))))? 56'h20727376783530 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 41))))? 56'h2020696e697469 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 58))))? 56'h20202073726169 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 54))))? 56'h20202073796e63 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 15))))? 56'h20727376783135 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 55))))? 56'h20727376783535 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 62))))? 56'h20202063727374 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 42))))? 56'h20727376783432 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 30))))? 56'h20202020786f72 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 34))))? 56'h20727376783334 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 31))))? 56'h206d756c787373 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 51))))? 56'h20727376783531 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 10))))? 56'h20727376783130 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 1))))? 56'h20202065726574 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 25))))? 56'h20727376783235 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 13))))? 56'h202020206a6d70 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 22))))? 56'h20202020206f72 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 35))))? 56'h20727376783335 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 59))))? 56'h20202020737261 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 20))))? 56'h20727376783230 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 18))))? 56'h202020736c6c69 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 23))))? 56'h206d756c787375 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 21))))? 56'h20727376783231 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 11))))? 56'h20202020726f72 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 26))))? 56'h20202073726c69 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 19))))? 56'h20202020736c6c :
    (((M_op_opx & (M_iw_opx[5 : 0] == 37))))? 56'h20202020646976 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 16))))? 56'h2020636d706c74 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 49))))? 56'h20202020616464 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 44))))? 56'h20727376783434 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 9))))? 56'h20202062726574 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 60))))? 56'h20727376783630 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 63))))? 56'h20727376783633 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 39))))? 56'h202020206d756c :
    (((M_op_opx & (M_iw_opx[5 : 0] == 40))))? 56'h20636d70676575 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 24))))? 56'h2020636d706e65 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 32))))? 56'h2020636d706571 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 5))))? 56'h20202020726574 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 3))))? 56'h20202020726f6c :
    (((M_op_opx & (M_iw_opx[5 : 0] == 57))))? 56'h20202020737562 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 28))))? 56'h206e6578747063 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 36))))? 56'h20202064697675 :
    56'h20202020424144;

  assign A_inst = ((((A_iw_op[5 : 0] == 2))))? 56'h20207273763032 :
    ((((A_iw_op[5 : 0] == 16))))? 56'h20636d706c7469 :
    ((((A_iw_op[5 : 0] == 18))))? 56'h20207273763138 :
    ((((A_iw_op[5 : 0] == 26))))? 56'h20207273763236 :
    ((((A_iw_op[5 : 0] == 42))))? 56'h20207273763432 :
    ((((A_iw_op[5 : 0] == 39))))? 56'h20206c6462696f :
    ((((A_iw_op[5 : 0] == 3))))? 56'h2020206c646275 :
    ((((A_iw_op[5 : 0] == 52))))? 56'h2020206f726869 :
    ((((A_iw_op[5 : 0] == 14))))? 56'h20202020626765 :
    ((((A_iw_op[5 : 0] == 29))))? 56'h20202020737463 :
    ((((A_iw_op[5 : 0] == 6))))? 56'h20202020206272 :
    ((((A_iw_op[5 : 0] == 47))))? 56'h20206c6468696f :
    ((((A_iw_op[5 : 0] == 41))))? 56'h20207273763431 :
    ((((A_iw_op[5 : 0] == 55))))? 56'h20206c6477696f :
    ((((A_iw_op[5 : 0] == 61))))? 56'h20207273763631 :
    ((((A_iw_op[5 : 0] == 5))))? 56'h20202020737462 :
    ((((A_iw_op[5 : 0] == 62))))? 56'h20207273763632 :
    ((((A_iw_op[5 : 0] == 54))))? 56'h202020626c7475 :
    ((((A_iw_op[5 : 0] == 50))))? 56'h20637573746f6d :
    ((((A_iw_op[5 : 0] == 36))))? 56'h2020206d756c69 :
    ((((A_iw_op[5 : 0] == 28))))? 56'h202020786f7269 :
    ((((A_iw_op[5 : 0] == 8))))? 56'h20636d70676569 :
    ((((A_iw_op[5 : 0] == 23))))? 56'h202020206c6477 :
    ((((A_iw_op[5 : 0] == 32))))? 56'h20636d70657169 :
    ((((A_iw_op[5 : 0] == 15))))? 56'h202020206c6468 :
    ((((A_iw_op[5 : 0] == 21))))? 56'h20202020737477 :
    ((((A_iw_op[5 : 0] == 9))))? 56'h20207273763039 :
    ((((A_iw_op[5 : 0] == 24))))? 56'h20636d706e6569 :
    ((((A_iw_op[5 : 0] == 7))))? 56'h202020206c6462 :
    ((((A_iw_op[5 : 0] == 46))))? 56'h20202062676575 :
    ((((A_iw_op[5 : 0] == 53))))? 56'h2020737477696f :
    ((((A_iw_op[5 : 0] == 33))))? 56'h20207273763333 :
    ((((A_iw_op[5 : 0] == 31))))? 56'h202020206c646c :
    ((((A_iw_op[5 : 0] == 44))))? 56'h2020616e646869 :
    ((((A_iw_op[5 : 0] == 35))))? 56'h206c646275696f :
    ((((A_iw_op[5 : 0] == 34))))? 56'h20207273763334 :
    ((((A_iw_op[5 : 0] == 45))))? 56'h2020737468696f :
    ((((A_iw_op[5 : 0] == 40))))? 56'h636d7067657569 :
    ((((A_iw_op[5 : 0] == 37))))? 56'h2020737462696f :
    ((((A_iw_op[5 : 0] == 12))))? 56'h202020616e6469 :
    ((((A_iw_op[5 : 0] == 4))))? 56'h20202061646469 :
    ((((A_iw_op[5 : 0] == 27))))? 56'h666c7573686461 :
    ((((A_iw_op[5 : 0] == 49))))? 56'h20207273763439 :
    ((((A_iw_op[5 : 0] == 1))))? 56'h2020206a6d7069 :
    ((((A_iw_op[5 : 0] == 19))))? 56'h20696e69746461 :
    ((((A_iw_op[5 : 0] == 22))))? 56'h20202020626c74 :
    ((((A_iw_op[5 : 0] == 38))))? 56'h20202020626571 :
    ((((A_iw_op[5 : 0] == 20))))? 56'h202020206f7269 :
    ((((A_iw_op[5 : 0] == 48))))? 56'h636d706c747569 :
    ((((A_iw_op[5 : 0] == 60))))? 56'h2020786f726869 :
    ((((A_iw_op[5 : 0] == 56))))? 56'h20207273763536 :
    ((((A_iw_op[5 : 0] == 43))))? 56'h206c646875696f :
    ((((A_iw_op[5 : 0] == 63))))? 56'h20207273763633 :
    ((((A_iw_op[5 : 0] == 30))))? 56'h20202020626e65 :
    ((((A_iw_op[5 : 0] == 57))))? 56'h20207273763537 :
    ((((A_iw_op[5 : 0] == 0))))? 56'h20202063616c6c :
    ((((A_iw_op[5 : 0] == 11))))? 56'h2020206c646875 :
    ((((A_iw_op[5 : 0] == 59))))? 56'h20666c75736864 :
    ((((A_iw_op[5 : 0] == 51))))? 56'h2020696e697464 :
    ((((A_iw_op[5 : 0] == 10))))? 56'h20207273763130 :
    ((((A_iw_op[5 : 0] == 17))))? 56'h20207273763137 :
    ((((A_iw_op[5 : 0] == 13))))? 56'h20202020737468 :
    ((((A_iw_op[5 : 0] == 25))))? 56'h20207273763235 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 12))))? 56'h20666c75736869 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 7))))? 56'h206d756c787575 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 33))))? 56'h20727376783333 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 46))))? 56'h2020777263746c :
    (((A_op_opx & (A_iw_opx[5 : 0] == 2))))? 56'h202020726f6c69 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 61))))? 56'h202020696e7472 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 43))))? 56'h20727376783433 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 27))))? 56'h2020202073726c :
    (((A_op_opx & (A_iw_opx[5 : 0] == 45))))? 56'h20202074726170 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 17))))? 56'h20727376783137 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 52))))? 56'h2020627265616b :
    (((A_op_opx & (A_iw_opx[5 : 0] == 38))))? 56'h2020726463746c :
    (((A_op_opx & (A_iw_opx[5 : 0] == 48))))? 56'h20636d706c7475 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 29))))? 56'h202063616c6c72 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 8))))? 56'h2020636d706765 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 47))))? 56'h20727376783437 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 14))))? 56'h20202020616e64 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 0))))? 56'h20727376783030 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 56))))? 56'h20727376783536 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 53))))? 56'h2068627265616b :
    (((A_op_opx & (A_iw_opx[5 : 0] == 4))))? 56'h20666c75736870 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 6))))? 56'h202020206e6f72 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 50))))? 56'h20727376783530 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 41))))? 56'h2020696e697469 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 58))))? 56'h20202073726169 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 54))))? 56'h20202073796e63 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 15))))? 56'h20727376783135 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 55))))? 56'h20727376783535 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 62))))? 56'h20202063727374 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 42))))? 56'h20727376783432 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 30))))? 56'h20202020786f72 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 34))))? 56'h20727376783334 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 31))))? 56'h206d756c787373 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 51))))? 56'h20727376783531 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 10))))? 56'h20727376783130 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 1))))? 56'h20202065726574 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 25))))? 56'h20727376783235 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 13))))? 56'h202020206a6d70 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 22))))? 56'h20202020206f72 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 35))))? 56'h20727376783335 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 59))))? 56'h20202020737261 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 20))))? 56'h20727376783230 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 18))))? 56'h202020736c6c69 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 23))))? 56'h206d756c787375 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 21))))? 56'h20727376783231 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 11))))? 56'h20202020726f72 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 26))))? 56'h20202073726c69 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 19))))? 56'h20202020736c6c :
    (((A_op_opx & (A_iw_opx[5 : 0] == 37))))? 56'h20202020646976 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 16))))? 56'h2020636d706c74 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 49))))? 56'h20202020616464 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 44))))? 56'h20727376783434 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 9))))? 56'h20202062726574 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 60))))? 56'h20727376783630 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 63))))? 56'h20727376783633 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 39))))? 56'h202020206d756c :
    (((A_op_opx & (A_iw_opx[5 : 0] == 40))))? 56'h20636d70676575 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 24))))? 56'h2020636d706e65 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 32))))? 56'h2020636d706571 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 5))))? 56'h20202020726574 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 3))))? 56'h20202020726f6c :
    (((A_op_opx & (A_iw_opx[5 : 0] == 57))))? 56'h20202020737562 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 28))))? 56'h206e6578747063 :
    (((A_op_opx & (A_iw_opx[5 : 0] == 36))))? 56'h20202064697675 :
    56'h20202020424144;

  assign W_inst = ((((W_iw_op[5 : 0] == 2))))? 56'h20207273763032 :
    ((((W_iw_op[5 : 0] == 16))))? 56'h20636d706c7469 :
    ((((W_iw_op[5 : 0] == 18))))? 56'h20207273763138 :
    ((((W_iw_op[5 : 0] == 26))))? 56'h20207273763236 :
    ((((W_iw_op[5 : 0] == 42))))? 56'h20207273763432 :
    ((((W_iw_op[5 : 0] == 39))))? 56'h20206c6462696f :
    ((((W_iw_op[5 : 0] == 3))))? 56'h2020206c646275 :
    ((((W_iw_op[5 : 0] == 52))))? 56'h2020206f726869 :
    ((((W_iw_op[5 : 0] == 14))))? 56'h20202020626765 :
    ((((W_iw_op[5 : 0] == 29))))? 56'h20202020737463 :
    ((((W_iw_op[5 : 0] == 6))))? 56'h20202020206272 :
    ((((W_iw_op[5 : 0] == 47))))? 56'h20206c6468696f :
    ((((W_iw_op[5 : 0] == 41))))? 56'h20207273763431 :
    ((((W_iw_op[5 : 0] == 55))))? 56'h20206c6477696f :
    ((((W_iw_op[5 : 0] == 61))))? 56'h20207273763631 :
    ((((W_iw_op[5 : 0] == 5))))? 56'h20202020737462 :
    ((((W_iw_op[5 : 0] == 62))))? 56'h20207273763632 :
    ((((W_iw_op[5 : 0] == 54))))? 56'h202020626c7475 :
    ((((W_iw_op[5 : 0] == 50))))? 56'h20637573746f6d :
    ((((W_iw_op[5 : 0] == 36))))? 56'h2020206d756c69 :
    ((((W_iw_op[5 : 0] == 28))))? 56'h202020786f7269 :
    ((((W_iw_op[5 : 0] == 8))))? 56'h20636d70676569 :
    ((((W_iw_op[5 : 0] == 23))))? 56'h202020206c6477 :
    ((((W_iw_op[5 : 0] == 32))))? 56'h20636d70657169 :
    ((((W_iw_op[5 : 0] == 15))))? 56'h202020206c6468 :
    ((((W_iw_op[5 : 0] == 21))))? 56'h20202020737477 :
    ((((W_iw_op[5 : 0] == 9))))? 56'h20207273763039 :
    ((((W_iw_op[5 : 0] == 24))))? 56'h20636d706e6569 :
    ((((W_iw_op[5 : 0] == 7))))? 56'h202020206c6462 :
    ((((W_iw_op[5 : 0] == 46))))? 56'h20202062676575 :
    ((((W_iw_op[5 : 0] == 53))))? 56'h2020737477696f :
    ((((W_iw_op[5 : 0] == 33))))? 56'h20207273763333 :
    ((((W_iw_op[5 : 0] == 31))))? 56'h202020206c646c :
    ((((W_iw_op[5 : 0] == 44))))? 56'h2020616e646869 :
    ((((W_iw_op[5 : 0] == 35))))? 56'h206c646275696f :
    ((((W_iw_op[5 : 0] == 34))))? 56'h20207273763334 :
    ((((W_iw_op[5 : 0] == 45))))? 56'h2020737468696f :
    ((((W_iw_op[5 : 0] == 40))))? 56'h636d7067657569 :
    ((((W_iw_op[5 : 0] == 37))))? 56'h2020737462696f :
    ((((W_iw_op[5 : 0] == 12))))? 56'h202020616e6469 :
    ((((W_iw_op[5 : 0] == 4))))? 56'h20202061646469 :
    ((((W_iw_op[5 : 0] == 27))))? 56'h666c7573686461 :
    ((((W_iw_op[5 : 0] == 49))))? 56'h20207273763439 :
    ((((W_iw_op[5 : 0] == 1))))? 56'h2020206a6d7069 :
    ((((W_iw_op[5 : 0] == 19))))? 56'h20696e69746461 :
    ((((W_iw_op[5 : 0] == 22))))? 56'h20202020626c74 :
    ((((W_iw_op[5 : 0] == 38))))? 56'h20202020626571 :
    ((((W_iw_op[5 : 0] == 20))))? 56'h202020206f7269 :
    ((((W_iw_op[5 : 0] == 48))))? 56'h636d706c747569 :
    ((((W_iw_op[5 : 0] == 60))))? 56'h2020786f726869 :
    ((((W_iw_op[5 : 0] == 56))))? 56'h20207273763536 :
    ((((W_iw_op[5 : 0] == 43))))? 56'h206c646875696f :
    ((((W_iw_op[5 : 0] == 63))))? 56'h20207273763633 :
    ((((W_iw_op[5 : 0] == 30))))? 56'h20202020626e65 :
    ((((W_iw_op[5 : 0] == 57))))? 56'h20207273763537 :
    ((((W_iw_op[5 : 0] == 0))))? 56'h20202063616c6c :
    ((((W_iw_op[5 : 0] == 11))))? 56'h2020206c646875 :
    ((((W_iw_op[5 : 0] == 59))))? 56'h20666c75736864 :
    ((((W_iw_op[5 : 0] == 51))))? 56'h2020696e697464 :
    ((((W_iw_op[5 : 0] == 10))))? 56'h20207273763130 :
    ((((W_iw_op[5 : 0] == 17))))? 56'h20207273763137 :
    ((((W_iw_op[5 : 0] == 13))))? 56'h20202020737468 :
    ((((W_iw_op[5 : 0] == 25))))? 56'h20207273763235 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 12))))? 56'h20666c75736869 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 7))))? 56'h206d756c787575 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 33))))? 56'h20727376783333 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 46))))? 56'h2020777263746c :
    (((W_op_opx & (W_iw_opx[5 : 0] == 2))))? 56'h202020726f6c69 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 61))))? 56'h202020696e7472 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 43))))? 56'h20727376783433 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 27))))? 56'h2020202073726c :
    (((W_op_opx & (W_iw_opx[5 : 0] == 45))))? 56'h20202074726170 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 17))))? 56'h20727376783137 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 52))))? 56'h2020627265616b :
    (((W_op_opx & (W_iw_opx[5 : 0] == 38))))? 56'h2020726463746c :
    (((W_op_opx & (W_iw_opx[5 : 0] == 48))))? 56'h20636d706c7475 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 29))))? 56'h202063616c6c72 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 8))))? 56'h2020636d706765 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 47))))? 56'h20727376783437 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 14))))? 56'h20202020616e64 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 0))))? 56'h20727376783030 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 56))))? 56'h20727376783536 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 53))))? 56'h2068627265616b :
    (((W_op_opx & (W_iw_opx[5 : 0] == 4))))? 56'h20666c75736870 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 6))))? 56'h202020206e6f72 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 50))))? 56'h20727376783530 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 41))))? 56'h2020696e697469 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 58))))? 56'h20202073726169 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 54))))? 56'h20202073796e63 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 15))))? 56'h20727376783135 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 55))))? 56'h20727376783535 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 62))))? 56'h20202063727374 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 42))))? 56'h20727376783432 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 30))))? 56'h20202020786f72 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 34))))? 56'h20727376783334 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 31))))? 56'h206d756c787373 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 51))))? 56'h20727376783531 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 10))))? 56'h20727376783130 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 1))))? 56'h20202065726574 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 25))))? 56'h20727376783235 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 13))))? 56'h202020206a6d70 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 22))))? 56'h20202020206f72 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 35))))? 56'h20727376783335 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 59))))? 56'h20202020737261 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 20))))? 56'h20727376783230 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 18))))? 56'h202020736c6c69 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 23))))? 56'h206d756c787375 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 21))))? 56'h20727376783231 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 11))))? 56'h20202020726f72 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 26))))? 56'h20202073726c69 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 19))))? 56'h20202020736c6c :
    (((W_op_opx & (W_iw_opx[5 : 0] == 37))))? 56'h20202020646976 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 16))))? 56'h2020636d706c74 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 49))))? 56'h20202020616464 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 44))))? 56'h20727376783434 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 9))))? 56'h20202062726574 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 60))))? 56'h20727376783630 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 63))))? 56'h20727376783633 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 39))))? 56'h202020206d756c :
    (((W_op_opx & (W_iw_opx[5 : 0] == 40))))? 56'h20636d70676575 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 24))))? 56'h2020636d706e65 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 32))))? 56'h2020636d706571 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 5))))? 56'h20202020726574 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 3))))? 56'h20202020726f6c :
    (((W_op_opx & (W_iw_opx[5 : 0] == 57))))? 56'h20202020737562 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 28))))? 56'h206e6578747063 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 36))))? 56'h20202064697675 :
    56'h20202020424144;

  assign F_vinst = F_inst_ram_hit ? F_inst : {7{8'h2d}};
  assign D_vinst = D_issue ? D_inst : {7{8'h2d}};
  assign E_vinst = E_valid ? E_inst : {7{8'h2d}};
  assign M_vinst = M_valid ? M_inst : {7{8'h2d}};
  assign A_vinst = A_valid ? A_inst : {7{8'h2d}};
  assign W_vinst = W_valid ? W_inst : {7{8'h2d}};
  //Clearing 'X' data bits
  assign D_ic_want_fill_unfiltered_is_x = ^(D_ic_want_fill_unfiltered) === 1'bx;

  assign D_ic_want_fill = D_ic_want_fill_unfiltered_is_x ? 1'b0 : D_ic_want_fill_unfiltered;

//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  
//  assign D_ic_want_fill = D_ic_want_fill_unfiltered;
//
//synthesis read_comments_as_HDL off

endmodule


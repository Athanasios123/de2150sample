//megafunction wizard: %Altera SOPC Builder%
//GENERATION: STANDARD
//VERSION: WM1.0


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

module cpu_jtag_debug_module_arbitrator (
                                          // inputs:
                                           clk,
                                           cpu_data_master_address_to_slave,
                                           cpu_data_master_byteenable,
                                           cpu_data_master_debugaccess,
                                           cpu_data_master_read,
                                           cpu_data_master_waitrequest,
                                           cpu_data_master_write,
                                           cpu_data_master_writedata,
                                           cpu_instruction_master_address_to_slave,
                                           cpu_instruction_master_latency_counter,
                                           cpu_instruction_master_read,
                                           cpu_jtag_debug_module_readdata,
                                           cpu_jtag_debug_module_resetrequest,
                                           reset_n,

                                          // outputs:
                                           cpu_data_master_granted_cpu_jtag_debug_module,
                                           cpu_data_master_qualified_request_cpu_jtag_debug_module,
                                           cpu_data_master_read_data_valid_cpu_jtag_debug_module,
                                           cpu_data_master_requests_cpu_jtag_debug_module,
                                           cpu_instruction_master_granted_cpu_jtag_debug_module,
                                           cpu_instruction_master_qualified_request_cpu_jtag_debug_module,
                                           cpu_instruction_master_read_data_valid_cpu_jtag_debug_module,
                                           cpu_instruction_master_requests_cpu_jtag_debug_module,
                                           cpu_jtag_debug_module_address,
                                           cpu_jtag_debug_module_begintransfer,
                                           cpu_jtag_debug_module_byteenable,
                                           cpu_jtag_debug_module_chipselect,
                                           cpu_jtag_debug_module_debugaccess,
                                           cpu_jtag_debug_module_readdata_from_sa,
                                           cpu_jtag_debug_module_reset,
                                           cpu_jtag_debug_module_reset_n,
                                           cpu_jtag_debug_module_resetrequest_from_sa,
                                           cpu_jtag_debug_module_write,
                                           cpu_jtag_debug_module_writedata,
                                           d1_cpu_jtag_debug_module_end_xfer
                                        )
;

  output           cpu_data_master_granted_cpu_jtag_debug_module;
  output           cpu_data_master_qualified_request_cpu_jtag_debug_module;
  output           cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  output           cpu_data_master_requests_cpu_jtag_debug_module;
  output           cpu_instruction_master_granted_cpu_jtag_debug_module;
  output           cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  output           cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  output           cpu_instruction_master_requests_cpu_jtag_debug_module;
  output  [  8: 0] cpu_jtag_debug_module_address;
  output           cpu_jtag_debug_module_begintransfer;
  output  [  3: 0] cpu_jtag_debug_module_byteenable;
  output           cpu_jtag_debug_module_chipselect;
  output           cpu_jtag_debug_module_debugaccess;
  output  [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  output           cpu_jtag_debug_module_reset;
  output           cpu_jtag_debug_module_reset_n;
  output           cpu_jtag_debug_module_resetrequest_from_sa;
  output           cpu_jtag_debug_module_write;
  output  [ 31: 0] cpu_jtag_debug_module_writedata;
  output           d1_cpu_jtag_debug_module_end_xfer;
  input            clk;
  input   [ 15: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_debugaccess;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input   [ 15: 0] cpu_instruction_master_address_to_slave;
  input            cpu_instruction_master_latency_counter;
  input            cpu_instruction_master_read;
  input   [ 31: 0] cpu_jtag_debug_module_readdata;
  input            cpu_jtag_debug_module_resetrequest;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_cpu_jtag_debug_module;
  wire             cpu_data_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_data_master_requests_cpu_jtag_debug_module;
  wire             cpu_data_master_saved_grant_cpu_jtag_debug_module;
  wire             cpu_instruction_master_arbiterlock;
  wire             cpu_instruction_master_arbiterlock2;
  wire             cpu_instruction_master_continuerequest;
  wire             cpu_instruction_master_granted_cpu_jtag_debug_module;
  wire             cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_instruction_master_requests_cpu_jtag_debug_module;
  wire             cpu_instruction_master_saved_grant_cpu_jtag_debug_module;
  wire    [  8: 0] cpu_jtag_debug_module_address;
  wire             cpu_jtag_debug_module_allgrants;
  wire             cpu_jtag_debug_module_allow_new_arb_cycle;
  wire             cpu_jtag_debug_module_any_bursting_master_saved_grant;
  wire             cpu_jtag_debug_module_any_continuerequest;
  reg     [  1: 0] cpu_jtag_debug_module_arb_addend;
  wire             cpu_jtag_debug_module_arb_counter_enable;
  reg              cpu_jtag_debug_module_arb_share_counter;
  wire             cpu_jtag_debug_module_arb_share_counter_next_value;
  wire             cpu_jtag_debug_module_arb_share_set_values;
  wire    [  1: 0] cpu_jtag_debug_module_arb_winner;
  wire             cpu_jtag_debug_module_arbitration_holdoff_internal;
  wire             cpu_jtag_debug_module_beginbursttransfer_internal;
  wire             cpu_jtag_debug_module_begins_xfer;
  wire             cpu_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu_jtag_debug_module_byteenable;
  wire             cpu_jtag_debug_module_chipselect;
  wire    [  3: 0] cpu_jtag_debug_module_chosen_master_double_vector;
  wire    [  1: 0] cpu_jtag_debug_module_chosen_master_rot_left;
  wire             cpu_jtag_debug_module_debugaccess;
  wire             cpu_jtag_debug_module_end_xfer;
  wire             cpu_jtag_debug_module_firsttransfer;
  wire    [  1: 0] cpu_jtag_debug_module_grant_vector;
  wire             cpu_jtag_debug_module_in_a_read_cycle;
  wire             cpu_jtag_debug_module_in_a_write_cycle;
  wire    [  1: 0] cpu_jtag_debug_module_master_qreq_vector;
  wire             cpu_jtag_debug_module_non_bursting_master_requests;
  wire    [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  reg              cpu_jtag_debug_module_reg_firsttransfer;
  wire             cpu_jtag_debug_module_reset;
  wire             cpu_jtag_debug_module_reset_n;
  wire             cpu_jtag_debug_module_resetrequest_from_sa;
  reg     [  1: 0] cpu_jtag_debug_module_saved_chosen_master_vector;
  reg              cpu_jtag_debug_module_slavearbiterlockenable;
  wire             cpu_jtag_debug_module_slavearbiterlockenable2;
  wire             cpu_jtag_debug_module_unreg_firsttransfer;
  wire             cpu_jtag_debug_module_waits_for_read;
  wire             cpu_jtag_debug_module_waits_for_write;
  wire             cpu_jtag_debug_module_write;
  wire    [ 31: 0] cpu_jtag_debug_module_writedata;
  reg              d1_cpu_jtag_debug_module_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_cpu_jtag_debug_module;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module;
  reg              last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module;
  wire    [ 15: 0] shifted_address_to_cpu_jtag_debug_module_from_cpu_data_master;
  wire    [ 15: 0] shifted_address_to_cpu_jtag_debug_module_from_cpu_instruction_master;
  wire             wait_for_cpu_jtag_debug_module_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~cpu_jtag_debug_module_end_xfer;
    end


  assign cpu_jtag_debug_module_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_cpu_jtag_debug_module | cpu_instruction_master_qualified_request_cpu_jtag_debug_module));
  //assign cpu_jtag_debug_module_readdata_from_sa = cpu_jtag_debug_module_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu_jtag_debug_module_readdata_from_sa = cpu_jtag_debug_module_readdata;

  assign cpu_data_master_requests_cpu_jtag_debug_module = ({cpu_data_master_address_to_slave[15 : 11] , 11'b0} == 16'h8000) & (cpu_data_master_read | cpu_data_master_write);
  //cpu_jtag_debug_module_arb_share_counter set values, which is an e_mux
  assign cpu_jtag_debug_module_arb_share_set_values = 1;

  //cpu_jtag_debug_module_non_bursting_master_requests mux, which is an e_mux
  assign cpu_jtag_debug_module_non_bursting_master_requests = cpu_data_master_requests_cpu_jtag_debug_module |
    cpu_instruction_master_requests_cpu_jtag_debug_module |
    cpu_data_master_requests_cpu_jtag_debug_module |
    cpu_instruction_master_requests_cpu_jtag_debug_module;

  //cpu_jtag_debug_module_any_bursting_master_saved_grant mux, which is an e_mux
  assign cpu_jtag_debug_module_any_bursting_master_saved_grant = 0;

  //cpu_jtag_debug_module_arb_share_counter_next_value assignment, which is an e_assign
  assign cpu_jtag_debug_module_arb_share_counter_next_value = cpu_jtag_debug_module_firsttransfer ? (cpu_jtag_debug_module_arb_share_set_values - 1) : |cpu_jtag_debug_module_arb_share_counter ? (cpu_jtag_debug_module_arb_share_counter - 1) : 0;

  //cpu_jtag_debug_module_allgrants all slave grants, which is an e_mux
  assign cpu_jtag_debug_module_allgrants = |cpu_jtag_debug_module_grant_vector |
    |cpu_jtag_debug_module_grant_vector |
    |cpu_jtag_debug_module_grant_vector |
    |cpu_jtag_debug_module_grant_vector;

  //cpu_jtag_debug_module_end_xfer assignment, which is an e_assign
  assign cpu_jtag_debug_module_end_xfer = ~(cpu_jtag_debug_module_waits_for_read | cpu_jtag_debug_module_waits_for_write);

  //end_xfer_arb_share_counter_term_cpu_jtag_debug_module arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_cpu_jtag_debug_module = cpu_jtag_debug_module_end_xfer & (~cpu_jtag_debug_module_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //cpu_jtag_debug_module_arb_share_counter arbitration counter enable, which is an e_assign
  assign cpu_jtag_debug_module_arb_counter_enable = (end_xfer_arb_share_counter_term_cpu_jtag_debug_module & cpu_jtag_debug_module_allgrants) | (end_xfer_arb_share_counter_term_cpu_jtag_debug_module & ~cpu_jtag_debug_module_non_bursting_master_requests);

  //cpu_jtag_debug_module_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_arb_share_counter <= 0;
      else if (cpu_jtag_debug_module_arb_counter_enable)
          cpu_jtag_debug_module_arb_share_counter <= cpu_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu_jtag_debug_module_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_slavearbiterlockenable <= 0;
      else if ((|cpu_jtag_debug_module_master_qreq_vector & end_xfer_arb_share_counter_term_cpu_jtag_debug_module) | (end_xfer_arb_share_counter_term_cpu_jtag_debug_module & ~cpu_jtag_debug_module_non_bursting_master_requests))
          cpu_jtag_debug_module_slavearbiterlockenable <= |cpu_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu/data_master cpu/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = cpu_jtag_debug_module_slavearbiterlockenable & cpu_data_master_continuerequest;

  //cpu_jtag_debug_module_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign cpu_jtag_debug_module_slavearbiterlockenable2 = |cpu_jtag_debug_module_arb_share_counter_next_value;

  //cpu/data_master cpu/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = cpu_jtag_debug_module_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //cpu/instruction_master cpu/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu_instruction_master_arbiterlock = cpu_jtag_debug_module_slavearbiterlockenable & cpu_instruction_master_continuerequest;

  //cpu/instruction_master cpu/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu_instruction_master_arbiterlock2 = cpu_jtag_debug_module_slavearbiterlockenable2 & cpu_instruction_master_continuerequest;

  //cpu/instruction_master granted cpu/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module <= 0;
      else if (1)
          last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module <= cpu_instruction_master_saved_grant_cpu_jtag_debug_module ? 1 : (cpu_jtag_debug_module_arbitration_holdoff_internal | ~cpu_instruction_master_requests_cpu_jtag_debug_module) ? 0 : last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module;
    end


  //cpu_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_instruction_master_continuerequest = last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module & cpu_instruction_master_requests_cpu_jtag_debug_module;

  //cpu_jtag_debug_module_any_continuerequest at least one master continues requesting, which is an e_mux
  assign cpu_jtag_debug_module_any_continuerequest = cpu_instruction_master_continuerequest |
    cpu_data_master_continuerequest;

  assign cpu_data_master_qualified_request_cpu_jtag_debug_module = cpu_data_master_requests_cpu_jtag_debug_module & ~(((~cpu_data_master_waitrequest) & cpu_data_master_write) | cpu_instruction_master_arbiterlock);
  //cpu_jtag_debug_module_writedata mux, which is an e_mux
  assign cpu_jtag_debug_module_writedata = cpu_data_master_writedata;

  assign cpu_instruction_master_requests_cpu_jtag_debug_module = (({cpu_instruction_master_address_to_slave[15 : 11] , 11'b0} == 16'h8000) & (cpu_instruction_master_read)) & cpu_instruction_master_read;
  //cpu/data_master granted cpu/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module <= 0;
      else if (1)
          last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module <= cpu_data_master_saved_grant_cpu_jtag_debug_module ? 1 : (cpu_jtag_debug_module_arbitration_holdoff_internal | ~cpu_data_master_requests_cpu_jtag_debug_module) ? 0 : last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module;
    end


  //cpu_data_master_continuerequest continued request, which is an e_mux
  assign cpu_data_master_continuerequest = last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module & cpu_data_master_requests_cpu_jtag_debug_module;

  assign cpu_instruction_master_qualified_request_cpu_jtag_debug_module = cpu_instruction_master_requests_cpu_jtag_debug_module & ~((cpu_instruction_master_read & ((cpu_instruction_master_latency_counter != 0))) | cpu_data_master_arbiterlock);
  //local readdatavalid cpu_instruction_master_read_data_valid_cpu_jtag_debug_module, which is an e_mux
  assign cpu_instruction_master_read_data_valid_cpu_jtag_debug_module = cpu_instruction_master_granted_cpu_jtag_debug_module & cpu_instruction_master_read & ~cpu_jtag_debug_module_waits_for_read;

  //allow new arb cycle for cpu/jtag_debug_module, which is an e_assign
  assign cpu_jtag_debug_module_allow_new_arb_cycle = ~cpu_data_master_arbiterlock & ~cpu_instruction_master_arbiterlock;

  //cpu/instruction_master assignment into master qualified-requests vector for cpu/jtag_debug_module, which is an e_assign
  assign cpu_jtag_debug_module_master_qreq_vector[0] = cpu_instruction_master_qualified_request_cpu_jtag_debug_module;

  //cpu/instruction_master grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_instruction_master_granted_cpu_jtag_debug_module = cpu_jtag_debug_module_grant_vector[0];

  //cpu/instruction_master saved-grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_instruction_master_saved_grant_cpu_jtag_debug_module = cpu_jtag_debug_module_arb_winner[0] && cpu_instruction_master_requests_cpu_jtag_debug_module;

  //cpu/data_master assignment into master qualified-requests vector for cpu/jtag_debug_module, which is an e_assign
  assign cpu_jtag_debug_module_master_qreq_vector[1] = cpu_data_master_qualified_request_cpu_jtag_debug_module;

  //cpu/data_master grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_data_master_granted_cpu_jtag_debug_module = cpu_jtag_debug_module_grant_vector[1];

  //cpu/data_master saved-grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_data_master_saved_grant_cpu_jtag_debug_module = cpu_jtag_debug_module_arb_winner[1] && cpu_data_master_requests_cpu_jtag_debug_module;

  //cpu/jtag_debug_module chosen-master double-vector, which is an e_assign
  assign cpu_jtag_debug_module_chosen_master_double_vector = {cpu_jtag_debug_module_master_qreq_vector, cpu_jtag_debug_module_master_qreq_vector} & ({~cpu_jtag_debug_module_master_qreq_vector, ~cpu_jtag_debug_module_master_qreq_vector} + cpu_jtag_debug_module_arb_addend);

  //stable onehot encoding of arb winner
  assign cpu_jtag_debug_module_arb_winner = (cpu_jtag_debug_module_allow_new_arb_cycle & | cpu_jtag_debug_module_grant_vector) ? cpu_jtag_debug_module_grant_vector : cpu_jtag_debug_module_saved_chosen_master_vector;

  //saved cpu_jtag_debug_module_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_saved_chosen_master_vector <= 0;
      else if (cpu_jtag_debug_module_allow_new_arb_cycle)
          cpu_jtag_debug_module_saved_chosen_master_vector <= |cpu_jtag_debug_module_grant_vector ? cpu_jtag_debug_module_grant_vector : cpu_jtag_debug_module_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign cpu_jtag_debug_module_grant_vector = {(cpu_jtag_debug_module_chosen_master_double_vector[1] | cpu_jtag_debug_module_chosen_master_double_vector[3]),
    (cpu_jtag_debug_module_chosen_master_double_vector[0] | cpu_jtag_debug_module_chosen_master_double_vector[2])};

  //cpu/jtag_debug_module chosen master rotated left, which is an e_assign
  assign cpu_jtag_debug_module_chosen_master_rot_left = (cpu_jtag_debug_module_arb_winner << 1) ? (cpu_jtag_debug_module_arb_winner << 1) : 1;

  //cpu/jtag_debug_module's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_arb_addend <= 1;
      else if (|cpu_jtag_debug_module_grant_vector)
          cpu_jtag_debug_module_arb_addend <= cpu_jtag_debug_module_end_xfer? cpu_jtag_debug_module_chosen_master_rot_left : cpu_jtag_debug_module_grant_vector;
    end


  assign cpu_jtag_debug_module_begintransfer = cpu_jtag_debug_module_begins_xfer;
  //assign lhs ~cpu_jtag_debug_module_reset of type reset_n to cpu_jtag_debug_module_reset_n, which is an e_assign
  assign cpu_jtag_debug_module_reset = ~cpu_jtag_debug_module_reset_n;

  //cpu_jtag_debug_module_reset_n assignment, which is an e_assign
  assign cpu_jtag_debug_module_reset_n = reset_n;

  //assign cpu_jtag_debug_module_resetrequest_from_sa = cpu_jtag_debug_module_resetrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu_jtag_debug_module_resetrequest_from_sa = cpu_jtag_debug_module_resetrequest;

  assign cpu_jtag_debug_module_chipselect = cpu_data_master_granted_cpu_jtag_debug_module | cpu_instruction_master_granted_cpu_jtag_debug_module;
  //cpu_jtag_debug_module_firsttransfer first transaction, which is an e_assign
  assign cpu_jtag_debug_module_firsttransfer = cpu_jtag_debug_module_begins_xfer ? cpu_jtag_debug_module_unreg_firsttransfer : cpu_jtag_debug_module_reg_firsttransfer;

  //cpu_jtag_debug_module_unreg_firsttransfer first transaction, which is an e_assign
  assign cpu_jtag_debug_module_unreg_firsttransfer = ~(cpu_jtag_debug_module_slavearbiterlockenable & cpu_jtag_debug_module_any_continuerequest);

  //cpu_jtag_debug_module_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_reg_firsttransfer <= 1'b1;
      else if (cpu_jtag_debug_module_begins_xfer)
          cpu_jtag_debug_module_reg_firsttransfer <= cpu_jtag_debug_module_unreg_firsttransfer;
    end


  //cpu_jtag_debug_module_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign cpu_jtag_debug_module_beginbursttransfer_internal = cpu_jtag_debug_module_begins_xfer;

  //cpu_jtag_debug_module_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign cpu_jtag_debug_module_arbitration_holdoff_internal = cpu_jtag_debug_module_begins_xfer & cpu_jtag_debug_module_firsttransfer;

  //cpu_jtag_debug_module_write assignment, which is an e_mux
  assign cpu_jtag_debug_module_write = cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_write;

  assign shifted_address_to_cpu_jtag_debug_module_from_cpu_data_master = cpu_data_master_address_to_slave;
  //cpu_jtag_debug_module_address mux, which is an e_mux
  assign cpu_jtag_debug_module_address = (cpu_data_master_granted_cpu_jtag_debug_module)? (shifted_address_to_cpu_jtag_debug_module_from_cpu_data_master >> 2) :
    (shifted_address_to_cpu_jtag_debug_module_from_cpu_instruction_master >> 2);

  assign shifted_address_to_cpu_jtag_debug_module_from_cpu_instruction_master = cpu_instruction_master_address_to_slave;
  //d1_cpu_jtag_debug_module_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_cpu_jtag_debug_module_end_xfer <= 1;
      else if (1)
          d1_cpu_jtag_debug_module_end_xfer <= cpu_jtag_debug_module_end_xfer;
    end


  //cpu_jtag_debug_module_waits_for_read in a cycle, which is an e_mux
  assign cpu_jtag_debug_module_waits_for_read = cpu_jtag_debug_module_in_a_read_cycle & cpu_jtag_debug_module_begins_xfer;

  //cpu_jtag_debug_module_in_a_read_cycle assignment, which is an e_assign
  assign cpu_jtag_debug_module_in_a_read_cycle = (cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_read) | (cpu_instruction_master_granted_cpu_jtag_debug_module & cpu_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = cpu_jtag_debug_module_in_a_read_cycle;

  //cpu_jtag_debug_module_waits_for_write in a cycle, which is an e_mux
  assign cpu_jtag_debug_module_waits_for_write = cpu_jtag_debug_module_in_a_write_cycle & 0;

  //cpu_jtag_debug_module_in_a_write_cycle assignment, which is an e_assign
  assign cpu_jtag_debug_module_in_a_write_cycle = cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = cpu_jtag_debug_module_in_a_write_cycle;

  assign wait_for_cpu_jtag_debug_module_counter = 0;
  //cpu_jtag_debug_module_byteenable byte enable port mux, which is an e_mux
  assign cpu_jtag_debug_module_byteenable = (cpu_data_master_granted_cpu_jtag_debug_module)? cpu_data_master_byteenable :
    -1;

  //debugaccess mux, which is an e_mux
  assign cpu_jtag_debug_module_debugaccess = (cpu_data_master_granted_cpu_jtag_debug_module)? cpu_data_master_debugaccess :
    0;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu/jtag_debug_module enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_granted_cpu_jtag_debug_module + cpu_instruction_master_granted_cpu_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_saved_grant_cpu_jtag_debug_module + cpu_instruction_master_saved_grant_cpu_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_data_master_arbitrator (
                                    // inputs:
                                     clk,
                                     cpu_data_master_address,
                                     cpu_data_master_granted_cpu_jtag_debug_module,
                                     cpu_data_master_granted_hex_display_avalon_slave,
                                     cpu_data_master_granted_jtag_uart_avalon_jtag_slave,
                                     cpu_data_master_granted_ledr_s1,
                                     cpu_data_master_granted_memory_s1,
                                     cpu_data_master_granted_sysid_control_slave,
                                     cpu_data_master_qualified_request_cpu_jtag_debug_module,
                                     cpu_data_master_qualified_request_hex_display_avalon_slave,
                                     cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave,
                                     cpu_data_master_qualified_request_ledr_s1,
                                     cpu_data_master_qualified_request_memory_s1,
                                     cpu_data_master_qualified_request_sysid_control_slave,
                                     cpu_data_master_read,
                                     cpu_data_master_read_data_valid_cpu_jtag_debug_module,
                                     cpu_data_master_read_data_valid_hex_display_avalon_slave,
                                     cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave,
                                     cpu_data_master_read_data_valid_ledr_s1,
                                     cpu_data_master_read_data_valid_memory_s1,
                                     cpu_data_master_read_data_valid_sysid_control_slave,
                                     cpu_data_master_requests_cpu_jtag_debug_module,
                                     cpu_data_master_requests_hex_display_avalon_slave,
                                     cpu_data_master_requests_jtag_uart_avalon_jtag_slave,
                                     cpu_data_master_requests_ledr_s1,
                                     cpu_data_master_requests_memory_s1,
                                     cpu_data_master_requests_sysid_control_slave,
                                     cpu_data_master_write,
                                     cpu_jtag_debug_module_readdata_from_sa,
                                     d1_cpu_jtag_debug_module_end_xfer,
                                     d1_hex_display_avalon_slave_end_xfer,
                                     d1_jtag_uart_avalon_jtag_slave_end_xfer,
                                     d1_ledr_s1_end_xfer,
                                     d1_memory_s1_end_xfer,
                                     d1_sysid_control_slave_end_xfer,
                                     jtag_uart_avalon_jtag_slave_irq_from_sa,
                                     jtag_uart_avalon_jtag_slave_readdata_from_sa,
                                     jtag_uart_avalon_jtag_slave_waitrequest_from_sa,
                                     memory_s1_readdata_from_sa,
                                     registered_cpu_data_master_read_data_valid_memory_s1,
                                     reset_n,
                                     sysid_control_slave_readdata_from_sa,

                                    // outputs:
                                     cpu_data_master_address_to_slave,
                                     cpu_data_master_irq,
                                     cpu_data_master_readdata,
                                     cpu_data_master_waitrequest
                                  )
;

  output  [ 15: 0] cpu_data_master_address_to_slave;
  output  [ 31: 0] cpu_data_master_irq;
  output  [ 31: 0] cpu_data_master_readdata;
  output           cpu_data_master_waitrequest;
  input            clk;
  input   [ 15: 0] cpu_data_master_address;
  input            cpu_data_master_granted_cpu_jtag_debug_module;
  input            cpu_data_master_granted_hex_display_avalon_slave;
  input            cpu_data_master_granted_jtag_uart_avalon_jtag_slave;
  input            cpu_data_master_granted_ledr_s1;
  input            cpu_data_master_granted_memory_s1;
  input            cpu_data_master_granted_sysid_control_slave;
  input            cpu_data_master_qualified_request_cpu_jtag_debug_module;
  input            cpu_data_master_qualified_request_hex_display_avalon_slave;
  input            cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  input            cpu_data_master_qualified_request_ledr_s1;
  input            cpu_data_master_qualified_request_memory_s1;
  input            cpu_data_master_qualified_request_sysid_control_slave;
  input            cpu_data_master_read;
  input            cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  input            cpu_data_master_read_data_valid_hex_display_avalon_slave;
  input            cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  input            cpu_data_master_read_data_valid_ledr_s1;
  input            cpu_data_master_read_data_valid_memory_s1;
  input            cpu_data_master_read_data_valid_sysid_control_slave;
  input            cpu_data_master_requests_cpu_jtag_debug_module;
  input            cpu_data_master_requests_hex_display_avalon_slave;
  input            cpu_data_master_requests_jtag_uart_avalon_jtag_slave;
  input            cpu_data_master_requests_ledr_s1;
  input            cpu_data_master_requests_memory_s1;
  input            cpu_data_master_requests_sysid_control_slave;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  input            d1_cpu_jtag_debug_module_end_xfer;
  input            d1_hex_display_avalon_slave_end_xfer;
  input            d1_jtag_uart_avalon_jtag_slave_end_xfer;
  input            d1_ledr_s1_end_xfer;
  input            d1_memory_s1_end_xfer;
  input            d1_sysid_control_slave_end_xfer;
  input            jtag_uart_avalon_jtag_slave_irq_from_sa;
  input   [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  input            jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  input   [ 31: 0] memory_s1_readdata_from_sa;
  input            registered_cpu_data_master_read_data_valid_memory_s1;
  input            reset_n;
  input   [ 31: 0] sysid_control_slave_readdata_from_sa;

  wire    [ 15: 0] cpu_data_master_address_to_slave;
  wire    [ 31: 0] cpu_data_master_irq;
  wire    [ 31: 0] cpu_data_master_readdata;
  wire             cpu_data_master_run;
  reg              cpu_data_master_waitrequest;
  wire    [ 31: 0] p1_registered_cpu_data_master_readdata;
  wire             r_0;
  wire             r_1;
  reg     [ 31: 0] registered_cpu_data_master_readdata;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (cpu_data_master_qualified_request_cpu_jtag_debug_module | ~cpu_data_master_requests_cpu_jtag_debug_module) & (cpu_data_master_granted_cpu_jtag_debug_module | ~cpu_data_master_qualified_request_cpu_jtag_debug_module) & ((~cpu_data_master_qualified_request_cpu_jtag_debug_module | ~cpu_data_master_read | (1 & 1 & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_cpu_jtag_debug_module | ~cpu_data_master_write | (1 & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_hex_display_avalon_slave | ~cpu_data_master_requests_hex_display_avalon_slave) & ((~cpu_data_master_qualified_request_hex_display_avalon_slave | ~cpu_data_master_read | (1 & 1 & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_hex_display_avalon_slave | ~cpu_data_master_write | (1 & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave | ~cpu_data_master_requests_jtag_uart_avalon_jtag_slave) & ((~cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~jtag_uart_avalon_jtag_slave_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & ((~cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~jtag_uart_avalon_jtag_slave_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_ledr_s1 | ~cpu_data_master_requests_ledr_s1) & ((~cpu_data_master_qualified_request_ledr_s1 | ~cpu_data_master_read | (1 & 1 & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_ledr_s1 | ~cpu_data_master_write | (1 & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_memory_s1 | registered_cpu_data_master_read_data_valid_memory_s1 | ~cpu_data_master_requests_memory_s1) & (cpu_data_master_granted_memory_s1 | ~cpu_data_master_qualified_request_memory_s1);

  //cascaded wait assignment, which is an e_assign
  assign cpu_data_master_run = r_0 & r_1;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = ((~cpu_data_master_qualified_request_memory_s1 | ~cpu_data_master_read | (registered_cpu_data_master_read_data_valid_memory_s1 & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_memory_s1 | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & 1 & ((~cpu_data_master_qualified_request_sysid_control_slave | ~cpu_data_master_read | (1 & 1 & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_sysid_control_slave | ~cpu_data_master_write | (1 & cpu_data_master_write)));

  //optimize select-logic by passing only those address bits which matter.
  assign cpu_data_master_address_to_slave = cpu_data_master_address[15 : 0];

  //cpu/data_master readdata mux, which is an e_mux
  assign cpu_data_master_readdata = ({32 {~cpu_data_master_requests_cpu_jtag_debug_module}} | cpu_jtag_debug_module_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_jtag_uart_avalon_jtag_slave}} | registered_cpu_data_master_readdata) &
    ({32 {~cpu_data_master_requests_memory_s1}} | memory_s1_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_sysid_control_slave}} | sysid_control_slave_readdata_from_sa);

  //actual waitrequest port, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_waitrequest <= ~0;
      else if (1)
          cpu_data_master_waitrequest <= ~((~(cpu_data_master_read | cpu_data_master_write))? 0: (cpu_data_master_run & cpu_data_master_waitrequest));
    end


  //unpredictable registered wait state incoming data, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          registered_cpu_data_master_readdata <= 0;
      else if (1)
          registered_cpu_data_master_readdata <= p1_registered_cpu_data_master_readdata;
    end


  //registered readdata mux, which is an e_mux
  assign p1_registered_cpu_data_master_readdata = {32 {~cpu_data_master_requests_jtag_uart_avalon_jtag_slave}} | jtag_uart_avalon_jtag_slave_readdata_from_sa;

  //irq assign, which is an e_assign
  assign cpu_data_master_irq = {1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    jtag_uart_avalon_jtag_slave_irq_from_sa};


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_instruction_master_arbitrator (
                                           // inputs:
                                            clk,
                                            cpu_instruction_master_address,
                                            cpu_instruction_master_granted_cpu_jtag_debug_module,
                                            cpu_instruction_master_granted_memory_s1,
                                            cpu_instruction_master_qualified_request_cpu_jtag_debug_module,
                                            cpu_instruction_master_qualified_request_memory_s1,
                                            cpu_instruction_master_read,
                                            cpu_instruction_master_read_data_valid_cpu_jtag_debug_module,
                                            cpu_instruction_master_read_data_valid_memory_s1,
                                            cpu_instruction_master_requests_cpu_jtag_debug_module,
                                            cpu_instruction_master_requests_memory_s1,
                                            cpu_jtag_debug_module_readdata_from_sa,
                                            d1_cpu_jtag_debug_module_end_xfer,
                                            d1_memory_s1_end_xfer,
                                            memory_s1_readdata_from_sa,
                                            reset_n,

                                           // outputs:
                                            cpu_instruction_master_address_to_slave,
                                            cpu_instruction_master_latency_counter,
                                            cpu_instruction_master_readdata,
                                            cpu_instruction_master_readdatavalid,
                                            cpu_instruction_master_waitrequest
                                         )
;

  output  [ 15: 0] cpu_instruction_master_address_to_slave;
  output           cpu_instruction_master_latency_counter;
  output  [ 31: 0] cpu_instruction_master_readdata;
  output           cpu_instruction_master_readdatavalid;
  output           cpu_instruction_master_waitrequest;
  input            clk;
  input   [ 15: 0] cpu_instruction_master_address;
  input            cpu_instruction_master_granted_cpu_jtag_debug_module;
  input            cpu_instruction_master_granted_memory_s1;
  input            cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  input            cpu_instruction_master_qualified_request_memory_s1;
  input            cpu_instruction_master_read;
  input            cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  input            cpu_instruction_master_read_data_valid_memory_s1;
  input            cpu_instruction_master_requests_cpu_jtag_debug_module;
  input            cpu_instruction_master_requests_memory_s1;
  input   [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  input            d1_cpu_jtag_debug_module_end_xfer;
  input            d1_memory_s1_end_xfer;
  input   [ 31: 0] memory_s1_readdata_from_sa;
  input            reset_n;

  reg              active_and_waiting_last_time;
  reg     [ 15: 0] cpu_instruction_master_address_last_time;
  wire    [ 15: 0] cpu_instruction_master_address_to_slave;
  wire             cpu_instruction_master_is_granted_some_slave;
  reg              cpu_instruction_master_latency_counter;
  reg              cpu_instruction_master_read_but_no_slave_selected;
  reg              cpu_instruction_master_read_last_time;
  wire    [ 31: 0] cpu_instruction_master_readdata;
  wire             cpu_instruction_master_readdatavalid;
  wire             cpu_instruction_master_run;
  wire             cpu_instruction_master_waitrequest;
  wire             latency_load_value;
  wire             p1_cpu_instruction_master_latency_counter;
  wire             pre_flush_cpu_instruction_master_readdatavalid;
  wire             r_0;
  wire             r_1;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (cpu_instruction_master_qualified_request_cpu_jtag_debug_module | ~cpu_instruction_master_requests_cpu_jtag_debug_module) & (cpu_instruction_master_granted_cpu_jtag_debug_module | ~cpu_instruction_master_qualified_request_cpu_jtag_debug_module) & ((~cpu_instruction_master_qualified_request_cpu_jtag_debug_module | ~cpu_instruction_master_read | (1 & ~d1_cpu_jtag_debug_module_end_xfer & cpu_instruction_master_read))) & 1 & (cpu_instruction_master_qualified_request_memory_s1 | ~cpu_instruction_master_requests_memory_s1);

  //cascaded wait assignment, which is an e_assign
  assign cpu_instruction_master_run = r_0 & r_1;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = (cpu_instruction_master_granted_memory_s1 | ~cpu_instruction_master_qualified_request_memory_s1) & ((~cpu_instruction_master_qualified_request_memory_s1 | ~cpu_instruction_master_read | (1 & cpu_instruction_master_read)));

  //optimize select-logic by passing only those address bits which matter.
  assign cpu_instruction_master_address_to_slave = cpu_instruction_master_address[15 : 0];

  //cpu_instruction_master_read_but_no_slave_selected assignment, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_but_no_slave_selected <= 0;
      else if (1)
          cpu_instruction_master_read_but_no_slave_selected <= cpu_instruction_master_read & cpu_instruction_master_run & ~cpu_instruction_master_is_granted_some_slave;
    end


  //some slave is getting selected, which is an e_mux
  assign cpu_instruction_master_is_granted_some_slave = cpu_instruction_master_granted_cpu_jtag_debug_module |
    cpu_instruction_master_granted_memory_s1;

  //latent slave read data valids which may be flushed, which is an e_mux
  assign pre_flush_cpu_instruction_master_readdatavalid = cpu_instruction_master_read_data_valid_memory_s1;

  //latent slave read data valid which is not flushed, which is an e_mux
  assign cpu_instruction_master_readdatavalid = cpu_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_instruction_master_readdatavalid |
    cpu_instruction_master_read_data_valid_cpu_jtag_debug_module |
    cpu_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_instruction_master_readdatavalid;

  //cpu/instruction_master readdata mux, which is an e_mux
  assign cpu_instruction_master_readdata = ({32 {~(cpu_instruction_master_qualified_request_cpu_jtag_debug_module & cpu_instruction_master_read)}} | cpu_jtag_debug_module_readdata_from_sa) &
    ({32 {~cpu_instruction_master_read_data_valid_memory_s1}} | memory_s1_readdata_from_sa);

  //actual waitrequest port, which is an e_assign
  assign cpu_instruction_master_waitrequest = ~cpu_instruction_master_run;

  //latent max counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_latency_counter <= 0;
      else if (1)
          cpu_instruction_master_latency_counter <= p1_cpu_instruction_master_latency_counter;
    end


  //latency counter load mux, which is an e_mux
  assign p1_cpu_instruction_master_latency_counter = ((cpu_instruction_master_run & cpu_instruction_master_read))? latency_load_value :
    (cpu_instruction_master_latency_counter)? cpu_instruction_master_latency_counter - 1 :
    0;

  //read latency load values, which is an e_mux
  assign latency_load_value = {1 {cpu_instruction_master_requests_memory_s1}} & 1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu_instruction_master_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_address_last_time <= 0;
      else if (1)
          cpu_instruction_master_address_last_time <= cpu_instruction_master_address;
    end


  //cpu/instruction_master waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else if (1)
          active_and_waiting_last_time <= cpu_instruction_master_waitrequest & (cpu_instruction_master_read);
    end


  //cpu_instruction_master_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_instruction_master_address != cpu_instruction_master_address_last_time))
        begin
          $write("%0d ns: cpu_instruction_master_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu_instruction_master_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_last_time <= 0;
      else if (1)
          cpu_instruction_master_read_last_time <= cpu_instruction_master_read;
    end


  //cpu_instruction_master_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_instruction_master_read != cpu_instruction_master_read_last_time))
        begin
          $write("%0d ns: cpu_instruction_master_read did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hex_display_avalon_slave_arbitrator (
                                             // inputs:
                                              clk,
                                              cpu_data_master_address_to_slave,
                                              cpu_data_master_read,
                                              cpu_data_master_waitrequest,
                                              cpu_data_master_write,
                                              cpu_data_master_writedata,
                                              reset_n,

                                             // outputs:
                                              cpu_data_master_granted_hex_display_avalon_slave,
                                              cpu_data_master_qualified_request_hex_display_avalon_slave,
                                              cpu_data_master_read_data_valid_hex_display_avalon_slave,
                                              cpu_data_master_requests_hex_display_avalon_slave,
                                              d1_hex_display_avalon_slave_end_xfer,
                                              hex_display_avalon_slave_address,
                                              hex_display_avalon_slave_reset_n,
                                              hex_display_avalon_slave_write,
                                              hex_display_avalon_slave_writedata
                                           )
;

  output           cpu_data_master_granted_hex_display_avalon_slave;
  output           cpu_data_master_qualified_request_hex_display_avalon_slave;
  output           cpu_data_master_read_data_valid_hex_display_avalon_slave;
  output           cpu_data_master_requests_hex_display_avalon_slave;
  output           d1_hex_display_avalon_slave_end_xfer;
  output           hex_display_avalon_slave_address;
  output           hex_display_avalon_slave_reset_n;
  output           hex_display_avalon_slave_write;
  output  [ 31: 0] hex_display_avalon_slave_writedata;
  input            clk;
  input   [ 15: 0] cpu_data_master_address_to_slave;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_hex_display_avalon_slave;
  wire             cpu_data_master_qualified_request_hex_display_avalon_slave;
  wire             cpu_data_master_read_data_valid_hex_display_avalon_slave;
  wire             cpu_data_master_requests_hex_display_avalon_slave;
  wire             cpu_data_master_saved_grant_hex_display_avalon_slave;
  reg              d1_hex_display_avalon_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hex_display_avalon_slave;
  wire             hex_display_avalon_slave_address;
  wire             hex_display_avalon_slave_allgrants;
  wire             hex_display_avalon_slave_allow_new_arb_cycle;
  wire             hex_display_avalon_slave_any_bursting_master_saved_grant;
  wire             hex_display_avalon_slave_any_continuerequest;
  wire             hex_display_avalon_slave_arb_counter_enable;
  reg              hex_display_avalon_slave_arb_share_counter;
  wire             hex_display_avalon_slave_arb_share_counter_next_value;
  wire             hex_display_avalon_slave_arb_share_set_values;
  wire             hex_display_avalon_slave_beginbursttransfer_internal;
  wire             hex_display_avalon_slave_begins_xfer;
  wire             hex_display_avalon_slave_end_xfer;
  wire             hex_display_avalon_slave_firsttransfer;
  wire             hex_display_avalon_slave_grant_vector;
  wire             hex_display_avalon_slave_in_a_read_cycle;
  wire             hex_display_avalon_slave_in_a_write_cycle;
  wire             hex_display_avalon_slave_master_qreq_vector;
  wire             hex_display_avalon_slave_non_bursting_master_requests;
  reg              hex_display_avalon_slave_reg_firsttransfer;
  wire             hex_display_avalon_slave_reset_n;
  reg              hex_display_avalon_slave_slavearbiterlockenable;
  wire             hex_display_avalon_slave_slavearbiterlockenable2;
  wire             hex_display_avalon_slave_unreg_firsttransfer;
  wire             hex_display_avalon_slave_waits_for_read;
  wire             hex_display_avalon_slave_waits_for_write;
  wire             hex_display_avalon_slave_write;
  wire    [ 31: 0] hex_display_avalon_slave_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 15: 0] shifted_address_to_hex_display_avalon_slave_from_cpu_data_master;
  wire             wait_for_hex_display_avalon_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~hex_display_avalon_slave_end_xfer;
    end


  assign hex_display_avalon_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_hex_display_avalon_slave));
  assign cpu_data_master_requests_hex_display_avalon_slave = (({cpu_data_master_address_to_slave[15 : 3] , 3'b0} == 16'h8818) & (cpu_data_master_read | cpu_data_master_write)) & cpu_data_master_write;
  //hex_display_avalon_slave_arb_share_counter set values, which is an e_mux
  assign hex_display_avalon_slave_arb_share_set_values = 1;

  //hex_display_avalon_slave_non_bursting_master_requests mux, which is an e_mux
  assign hex_display_avalon_slave_non_bursting_master_requests = cpu_data_master_requests_hex_display_avalon_slave;

  //hex_display_avalon_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign hex_display_avalon_slave_any_bursting_master_saved_grant = 0;

  //hex_display_avalon_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign hex_display_avalon_slave_arb_share_counter_next_value = hex_display_avalon_slave_firsttransfer ? (hex_display_avalon_slave_arb_share_set_values - 1) : |hex_display_avalon_slave_arb_share_counter ? (hex_display_avalon_slave_arb_share_counter - 1) : 0;

  //hex_display_avalon_slave_allgrants all slave grants, which is an e_mux
  assign hex_display_avalon_slave_allgrants = |hex_display_avalon_slave_grant_vector;

  //hex_display_avalon_slave_end_xfer assignment, which is an e_assign
  assign hex_display_avalon_slave_end_xfer = ~(hex_display_avalon_slave_waits_for_read | hex_display_avalon_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_hex_display_avalon_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hex_display_avalon_slave = hex_display_avalon_slave_end_xfer & (~hex_display_avalon_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hex_display_avalon_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign hex_display_avalon_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_hex_display_avalon_slave & hex_display_avalon_slave_allgrants) | (end_xfer_arb_share_counter_term_hex_display_avalon_slave & ~hex_display_avalon_slave_non_bursting_master_requests);

  //hex_display_avalon_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hex_display_avalon_slave_arb_share_counter <= 0;
      else if (hex_display_avalon_slave_arb_counter_enable)
          hex_display_avalon_slave_arb_share_counter <= hex_display_avalon_slave_arb_share_counter_next_value;
    end


  //hex_display_avalon_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hex_display_avalon_slave_slavearbiterlockenable <= 0;
      else if ((|hex_display_avalon_slave_master_qreq_vector & end_xfer_arb_share_counter_term_hex_display_avalon_slave) | (end_xfer_arb_share_counter_term_hex_display_avalon_slave & ~hex_display_avalon_slave_non_bursting_master_requests))
          hex_display_avalon_slave_slavearbiterlockenable <= |hex_display_avalon_slave_arb_share_counter_next_value;
    end


  //cpu/data_master hex_display/avalon_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = hex_display_avalon_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //hex_display_avalon_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hex_display_avalon_slave_slavearbiterlockenable2 = |hex_display_avalon_slave_arb_share_counter_next_value;

  //cpu/data_master hex_display/avalon_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = hex_display_avalon_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //hex_display_avalon_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hex_display_avalon_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_hex_display_avalon_slave = cpu_data_master_requests_hex_display_avalon_slave & ~(((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //hex_display_avalon_slave_writedata mux, which is an e_mux
  assign hex_display_avalon_slave_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_hex_display_avalon_slave = cpu_data_master_qualified_request_hex_display_avalon_slave;

  //cpu/data_master saved-grant hex_display/avalon_slave, which is an e_assign
  assign cpu_data_master_saved_grant_hex_display_avalon_slave = cpu_data_master_requests_hex_display_avalon_slave;

  //allow new arb cycle for hex_display/avalon_slave, which is an e_assign
  assign hex_display_avalon_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hex_display_avalon_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hex_display_avalon_slave_master_qreq_vector = 1;

  //hex_display_avalon_slave_reset_n assignment, which is an e_assign
  assign hex_display_avalon_slave_reset_n = reset_n;

  //hex_display_avalon_slave_firsttransfer first transaction, which is an e_assign
  assign hex_display_avalon_slave_firsttransfer = hex_display_avalon_slave_begins_xfer ? hex_display_avalon_slave_unreg_firsttransfer : hex_display_avalon_slave_reg_firsttransfer;

  //hex_display_avalon_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign hex_display_avalon_slave_unreg_firsttransfer = ~(hex_display_avalon_slave_slavearbiterlockenable & hex_display_avalon_slave_any_continuerequest);

  //hex_display_avalon_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hex_display_avalon_slave_reg_firsttransfer <= 1'b1;
      else if (hex_display_avalon_slave_begins_xfer)
          hex_display_avalon_slave_reg_firsttransfer <= hex_display_avalon_slave_unreg_firsttransfer;
    end


  //hex_display_avalon_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hex_display_avalon_slave_beginbursttransfer_internal = hex_display_avalon_slave_begins_xfer;

  //hex_display_avalon_slave_write assignment, which is an e_mux
  assign hex_display_avalon_slave_write = cpu_data_master_granted_hex_display_avalon_slave & cpu_data_master_write;

  assign shifted_address_to_hex_display_avalon_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //hex_display_avalon_slave_address mux, which is an e_mux
  assign hex_display_avalon_slave_address = shifted_address_to_hex_display_avalon_slave_from_cpu_data_master >> 2;

  //d1_hex_display_avalon_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hex_display_avalon_slave_end_xfer <= 1;
      else if (1)
          d1_hex_display_avalon_slave_end_xfer <= hex_display_avalon_slave_end_xfer;
    end


  //hex_display_avalon_slave_waits_for_read in a cycle, which is an e_mux
  assign hex_display_avalon_slave_waits_for_read = hex_display_avalon_slave_in_a_read_cycle & hex_display_avalon_slave_begins_xfer;

  //hex_display_avalon_slave_in_a_read_cycle assignment, which is an e_assign
  assign hex_display_avalon_slave_in_a_read_cycle = cpu_data_master_granted_hex_display_avalon_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hex_display_avalon_slave_in_a_read_cycle;

  //hex_display_avalon_slave_waits_for_write in a cycle, which is an e_mux
  assign hex_display_avalon_slave_waits_for_write = hex_display_avalon_slave_in_a_write_cycle & 0;

  //hex_display_avalon_slave_in_a_write_cycle assignment, which is an e_assign
  assign hex_display_avalon_slave_in_a_write_cycle = cpu_data_master_granted_hex_display_avalon_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hex_display_avalon_slave_in_a_write_cycle;

  assign wait_for_hex_display_avalon_slave_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hex_display/avalon_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module jtag_uart_avalon_jtag_slave_arbitrator (
                                                // inputs:
                                                 clk,
                                                 cpu_data_master_address_to_slave,
                                                 cpu_data_master_read,
                                                 cpu_data_master_waitrequest,
                                                 cpu_data_master_write,
                                                 cpu_data_master_writedata,
                                                 jtag_uart_avalon_jtag_slave_dataavailable,
                                                 jtag_uart_avalon_jtag_slave_irq,
                                                 jtag_uart_avalon_jtag_slave_readdata,
                                                 jtag_uart_avalon_jtag_slave_readyfordata,
                                                 jtag_uart_avalon_jtag_slave_waitrequest,
                                                 reset_n,

                                                // outputs:
                                                 cpu_data_master_granted_jtag_uart_avalon_jtag_slave,
                                                 cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave,
                                                 cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave,
                                                 cpu_data_master_requests_jtag_uart_avalon_jtag_slave,
                                                 d1_jtag_uart_avalon_jtag_slave_end_xfer,
                                                 jtag_uart_avalon_jtag_slave_address,
                                                 jtag_uart_avalon_jtag_slave_chipselect,
                                                 jtag_uart_avalon_jtag_slave_dataavailable_from_sa,
                                                 jtag_uart_avalon_jtag_slave_irq_from_sa,
                                                 jtag_uart_avalon_jtag_slave_read_n,
                                                 jtag_uart_avalon_jtag_slave_readdata_from_sa,
                                                 jtag_uart_avalon_jtag_slave_readyfordata_from_sa,
                                                 jtag_uart_avalon_jtag_slave_reset_n,
                                                 jtag_uart_avalon_jtag_slave_waitrequest_from_sa,
                                                 jtag_uart_avalon_jtag_slave_write_n,
                                                 jtag_uart_avalon_jtag_slave_writedata
                                              )
;

  output           cpu_data_master_granted_jtag_uart_avalon_jtag_slave;
  output           cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  output           cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  output           cpu_data_master_requests_jtag_uart_avalon_jtag_slave;
  output           d1_jtag_uart_avalon_jtag_slave_end_xfer;
  output           jtag_uart_avalon_jtag_slave_address;
  output           jtag_uart_avalon_jtag_slave_chipselect;
  output           jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  output           jtag_uart_avalon_jtag_slave_irq_from_sa;
  output           jtag_uart_avalon_jtag_slave_read_n;
  output  [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  output           jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  output           jtag_uart_avalon_jtag_slave_reset_n;
  output           jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  output           jtag_uart_avalon_jtag_slave_write_n;
  output  [ 31: 0] jtag_uart_avalon_jtag_slave_writedata;
  input            clk;
  input   [ 15: 0] cpu_data_master_address_to_slave;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            jtag_uart_avalon_jtag_slave_dataavailable;
  input            jtag_uart_avalon_jtag_slave_irq;
  input   [ 31: 0] jtag_uart_avalon_jtag_slave_readdata;
  input            jtag_uart_avalon_jtag_slave_readyfordata;
  input            jtag_uart_avalon_jtag_slave_waitrequest;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_requests_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_saved_grant_jtag_uart_avalon_jtag_slave;
  reg              d1_jtag_uart_avalon_jtag_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             jtag_uart_avalon_jtag_slave_address;
  wire             jtag_uart_avalon_jtag_slave_allgrants;
  wire             jtag_uart_avalon_jtag_slave_allow_new_arb_cycle;
  wire             jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant;
  wire             jtag_uart_avalon_jtag_slave_any_continuerequest;
  wire             jtag_uart_avalon_jtag_slave_arb_counter_enable;
  reg              jtag_uart_avalon_jtag_slave_arb_share_counter;
  wire             jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;
  wire             jtag_uart_avalon_jtag_slave_arb_share_set_values;
  wire             jtag_uart_avalon_jtag_slave_beginbursttransfer_internal;
  wire             jtag_uart_avalon_jtag_slave_begins_xfer;
  wire             jtag_uart_avalon_jtag_slave_chipselect;
  wire             jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  wire             jtag_uart_avalon_jtag_slave_end_xfer;
  wire             jtag_uart_avalon_jtag_slave_firsttransfer;
  wire             jtag_uart_avalon_jtag_slave_grant_vector;
  wire             jtag_uart_avalon_jtag_slave_in_a_read_cycle;
  wire             jtag_uart_avalon_jtag_slave_in_a_write_cycle;
  wire             jtag_uart_avalon_jtag_slave_irq_from_sa;
  wire             jtag_uart_avalon_jtag_slave_master_qreq_vector;
  wire             jtag_uart_avalon_jtag_slave_non_bursting_master_requests;
  wire             jtag_uart_avalon_jtag_slave_read_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  wire             jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  reg              jtag_uart_avalon_jtag_slave_reg_firsttransfer;
  wire             jtag_uart_avalon_jtag_slave_reset_n;
  reg              jtag_uart_avalon_jtag_slave_slavearbiterlockenable;
  wire             jtag_uart_avalon_jtag_slave_slavearbiterlockenable2;
  wire             jtag_uart_avalon_jtag_slave_unreg_firsttransfer;
  wire             jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  wire             jtag_uart_avalon_jtag_slave_waits_for_read;
  wire             jtag_uart_avalon_jtag_slave_waits_for_write;
  wire             jtag_uart_avalon_jtag_slave_write_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_writedata;
  wire    [ 15: 0] shifted_address_to_jtag_uart_avalon_jtag_slave_from_cpu_data_master;
  wire             wait_for_jtag_uart_avalon_jtag_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~jtag_uart_avalon_jtag_slave_end_xfer;
    end


  assign jtag_uart_avalon_jtag_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave));
  //assign jtag_uart_avalon_jtag_slave_readdata_from_sa = jtag_uart_avalon_jtag_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_readdata_from_sa = jtag_uart_avalon_jtag_slave_readdata;

  assign cpu_data_master_requests_jtag_uart_avalon_jtag_slave = ({cpu_data_master_address_to_slave[15 : 3] , 3'b0} == 16'h8810) & (cpu_data_master_read | cpu_data_master_write);
  //assign jtag_uart_avalon_jtag_slave_dataavailable_from_sa = jtag_uart_avalon_jtag_slave_dataavailable so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_dataavailable_from_sa = jtag_uart_avalon_jtag_slave_dataavailable;

  //assign jtag_uart_avalon_jtag_slave_readyfordata_from_sa = jtag_uart_avalon_jtag_slave_readyfordata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_readyfordata_from_sa = jtag_uart_avalon_jtag_slave_readyfordata;

  //assign jtag_uart_avalon_jtag_slave_waitrequest_from_sa = jtag_uart_avalon_jtag_slave_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_waitrequest_from_sa = jtag_uart_avalon_jtag_slave_waitrequest;

  //jtag_uart_avalon_jtag_slave_arb_share_counter set values, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_arb_share_set_values = 1;

  //jtag_uart_avalon_jtag_slave_non_bursting_master_requests mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_non_bursting_master_requests = cpu_data_master_requests_jtag_uart_avalon_jtag_slave;

  //jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant = 0;

  //jtag_uart_avalon_jtag_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_arb_share_counter_next_value = jtag_uart_avalon_jtag_slave_firsttransfer ? (jtag_uart_avalon_jtag_slave_arb_share_set_values - 1) : |jtag_uart_avalon_jtag_slave_arb_share_counter ? (jtag_uart_avalon_jtag_slave_arb_share_counter - 1) : 0;

  //jtag_uart_avalon_jtag_slave_allgrants all slave grants, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_allgrants = |jtag_uart_avalon_jtag_slave_grant_vector;

  //jtag_uart_avalon_jtag_slave_end_xfer assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_end_xfer = ~(jtag_uart_avalon_jtag_slave_waits_for_read | jtag_uart_avalon_jtag_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave = jtag_uart_avalon_jtag_slave_end_xfer & (~jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //jtag_uart_avalon_jtag_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave & jtag_uart_avalon_jtag_slave_allgrants) | (end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave & ~jtag_uart_avalon_jtag_slave_non_bursting_master_requests);

  //jtag_uart_avalon_jtag_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          jtag_uart_avalon_jtag_slave_arb_share_counter <= 0;
      else if (jtag_uart_avalon_jtag_slave_arb_counter_enable)
          jtag_uart_avalon_jtag_slave_arb_share_counter <= jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;
    end


  //jtag_uart_avalon_jtag_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          jtag_uart_avalon_jtag_slave_slavearbiterlockenable <= 0;
      else if ((|jtag_uart_avalon_jtag_slave_master_qreq_vector & end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave) | (end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave & ~jtag_uart_avalon_jtag_slave_non_bursting_master_requests))
          jtag_uart_avalon_jtag_slave_slavearbiterlockenable <= |jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;
    end


  //cpu/data_master jtag_uart/avalon_jtag_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = jtag_uart_avalon_jtag_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //jtag_uart_avalon_jtag_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_slavearbiterlockenable2 = |jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;

  //cpu/data_master jtag_uart/avalon_jtag_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = jtag_uart_avalon_jtag_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //jtag_uart_avalon_jtag_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave = cpu_data_master_requests_jtag_uart_avalon_jtag_slave & ~((cpu_data_master_read & (~cpu_data_master_waitrequest)) | ((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //jtag_uart_avalon_jtag_slave_writedata mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_jtag_uart_avalon_jtag_slave = cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave;

  //cpu/data_master saved-grant jtag_uart/avalon_jtag_slave, which is an e_assign
  assign cpu_data_master_saved_grant_jtag_uart_avalon_jtag_slave = cpu_data_master_requests_jtag_uart_avalon_jtag_slave;

  //allow new arb cycle for jtag_uart/avalon_jtag_slave, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign jtag_uart_avalon_jtag_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign jtag_uart_avalon_jtag_slave_master_qreq_vector = 1;

  //jtag_uart_avalon_jtag_slave_reset_n assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_reset_n = reset_n;

  assign jtag_uart_avalon_jtag_slave_chipselect = cpu_data_master_granted_jtag_uart_avalon_jtag_slave;
  //jtag_uart_avalon_jtag_slave_firsttransfer first transaction, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_firsttransfer = jtag_uart_avalon_jtag_slave_begins_xfer ? jtag_uart_avalon_jtag_slave_unreg_firsttransfer : jtag_uart_avalon_jtag_slave_reg_firsttransfer;

  //jtag_uart_avalon_jtag_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_unreg_firsttransfer = ~(jtag_uart_avalon_jtag_slave_slavearbiterlockenable & jtag_uart_avalon_jtag_slave_any_continuerequest);

  //jtag_uart_avalon_jtag_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          jtag_uart_avalon_jtag_slave_reg_firsttransfer <= 1'b1;
      else if (jtag_uart_avalon_jtag_slave_begins_xfer)
          jtag_uart_avalon_jtag_slave_reg_firsttransfer <= jtag_uart_avalon_jtag_slave_unreg_firsttransfer;
    end


  //jtag_uart_avalon_jtag_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_beginbursttransfer_internal = jtag_uart_avalon_jtag_slave_begins_xfer;

  //~jtag_uart_avalon_jtag_slave_read_n assignment, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_read_n = ~(cpu_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_data_master_read);

  //~jtag_uart_avalon_jtag_slave_write_n assignment, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_write_n = ~(cpu_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_data_master_write);

  assign shifted_address_to_jtag_uart_avalon_jtag_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //jtag_uart_avalon_jtag_slave_address mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_address = shifted_address_to_jtag_uart_avalon_jtag_slave_from_cpu_data_master >> 2;

  //d1_jtag_uart_avalon_jtag_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_jtag_uart_avalon_jtag_slave_end_xfer <= 1;
      else if (1)
          d1_jtag_uart_avalon_jtag_slave_end_xfer <= jtag_uart_avalon_jtag_slave_end_xfer;
    end


  //jtag_uart_avalon_jtag_slave_waits_for_read in a cycle, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_waits_for_read = jtag_uart_avalon_jtag_slave_in_a_read_cycle & jtag_uart_avalon_jtag_slave_waitrequest_from_sa;

  //jtag_uart_avalon_jtag_slave_in_a_read_cycle assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_in_a_read_cycle = cpu_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = jtag_uart_avalon_jtag_slave_in_a_read_cycle;

  //jtag_uart_avalon_jtag_slave_waits_for_write in a cycle, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_waits_for_write = jtag_uart_avalon_jtag_slave_in_a_write_cycle & jtag_uart_avalon_jtag_slave_waitrequest_from_sa;

  //jtag_uart_avalon_jtag_slave_in_a_write_cycle assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_in_a_write_cycle = cpu_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = jtag_uart_avalon_jtag_slave_in_a_write_cycle;

  assign wait_for_jtag_uart_avalon_jtag_slave_counter = 0;
  //assign jtag_uart_avalon_jtag_slave_irq_from_sa = jtag_uart_avalon_jtag_slave_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_irq_from_sa = jtag_uart_avalon_jtag_slave_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //jtag_uart/avalon_jtag_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module ledr_s1_arbitrator (
                            // inputs:
                             clk,
                             cpu_data_master_address_to_slave,
                             cpu_data_master_read,
                             cpu_data_master_waitrequest,
                             cpu_data_master_write,
                             cpu_data_master_writedata,
                             reset_n,

                            // outputs:
                             cpu_data_master_granted_ledr_s1,
                             cpu_data_master_qualified_request_ledr_s1,
                             cpu_data_master_read_data_valid_ledr_s1,
                             cpu_data_master_requests_ledr_s1,
                             d1_ledr_s1_end_xfer,
                             ledr_s1_address,
                             ledr_s1_chipselect,
                             ledr_s1_reset_n,
                             ledr_s1_write_n,
                             ledr_s1_writedata
                          )
;

  output           cpu_data_master_granted_ledr_s1;
  output           cpu_data_master_qualified_request_ledr_s1;
  output           cpu_data_master_read_data_valid_ledr_s1;
  output           cpu_data_master_requests_ledr_s1;
  output           d1_ledr_s1_end_xfer;
  output  [  1: 0] ledr_s1_address;
  output           ledr_s1_chipselect;
  output           ledr_s1_reset_n;
  output           ledr_s1_write_n;
  output  [ 17: 0] ledr_s1_writedata;
  input            clk;
  input   [ 15: 0] cpu_data_master_address_to_slave;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_ledr_s1;
  wire             cpu_data_master_qualified_request_ledr_s1;
  wire             cpu_data_master_read_data_valid_ledr_s1;
  wire             cpu_data_master_requests_ledr_s1;
  wire             cpu_data_master_saved_grant_ledr_s1;
  reg              d1_ledr_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_ledr_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [  1: 0] ledr_s1_address;
  wire             ledr_s1_allgrants;
  wire             ledr_s1_allow_new_arb_cycle;
  wire             ledr_s1_any_bursting_master_saved_grant;
  wire             ledr_s1_any_continuerequest;
  wire             ledr_s1_arb_counter_enable;
  reg              ledr_s1_arb_share_counter;
  wire             ledr_s1_arb_share_counter_next_value;
  wire             ledr_s1_arb_share_set_values;
  wire             ledr_s1_beginbursttransfer_internal;
  wire             ledr_s1_begins_xfer;
  wire             ledr_s1_chipselect;
  wire             ledr_s1_end_xfer;
  wire             ledr_s1_firsttransfer;
  wire             ledr_s1_grant_vector;
  wire             ledr_s1_in_a_read_cycle;
  wire             ledr_s1_in_a_write_cycle;
  wire             ledr_s1_master_qreq_vector;
  wire             ledr_s1_non_bursting_master_requests;
  reg              ledr_s1_reg_firsttransfer;
  wire             ledr_s1_reset_n;
  reg              ledr_s1_slavearbiterlockenable;
  wire             ledr_s1_slavearbiterlockenable2;
  wire             ledr_s1_unreg_firsttransfer;
  wire             ledr_s1_waits_for_read;
  wire             ledr_s1_waits_for_write;
  wire             ledr_s1_write_n;
  wire    [ 17: 0] ledr_s1_writedata;
  wire    [ 15: 0] shifted_address_to_ledr_s1_from_cpu_data_master;
  wire             wait_for_ledr_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~ledr_s1_end_xfer;
    end


  assign ledr_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_ledr_s1));
  assign cpu_data_master_requests_ledr_s1 = (({cpu_data_master_address_to_slave[15 : 4] , 4'b0} == 16'h8800) & (cpu_data_master_read | cpu_data_master_write)) & cpu_data_master_write;
  //ledr_s1_arb_share_counter set values, which is an e_mux
  assign ledr_s1_arb_share_set_values = 1;

  //ledr_s1_non_bursting_master_requests mux, which is an e_mux
  assign ledr_s1_non_bursting_master_requests = cpu_data_master_requests_ledr_s1;

  //ledr_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign ledr_s1_any_bursting_master_saved_grant = 0;

  //ledr_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign ledr_s1_arb_share_counter_next_value = ledr_s1_firsttransfer ? (ledr_s1_arb_share_set_values - 1) : |ledr_s1_arb_share_counter ? (ledr_s1_arb_share_counter - 1) : 0;

  //ledr_s1_allgrants all slave grants, which is an e_mux
  assign ledr_s1_allgrants = |ledr_s1_grant_vector;

  //ledr_s1_end_xfer assignment, which is an e_assign
  assign ledr_s1_end_xfer = ~(ledr_s1_waits_for_read | ledr_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_ledr_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_ledr_s1 = ledr_s1_end_xfer & (~ledr_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //ledr_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign ledr_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_ledr_s1 & ledr_s1_allgrants) | (end_xfer_arb_share_counter_term_ledr_s1 & ~ledr_s1_non_bursting_master_requests);

  //ledr_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ledr_s1_arb_share_counter <= 0;
      else if (ledr_s1_arb_counter_enable)
          ledr_s1_arb_share_counter <= ledr_s1_arb_share_counter_next_value;
    end


  //ledr_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ledr_s1_slavearbiterlockenable <= 0;
      else if ((|ledr_s1_master_qreq_vector & end_xfer_arb_share_counter_term_ledr_s1) | (end_xfer_arb_share_counter_term_ledr_s1 & ~ledr_s1_non_bursting_master_requests))
          ledr_s1_slavearbiterlockenable <= |ledr_s1_arb_share_counter_next_value;
    end


  //cpu/data_master ledr/s1 arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = ledr_s1_slavearbiterlockenable & cpu_data_master_continuerequest;

  //ledr_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign ledr_s1_slavearbiterlockenable2 = |ledr_s1_arb_share_counter_next_value;

  //cpu/data_master ledr/s1 arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = ledr_s1_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //ledr_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign ledr_s1_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_ledr_s1 = cpu_data_master_requests_ledr_s1 & ~(((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //ledr_s1_writedata mux, which is an e_mux
  assign ledr_s1_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_ledr_s1 = cpu_data_master_qualified_request_ledr_s1;

  //cpu/data_master saved-grant ledr/s1, which is an e_assign
  assign cpu_data_master_saved_grant_ledr_s1 = cpu_data_master_requests_ledr_s1;

  //allow new arb cycle for ledr/s1, which is an e_assign
  assign ledr_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign ledr_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign ledr_s1_master_qreq_vector = 1;

  //ledr_s1_reset_n assignment, which is an e_assign
  assign ledr_s1_reset_n = reset_n;

  assign ledr_s1_chipselect = cpu_data_master_granted_ledr_s1;
  //ledr_s1_firsttransfer first transaction, which is an e_assign
  assign ledr_s1_firsttransfer = ledr_s1_begins_xfer ? ledr_s1_unreg_firsttransfer : ledr_s1_reg_firsttransfer;

  //ledr_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign ledr_s1_unreg_firsttransfer = ~(ledr_s1_slavearbiterlockenable & ledr_s1_any_continuerequest);

  //ledr_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ledr_s1_reg_firsttransfer <= 1'b1;
      else if (ledr_s1_begins_xfer)
          ledr_s1_reg_firsttransfer <= ledr_s1_unreg_firsttransfer;
    end


  //ledr_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign ledr_s1_beginbursttransfer_internal = ledr_s1_begins_xfer;

  //~ledr_s1_write_n assignment, which is an e_mux
  assign ledr_s1_write_n = ~(cpu_data_master_granted_ledr_s1 & cpu_data_master_write);

  assign shifted_address_to_ledr_s1_from_cpu_data_master = cpu_data_master_address_to_slave;
  //ledr_s1_address mux, which is an e_mux
  assign ledr_s1_address = shifted_address_to_ledr_s1_from_cpu_data_master >> 2;

  //d1_ledr_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_ledr_s1_end_xfer <= 1;
      else if (1)
          d1_ledr_s1_end_xfer <= ledr_s1_end_xfer;
    end


  //ledr_s1_waits_for_read in a cycle, which is an e_mux
  assign ledr_s1_waits_for_read = ledr_s1_in_a_read_cycle & ledr_s1_begins_xfer;

  //ledr_s1_in_a_read_cycle assignment, which is an e_assign
  assign ledr_s1_in_a_read_cycle = cpu_data_master_granted_ledr_s1 & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = ledr_s1_in_a_read_cycle;

  //ledr_s1_waits_for_write in a cycle, which is an e_mux
  assign ledr_s1_waits_for_write = ledr_s1_in_a_write_cycle & 0;

  //ledr_s1_in_a_write_cycle assignment, which is an e_assign
  assign ledr_s1_in_a_write_cycle = cpu_data_master_granted_ledr_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = ledr_s1_in_a_write_cycle;

  assign wait_for_ledr_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //ledr/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module memory_s1_arbitrator (
                              // inputs:
                               clk,
                               cpu_data_master_address_to_slave,
                               cpu_data_master_byteenable,
                               cpu_data_master_read,
                               cpu_data_master_waitrequest,
                               cpu_data_master_write,
                               cpu_data_master_writedata,
                               cpu_instruction_master_address_to_slave,
                               cpu_instruction_master_latency_counter,
                               cpu_instruction_master_read,
                               memory_s1_readdata,
                               reset_n,

                              // outputs:
                               cpu_data_master_granted_memory_s1,
                               cpu_data_master_qualified_request_memory_s1,
                               cpu_data_master_read_data_valid_memory_s1,
                               cpu_data_master_requests_memory_s1,
                               cpu_instruction_master_granted_memory_s1,
                               cpu_instruction_master_qualified_request_memory_s1,
                               cpu_instruction_master_read_data_valid_memory_s1,
                               cpu_instruction_master_requests_memory_s1,
                               d1_memory_s1_end_xfer,
                               memory_s1_address,
                               memory_s1_byteenable,
                               memory_s1_chipselect,
                               memory_s1_clken,
                               memory_s1_readdata_from_sa,
                               memory_s1_write,
                               memory_s1_writedata,
                               registered_cpu_data_master_read_data_valid_memory_s1
                            )
;

  output           cpu_data_master_granted_memory_s1;
  output           cpu_data_master_qualified_request_memory_s1;
  output           cpu_data_master_read_data_valid_memory_s1;
  output           cpu_data_master_requests_memory_s1;
  output           cpu_instruction_master_granted_memory_s1;
  output           cpu_instruction_master_qualified_request_memory_s1;
  output           cpu_instruction_master_read_data_valid_memory_s1;
  output           cpu_instruction_master_requests_memory_s1;
  output           d1_memory_s1_end_xfer;
  output  [ 12: 0] memory_s1_address;
  output  [  3: 0] memory_s1_byteenable;
  output           memory_s1_chipselect;
  output           memory_s1_clken;
  output  [ 31: 0] memory_s1_readdata_from_sa;
  output           memory_s1_write;
  output  [ 31: 0] memory_s1_writedata;
  output           registered_cpu_data_master_read_data_valid_memory_s1;
  input            clk;
  input   [ 15: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input   [ 15: 0] cpu_instruction_master_address_to_slave;
  input            cpu_instruction_master_latency_counter;
  input            cpu_instruction_master_read;
  input   [ 31: 0] memory_s1_readdata;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_memory_s1;
  wire             cpu_data_master_qualified_request_memory_s1;
  wire             cpu_data_master_read_data_valid_memory_s1;
  reg              cpu_data_master_read_data_valid_memory_s1_shift_register;
  wire             cpu_data_master_read_data_valid_memory_s1_shift_register_in;
  wire             cpu_data_master_requests_memory_s1;
  wire             cpu_data_master_saved_grant_memory_s1;
  wire             cpu_instruction_master_arbiterlock;
  wire             cpu_instruction_master_arbiterlock2;
  wire             cpu_instruction_master_continuerequest;
  wire             cpu_instruction_master_granted_memory_s1;
  wire             cpu_instruction_master_qualified_request_memory_s1;
  wire             cpu_instruction_master_read_data_valid_memory_s1;
  reg              cpu_instruction_master_read_data_valid_memory_s1_shift_register;
  wire             cpu_instruction_master_read_data_valid_memory_s1_shift_register_in;
  wire             cpu_instruction_master_requests_memory_s1;
  wire             cpu_instruction_master_saved_grant_memory_s1;
  reg              d1_memory_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_memory_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_data_master_granted_slave_memory_s1;
  reg              last_cycle_cpu_instruction_master_granted_slave_memory_s1;
  wire    [ 12: 0] memory_s1_address;
  wire             memory_s1_allgrants;
  wire             memory_s1_allow_new_arb_cycle;
  wire             memory_s1_any_bursting_master_saved_grant;
  wire             memory_s1_any_continuerequest;
  reg     [  1: 0] memory_s1_arb_addend;
  wire             memory_s1_arb_counter_enable;
  reg              memory_s1_arb_share_counter;
  wire             memory_s1_arb_share_counter_next_value;
  wire             memory_s1_arb_share_set_values;
  wire    [  1: 0] memory_s1_arb_winner;
  wire             memory_s1_arbitration_holdoff_internal;
  wire             memory_s1_beginbursttransfer_internal;
  wire             memory_s1_begins_xfer;
  wire    [  3: 0] memory_s1_byteenable;
  wire             memory_s1_chipselect;
  wire    [  3: 0] memory_s1_chosen_master_double_vector;
  wire    [  1: 0] memory_s1_chosen_master_rot_left;
  wire             memory_s1_clken;
  wire             memory_s1_end_xfer;
  wire             memory_s1_firsttransfer;
  wire    [  1: 0] memory_s1_grant_vector;
  wire             memory_s1_in_a_read_cycle;
  wire             memory_s1_in_a_write_cycle;
  wire    [  1: 0] memory_s1_master_qreq_vector;
  wire             memory_s1_non_bursting_master_requests;
  wire    [ 31: 0] memory_s1_readdata_from_sa;
  reg              memory_s1_reg_firsttransfer;
  reg     [  1: 0] memory_s1_saved_chosen_master_vector;
  reg              memory_s1_slavearbiterlockenable;
  wire             memory_s1_slavearbiterlockenable2;
  wire             memory_s1_unreg_firsttransfer;
  wire             memory_s1_waits_for_read;
  wire             memory_s1_waits_for_write;
  wire             memory_s1_write;
  wire    [ 31: 0] memory_s1_writedata;
  wire             p1_cpu_data_master_read_data_valid_memory_s1_shift_register;
  wire             p1_cpu_instruction_master_read_data_valid_memory_s1_shift_register;
  wire             registered_cpu_data_master_read_data_valid_memory_s1;
  wire    [ 15: 0] shifted_address_to_memory_s1_from_cpu_data_master;
  wire    [ 15: 0] shifted_address_to_memory_s1_from_cpu_instruction_master;
  wire             wait_for_memory_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~memory_s1_end_xfer;
    end


  assign memory_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_memory_s1 | cpu_instruction_master_qualified_request_memory_s1));
  //assign memory_s1_readdata_from_sa = memory_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign memory_s1_readdata_from_sa = memory_s1_readdata;

  assign cpu_data_master_requests_memory_s1 = ({cpu_data_master_address_to_slave[15] , 15'b0} == 16'h0) & (cpu_data_master_read | cpu_data_master_write);
  //registered rdv signal_name registered_cpu_data_master_read_data_valid_memory_s1 assignment, which is an e_assign
  assign registered_cpu_data_master_read_data_valid_memory_s1 = cpu_data_master_read_data_valid_memory_s1_shift_register_in;

  //memory_s1_arb_share_counter set values, which is an e_mux
  assign memory_s1_arb_share_set_values = 1;

  //memory_s1_non_bursting_master_requests mux, which is an e_mux
  assign memory_s1_non_bursting_master_requests = cpu_data_master_requests_memory_s1 |
    cpu_instruction_master_requests_memory_s1 |
    cpu_data_master_requests_memory_s1 |
    cpu_instruction_master_requests_memory_s1;

  //memory_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign memory_s1_any_bursting_master_saved_grant = 0;

  //memory_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign memory_s1_arb_share_counter_next_value = memory_s1_firsttransfer ? (memory_s1_arb_share_set_values - 1) : |memory_s1_arb_share_counter ? (memory_s1_arb_share_counter - 1) : 0;

  //memory_s1_allgrants all slave grants, which is an e_mux
  assign memory_s1_allgrants = |memory_s1_grant_vector |
    |memory_s1_grant_vector |
    |memory_s1_grant_vector |
    |memory_s1_grant_vector;

  //memory_s1_end_xfer assignment, which is an e_assign
  assign memory_s1_end_xfer = ~(memory_s1_waits_for_read | memory_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_memory_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_memory_s1 = memory_s1_end_xfer & (~memory_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //memory_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign memory_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_memory_s1 & memory_s1_allgrants) | (end_xfer_arb_share_counter_term_memory_s1 & ~memory_s1_non_bursting_master_requests);

  //memory_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          memory_s1_arb_share_counter <= 0;
      else if (memory_s1_arb_counter_enable)
          memory_s1_arb_share_counter <= memory_s1_arb_share_counter_next_value;
    end


  //memory_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          memory_s1_slavearbiterlockenable <= 0;
      else if ((|memory_s1_master_qreq_vector & end_xfer_arb_share_counter_term_memory_s1) | (end_xfer_arb_share_counter_term_memory_s1 & ~memory_s1_non_bursting_master_requests))
          memory_s1_slavearbiterlockenable <= |memory_s1_arb_share_counter_next_value;
    end


  //cpu/data_master memory/s1 arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = memory_s1_slavearbiterlockenable & cpu_data_master_continuerequest;

  //memory_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign memory_s1_slavearbiterlockenable2 = |memory_s1_arb_share_counter_next_value;

  //cpu/data_master memory/s1 arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = memory_s1_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //cpu/instruction_master memory/s1 arbiterlock, which is an e_assign
  assign cpu_instruction_master_arbiterlock = memory_s1_slavearbiterlockenable & cpu_instruction_master_continuerequest;

  //cpu/instruction_master memory/s1 arbiterlock2, which is an e_assign
  assign cpu_instruction_master_arbiterlock2 = memory_s1_slavearbiterlockenable2 & cpu_instruction_master_continuerequest;

  //cpu/instruction_master granted memory/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_instruction_master_granted_slave_memory_s1 <= 0;
      else if (1)
          last_cycle_cpu_instruction_master_granted_slave_memory_s1 <= cpu_instruction_master_saved_grant_memory_s1 ? 1 : (memory_s1_arbitration_holdoff_internal | ~cpu_instruction_master_requests_memory_s1) ? 0 : last_cycle_cpu_instruction_master_granted_slave_memory_s1;
    end


  //cpu_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_instruction_master_continuerequest = last_cycle_cpu_instruction_master_granted_slave_memory_s1 & cpu_instruction_master_requests_memory_s1;

  //memory_s1_any_continuerequest at least one master continues requesting, which is an e_mux
  assign memory_s1_any_continuerequest = cpu_instruction_master_continuerequest |
    cpu_data_master_continuerequest;

  assign cpu_data_master_qualified_request_memory_s1 = cpu_data_master_requests_memory_s1 & ~((cpu_data_master_read & ((|cpu_data_master_read_data_valid_memory_s1_shift_register))) | ((~cpu_data_master_waitrequest) & cpu_data_master_write) | cpu_instruction_master_arbiterlock);
  //cpu_data_master_read_data_valid_memory_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_data_master_read_data_valid_memory_s1_shift_register_in = cpu_data_master_granted_memory_s1 & cpu_data_master_read & ~memory_s1_waits_for_read & ~(|cpu_data_master_read_data_valid_memory_s1_shift_register);

  //shift register p1 cpu_data_master_read_data_valid_memory_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_data_master_read_data_valid_memory_s1_shift_register = {cpu_data_master_read_data_valid_memory_s1_shift_register, cpu_data_master_read_data_valid_memory_s1_shift_register_in};

  //cpu_data_master_read_data_valid_memory_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_data_valid_memory_s1_shift_register <= 0;
      else if (1)
          cpu_data_master_read_data_valid_memory_s1_shift_register <= p1_cpu_data_master_read_data_valid_memory_s1_shift_register;
    end


  //local readdatavalid cpu_data_master_read_data_valid_memory_s1, which is an e_mux
  assign cpu_data_master_read_data_valid_memory_s1 = cpu_data_master_read_data_valid_memory_s1_shift_register;

  //memory_s1_writedata mux, which is an e_mux
  assign memory_s1_writedata = cpu_data_master_writedata;

  //mux memory_s1_clken, which is an e_mux
  assign memory_s1_clken = 1'b1;

  assign cpu_instruction_master_requests_memory_s1 = (({cpu_instruction_master_address_to_slave[15] , 15'b0} == 16'h0) & (cpu_instruction_master_read)) & cpu_instruction_master_read;
  //cpu/data_master granted memory/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_data_master_granted_slave_memory_s1 <= 0;
      else if (1)
          last_cycle_cpu_data_master_granted_slave_memory_s1 <= cpu_data_master_saved_grant_memory_s1 ? 1 : (memory_s1_arbitration_holdoff_internal | ~cpu_data_master_requests_memory_s1) ? 0 : last_cycle_cpu_data_master_granted_slave_memory_s1;
    end


  //cpu_data_master_continuerequest continued request, which is an e_mux
  assign cpu_data_master_continuerequest = last_cycle_cpu_data_master_granted_slave_memory_s1 & cpu_data_master_requests_memory_s1;

  assign cpu_instruction_master_qualified_request_memory_s1 = cpu_instruction_master_requests_memory_s1 & ~((cpu_instruction_master_read & ((1 < cpu_instruction_master_latency_counter))) | cpu_data_master_arbiterlock);
  //cpu_instruction_master_read_data_valid_memory_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_instruction_master_read_data_valid_memory_s1_shift_register_in = cpu_instruction_master_granted_memory_s1 & cpu_instruction_master_read & ~memory_s1_waits_for_read;

  //shift register p1 cpu_instruction_master_read_data_valid_memory_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_instruction_master_read_data_valid_memory_s1_shift_register = {cpu_instruction_master_read_data_valid_memory_s1_shift_register, cpu_instruction_master_read_data_valid_memory_s1_shift_register_in};

  //cpu_instruction_master_read_data_valid_memory_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_data_valid_memory_s1_shift_register <= 0;
      else if (1)
          cpu_instruction_master_read_data_valid_memory_s1_shift_register <= p1_cpu_instruction_master_read_data_valid_memory_s1_shift_register;
    end


  //local readdatavalid cpu_instruction_master_read_data_valid_memory_s1, which is an e_mux
  assign cpu_instruction_master_read_data_valid_memory_s1 = cpu_instruction_master_read_data_valid_memory_s1_shift_register;

  //allow new arb cycle for memory/s1, which is an e_assign
  assign memory_s1_allow_new_arb_cycle = ~cpu_data_master_arbiterlock & ~cpu_instruction_master_arbiterlock;

  //cpu/instruction_master assignment into master qualified-requests vector for memory/s1, which is an e_assign
  assign memory_s1_master_qreq_vector[0] = cpu_instruction_master_qualified_request_memory_s1;

  //cpu/instruction_master grant memory/s1, which is an e_assign
  assign cpu_instruction_master_granted_memory_s1 = memory_s1_grant_vector[0];

  //cpu/instruction_master saved-grant memory/s1, which is an e_assign
  assign cpu_instruction_master_saved_grant_memory_s1 = memory_s1_arb_winner[0] && cpu_instruction_master_requests_memory_s1;

  //cpu/data_master assignment into master qualified-requests vector for memory/s1, which is an e_assign
  assign memory_s1_master_qreq_vector[1] = cpu_data_master_qualified_request_memory_s1;

  //cpu/data_master grant memory/s1, which is an e_assign
  assign cpu_data_master_granted_memory_s1 = memory_s1_grant_vector[1];

  //cpu/data_master saved-grant memory/s1, which is an e_assign
  assign cpu_data_master_saved_grant_memory_s1 = memory_s1_arb_winner[1] && cpu_data_master_requests_memory_s1;

  //memory/s1 chosen-master double-vector, which is an e_assign
  assign memory_s1_chosen_master_double_vector = {memory_s1_master_qreq_vector, memory_s1_master_qreq_vector} & ({~memory_s1_master_qreq_vector, ~memory_s1_master_qreq_vector} + memory_s1_arb_addend);

  //stable onehot encoding of arb winner
  assign memory_s1_arb_winner = (memory_s1_allow_new_arb_cycle & | memory_s1_grant_vector) ? memory_s1_grant_vector : memory_s1_saved_chosen_master_vector;

  //saved memory_s1_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          memory_s1_saved_chosen_master_vector <= 0;
      else if (memory_s1_allow_new_arb_cycle)
          memory_s1_saved_chosen_master_vector <= |memory_s1_grant_vector ? memory_s1_grant_vector : memory_s1_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign memory_s1_grant_vector = {(memory_s1_chosen_master_double_vector[1] | memory_s1_chosen_master_double_vector[3]),
    (memory_s1_chosen_master_double_vector[0] | memory_s1_chosen_master_double_vector[2])};

  //memory/s1 chosen master rotated left, which is an e_assign
  assign memory_s1_chosen_master_rot_left = (memory_s1_arb_winner << 1) ? (memory_s1_arb_winner << 1) : 1;

  //memory/s1's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          memory_s1_arb_addend <= 1;
      else if (|memory_s1_grant_vector)
          memory_s1_arb_addend <= memory_s1_end_xfer? memory_s1_chosen_master_rot_left : memory_s1_grant_vector;
    end


  assign memory_s1_chipselect = cpu_data_master_granted_memory_s1 | cpu_instruction_master_granted_memory_s1;
  //memory_s1_firsttransfer first transaction, which is an e_assign
  assign memory_s1_firsttransfer = memory_s1_begins_xfer ? memory_s1_unreg_firsttransfer : memory_s1_reg_firsttransfer;

  //memory_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign memory_s1_unreg_firsttransfer = ~(memory_s1_slavearbiterlockenable & memory_s1_any_continuerequest);

  //memory_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          memory_s1_reg_firsttransfer <= 1'b1;
      else if (memory_s1_begins_xfer)
          memory_s1_reg_firsttransfer <= memory_s1_unreg_firsttransfer;
    end


  //memory_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign memory_s1_beginbursttransfer_internal = memory_s1_begins_xfer;

  //memory_s1_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign memory_s1_arbitration_holdoff_internal = memory_s1_begins_xfer & memory_s1_firsttransfer;

  //memory_s1_write assignment, which is an e_mux
  assign memory_s1_write = cpu_data_master_granted_memory_s1 & cpu_data_master_write;

  assign shifted_address_to_memory_s1_from_cpu_data_master = cpu_data_master_address_to_slave;
  //memory_s1_address mux, which is an e_mux
  assign memory_s1_address = (cpu_data_master_granted_memory_s1)? (shifted_address_to_memory_s1_from_cpu_data_master >> 2) :
    (shifted_address_to_memory_s1_from_cpu_instruction_master >> 2);

  assign shifted_address_to_memory_s1_from_cpu_instruction_master = cpu_instruction_master_address_to_slave;
  //d1_memory_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_memory_s1_end_xfer <= 1;
      else if (1)
          d1_memory_s1_end_xfer <= memory_s1_end_xfer;
    end


  //memory_s1_waits_for_read in a cycle, which is an e_mux
  assign memory_s1_waits_for_read = memory_s1_in_a_read_cycle & 0;

  //memory_s1_in_a_read_cycle assignment, which is an e_assign
  assign memory_s1_in_a_read_cycle = (cpu_data_master_granted_memory_s1 & cpu_data_master_read) | (cpu_instruction_master_granted_memory_s1 & cpu_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = memory_s1_in_a_read_cycle;

  //memory_s1_waits_for_write in a cycle, which is an e_mux
  assign memory_s1_waits_for_write = memory_s1_in_a_write_cycle & 0;

  //memory_s1_in_a_write_cycle assignment, which is an e_assign
  assign memory_s1_in_a_write_cycle = cpu_data_master_granted_memory_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = memory_s1_in_a_write_cycle;

  assign wait_for_memory_s1_counter = 0;
  //memory_s1_byteenable byte enable port mux, which is an e_mux
  assign memory_s1_byteenable = (cpu_data_master_granted_memory_s1)? cpu_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //memory/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_granted_memory_s1 + cpu_instruction_master_granted_memory_s1 > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_saved_grant_memory_s1 + cpu_instruction_master_saved_grant_memory_s1 > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module sysid_control_slave_arbitrator (
                                        // inputs:
                                         clk,
                                         cpu_data_master_address_to_slave,
                                         cpu_data_master_read,
                                         cpu_data_master_write,
                                         reset_n,
                                         sysid_control_slave_readdata,

                                        // outputs:
                                         cpu_data_master_granted_sysid_control_slave,
                                         cpu_data_master_qualified_request_sysid_control_slave,
                                         cpu_data_master_read_data_valid_sysid_control_slave,
                                         cpu_data_master_requests_sysid_control_slave,
                                         d1_sysid_control_slave_end_xfer,
                                         sysid_control_slave_address,
                                         sysid_control_slave_readdata_from_sa
                                      )
;

  output           cpu_data_master_granted_sysid_control_slave;
  output           cpu_data_master_qualified_request_sysid_control_slave;
  output           cpu_data_master_read_data_valid_sysid_control_slave;
  output           cpu_data_master_requests_sysid_control_slave;
  output           d1_sysid_control_slave_end_xfer;
  output           sysid_control_slave_address;
  output  [ 31: 0] sysid_control_slave_readdata_from_sa;
  input            clk;
  input   [ 15: 0] cpu_data_master_address_to_slave;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input            reset_n;
  input   [ 31: 0] sysid_control_slave_readdata;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_sysid_control_slave;
  wire             cpu_data_master_qualified_request_sysid_control_slave;
  wire             cpu_data_master_read_data_valid_sysid_control_slave;
  wire             cpu_data_master_requests_sysid_control_slave;
  wire             cpu_data_master_saved_grant_sysid_control_slave;
  reg              d1_reasons_to_wait;
  reg              d1_sysid_control_slave_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_sysid_control_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 15: 0] shifted_address_to_sysid_control_slave_from_cpu_data_master;
  wire             sysid_control_slave_address;
  wire             sysid_control_slave_allgrants;
  wire             sysid_control_slave_allow_new_arb_cycle;
  wire             sysid_control_slave_any_bursting_master_saved_grant;
  wire             sysid_control_slave_any_continuerequest;
  wire             sysid_control_slave_arb_counter_enable;
  reg              sysid_control_slave_arb_share_counter;
  wire             sysid_control_slave_arb_share_counter_next_value;
  wire             sysid_control_slave_arb_share_set_values;
  wire             sysid_control_slave_beginbursttransfer_internal;
  wire             sysid_control_slave_begins_xfer;
  wire             sysid_control_slave_end_xfer;
  wire             sysid_control_slave_firsttransfer;
  wire             sysid_control_slave_grant_vector;
  wire             sysid_control_slave_in_a_read_cycle;
  wire             sysid_control_slave_in_a_write_cycle;
  wire             sysid_control_slave_master_qreq_vector;
  wire             sysid_control_slave_non_bursting_master_requests;
  wire    [ 31: 0] sysid_control_slave_readdata_from_sa;
  reg              sysid_control_slave_reg_firsttransfer;
  reg              sysid_control_slave_slavearbiterlockenable;
  wire             sysid_control_slave_slavearbiterlockenable2;
  wire             sysid_control_slave_unreg_firsttransfer;
  wire             sysid_control_slave_waits_for_read;
  wire             sysid_control_slave_waits_for_write;
  wire             wait_for_sysid_control_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~sysid_control_slave_end_xfer;
    end


  assign sysid_control_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_sysid_control_slave));
  //assign sysid_control_slave_readdata_from_sa = sysid_control_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign sysid_control_slave_readdata_from_sa = sysid_control_slave_readdata;

  assign cpu_data_master_requests_sysid_control_slave = (({cpu_data_master_address_to_slave[15 : 3] , 3'b0} == 16'h8820) & (cpu_data_master_read | cpu_data_master_write)) & cpu_data_master_read;
  //sysid_control_slave_arb_share_counter set values, which is an e_mux
  assign sysid_control_slave_arb_share_set_values = 1;

  //sysid_control_slave_non_bursting_master_requests mux, which is an e_mux
  assign sysid_control_slave_non_bursting_master_requests = cpu_data_master_requests_sysid_control_slave;

  //sysid_control_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign sysid_control_slave_any_bursting_master_saved_grant = 0;

  //sysid_control_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign sysid_control_slave_arb_share_counter_next_value = sysid_control_slave_firsttransfer ? (sysid_control_slave_arb_share_set_values - 1) : |sysid_control_slave_arb_share_counter ? (sysid_control_slave_arb_share_counter - 1) : 0;

  //sysid_control_slave_allgrants all slave grants, which is an e_mux
  assign sysid_control_slave_allgrants = |sysid_control_slave_grant_vector;

  //sysid_control_slave_end_xfer assignment, which is an e_assign
  assign sysid_control_slave_end_xfer = ~(sysid_control_slave_waits_for_read | sysid_control_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_sysid_control_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_sysid_control_slave = sysid_control_slave_end_xfer & (~sysid_control_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //sysid_control_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign sysid_control_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_sysid_control_slave & sysid_control_slave_allgrants) | (end_xfer_arb_share_counter_term_sysid_control_slave & ~sysid_control_slave_non_bursting_master_requests);

  //sysid_control_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_arb_share_counter <= 0;
      else if (sysid_control_slave_arb_counter_enable)
          sysid_control_slave_arb_share_counter <= sysid_control_slave_arb_share_counter_next_value;
    end


  //sysid_control_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_slavearbiterlockenable <= 0;
      else if ((|sysid_control_slave_master_qreq_vector & end_xfer_arb_share_counter_term_sysid_control_slave) | (end_xfer_arb_share_counter_term_sysid_control_slave & ~sysid_control_slave_non_bursting_master_requests))
          sysid_control_slave_slavearbiterlockenable <= |sysid_control_slave_arb_share_counter_next_value;
    end


  //cpu/data_master sysid/control_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = sysid_control_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //sysid_control_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign sysid_control_slave_slavearbiterlockenable2 = |sysid_control_slave_arb_share_counter_next_value;

  //cpu/data_master sysid/control_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = sysid_control_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //sysid_control_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign sysid_control_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_sysid_control_slave = cpu_data_master_requests_sysid_control_slave;
  //master is always granted when requested
  assign cpu_data_master_granted_sysid_control_slave = cpu_data_master_qualified_request_sysid_control_slave;

  //cpu/data_master saved-grant sysid/control_slave, which is an e_assign
  assign cpu_data_master_saved_grant_sysid_control_slave = cpu_data_master_requests_sysid_control_slave;

  //allow new arb cycle for sysid/control_slave, which is an e_assign
  assign sysid_control_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign sysid_control_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign sysid_control_slave_master_qreq_vector = 1;

  //sysid_control_slave_firsttransfer first transaction, which is an e_assign
  assign sysid_control_slave_firsttransfer = sysid_control_slave_begins_xfer ? sysid_control_slave_unreg_firsttransfer : sysid_control_slave_reg_firsttransfer;

  //sysid_control_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign sysid_control_slave_unreg_firsttransfer = ~(sysid_control_slave_slavearbiterlockenable & sysid_control_slave_any_continuerequest);

  //sysid_control_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_reg_firsttransfer <= 1'b1;
      else if (sysid_control_slave_begins_xfer)
          sysid_control_slave_reg_firsttransfer <= sysid_control_slave_unreg_firsttransfer;
    end


  //sysid_control_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign sysid_control_slave_beginbursttransfer_internal = sysid_control_slave_begins_xfer;

  assign shifted_address_to_sysid_control_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //sysid_control_slave_address mux, which is an e_mux
  assign sysid_control_slave_address = shifted_address_to_sysid_control_slave_from_cpu_data_master >> 2;

  //d1_sysid_control_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_sysid_control_slave_end_xfer <= 1;
      else if (1)
          d1_sysid_control_slave_end_xfer <= sysid_control_slave_end_xfer;
    end


  //sysid_control_slave_waits_for_read in a cycle, which is an e_mux
  assign sysid_control_slave_waits_for_read = sysid_control_slave_in_a_read_cycle & sysid_control_slave_begins_xfer;

  //sysid_control_slave_in_a_read_cycle assignment, which is an e_assign
  assign sysid_control_slave_in_a_read_cycle = cpu_data_master_granted_sysid_control_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = sysid_control_slave_in_a_read_cycle;

  //sysid_control_slave_waits_for_write in a cycle, which is an e_mux
  assign sysid_control_slave_waits_for_write = sysid_control_slave_in_a_write_cycle & 0;

  //sysid_control_slave_in_a_write_cycle assignment, which is an e_assign
  assign sysid_control_slave_in_a_write_cycle = cpu_data_master_granted_sysid_control_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = sysid_control_slave_in_a_write_cycle;

  assign wait_for_sysid_control_slave_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //sysid/control_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module system_reset_clk_domain_synch_module (
                                              // inputs:
                                               clk,
                                               data_in,
                                               reset_n,

                                              // outputs:
                                               data_out
                                            )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else if (1)
          data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else if (1)
          data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module system (
                // 1) global signals:
                 clk,
                 reset_n,

                // the_hex_display
                 hex0_from_the_hex_display,
                 hex1_from_the_hex_display,
                 hex2_from_the_hex_display,
                 hex3_from_the_hex_display,
                 hex4_from_the_hex_display,
                 hex5_from_the_hex_display,
                 hex6_from_the_hex_display,
                 hex7_from_the_hex_display,

                // the_ledr
                 out_port_from_the_ledr
              )
;

  output  [  6: 0] hex0_from_the_hex_display;
  output  [  6: 0] hex1_from_the_hex_display;
  output  [  6: 0] hex2_from_the_hex_display;
  output  [  6: 0] hex3_from_the_hex_display;
  output  [  6: 0] hex4_from_the_hex_display;
  output  [  6: 0] hex5_from_the_hex_display;
  output  [  6: 0] hex6_from_the_hex_display;
  output  [  6: 0] hex7_from_the_hex_display;
  output  [ 17: 0] out_port_from_the_ledr;
  input            clk;
  input            reset_n;

  wire             clk_reset_n;
  wire    [ 15: 0] cpu_data_master_address;
  wire    [ 15: 0] cpu_data_master_address_to_slave;
  wire    [  3: 0] cpu_data_master_byteenable;
  wire             cpu_data_master_debugaccess;
  wire             cpu_data_master_granted_cpu_jtag_debug_module;
  wire             cpu_data_master_granted_hex_display_avalon_slave;
  wire             cpu_data_master_granted_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_granted_ledr_s1;
  wire             cpu_data_master_granted_memory_s1;
  wire             cpu_data_master_granted_sysid_control_slave;
  wire    [ 31: 0] cpu_data_master_irq;
  wire             cpu_data_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_data_master_qualified_request_hex_display_avalon_slave;
  wire             cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_qualified_request_ledr_s1;
  wire             cpu_data_master_qualified_request_memory_s1;
  wire             cpu_data_master_qualified_request_sysid_control_slave;
  wire             cpu_data_master_read;
  wire             cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_data_master_read_data_valid_hex_display_avalon_slave;
  wire             cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_read_data_valid_ledr_s1;
  wire             cpu_data_master_read_data_valid_memory_s1;
  wire             cpu_data_master_read_data_valid_sysid_control_slave;
  wire    [ 31: 0] cpu_data_master_readdata;
  wire             cpu_data_master_requests_cpu_jtag_debug_module;
  wire             cpu_data_master_requests_hex_display_avalon_slave;
  wire             cpu_data_master_requests_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_requests_ledr_s1;
  wire             cpu_data_master_requests_memory_s1;
  wire             cpu_data_master_requests_sysid_control_slave;
  wire             cpu_data_master_waitrequest;
  wire             cpu_data_master_write;
  wire    [ 31: 0] cpu_data_master_writedata;
  wire    [ 15: 0] cpu_instruction_master_address;
  wire    [ 15: 0] cpu_instruction_master_address_to_slave;
  wire             cpu_instruction_master_granted_cpu_jtag_debug_module;
  wire             cpu_instruction_master_granted_memory_s1;
  wire             cpu_instruction_master_latency_counter;
  wire             cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_instruction_master_qualified_request_memory_s1;
  wire             cpu_instruction_master_read;
  wire             cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_instruction_master_read_data_valid_memory_s1;
  wire    [ 31: 0] cpu_instruction_master_readdata;
  wire             cpu_instruction_master_readdatavalid;
  wire             cpu_instruction_master_requests_cpu_jtag_debug_module;
  wire             cpu_instruction_master_requests_memory_s1;
  wire             cpu_instruction_master_waitrequest;
  wire    [  8: 0] cpu_jtag_debug_module_address;
  wire             cpu_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu_jtag_debug_module_byteenable;
  wire             cpu_jtag_debug_module_chipselect;
  wire             cpu_jtag_debug_module_debugaccess;
  wire    [ 31: 0] cpu_jtag_debug_module_readdata;
  wire    [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  wire             cpu_jtag_debug_module_reset;
  wire             cpu_jtag_debug_module_reset_n;
  wire             cpu_jtag_debug_module_resetrequest;
  wire             cpu_jtag_debug_module_resetrequest_from_sa;
  wire             cpu_jtag_debug_module_write;
  wire    [ 31: 0] cpu_jtag_debug_module_writedata;
  wire             d1_cpu_jtag_debug_module_end_xfer;
  wire             d1_hex_display_avalon_slave_end_xfer;
  wire             d1_jtag_uart_avalon_jtag_slave_end_xfer;
  wire             d1_ledr_s1_end_xfer;
  wire             d1_memory_s1_end_xfer;
  wire             d1_sysid_control_slave_end_xfer;
  wire    [  6: 0] hex0_from_the_hex_display;
  wire    [  6: 0] hex1_from_the_hex_display;
  wire    [  6: 0] hex2_from_the_hex_display;
  wire    [  6: 0] hex3_from_the_hex_display;
  wire    [  6: 0] hex4_from_the_hex_display;
  wire    [  6: 0] hex5_from_the_hex_display;
  wire    [  6: 0] hex6_from_the_hex_display;
  wire    [  6: 0] hex7_from_the_hex_display;
  wire             hex_display_avalon_slave_address;
  wire             hex_display_avalon_slave_reset_n;
  wire             hex_display_avalon_slave_write;
  wire    [ 31: 0] hex_display_avalon_slave_writedata;
  wire             jtag_uart_avalon_jtag_slave_address;
  wire             jtag_uart_avalon_jtag_slave_chipselect;
  wire             jtag_uart_avalon_jtag_slave_dataavailable;
  wire             jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  wire             jtag_uart_avalon_jtag_slave_irq;
  wire             jtag_uart_avalon_jtag_slave_irq_from_sa;
  wire             jtag_uart_avalon_jtag_slave_read_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_readdata;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  wire             jtag_uart_avalon_jtag_slave_readyfordata;
  wire             jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  wire             jtag_uart_avalon_jtag_slave_reset_n;
  wire             jtag_uart_avalon_jtag_slave_waitrequest;
  wire             jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  wire             jtag_uart_avalon_jtag_slave_write_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_writedata;
  wire    [  1: 0] ledr_s1_address;
  wire             ledr_s1_chipselect;
  wire             ledr_s1_reset_n;
  wire             ledr_s1_write_n;
  wire    [ 17: 0] ledr_s1_writedata;
  wire    [ 12: 0] memory_s1_address;
  wire    [  3: 0] memory_s1_byteenable;
  wire             memory_s1_chipselect;
  wire             memory_s1_clken;
  wire    [ 31: 0] memory_s1_readdata;
  wire    [ 31: 0] memory_s1_readdata_from_sa;
  wire             memory_s1_write;
  wire    [ 31: 0] memory_s1_writedata;
  wire    [ 17: 0] out_port_from_the_ledr;
  wire             registered_cpu_data_master_read_data_valid_memory_s1;
  wire             reset_n_sources;
  wire             sysid_control_slave_address;
  wire    [ 31: 0] sysid_control_slave_readdata;
  wire    [ 31: 0] sysid_control_slave_readdata_from_sa;
  cpu_jtag_debug_module_arbitrator the_cpu_jtag_debug_module
    (
      .clk                                                            (clk),
      .cpu_data_master_address_to_slave                               (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                     (cpu_data_master_byteenable),
      .cpu_data_master_debugaccess                                    (cpu_data_master_debugaccess),
      .cpu_data_master_granted_cpu_jtag_debug_module                  (cpu_data_master_granted_cpu_jtag_debug_module),
      .cpu_data_master_qualified_request_cpu_jtag_debug_module        (cpu_data_master_qualified_request_cpu_jtag_debug_module),
      .cpu_data_master_read                                           (cpu_data_master_read),
      .cpu_data_master_read_data_valid_cpu_jtag_debug_module          (cpu_data_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_data_master_requests_cpu_jtag_debug_module                 (cpu_data_master_requests_cpu_jtag_debug_module),
      .cpu_data_master_waitrequest                                    (cpu_data_master_waitrequest),
      .cpu_data_master_write                                          (cpu_data_master_write),
      .cpu_data_master_writedata                                      (cpu_data_master_writedata),
      .cpu_instruction_master_address_to_slave                        (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_granted_cpu_jtag_debug_module           (cpu_instruction_master_granted_cpu_jtag_debug_module),
      .cpu_instruction_master_latency_counter                         (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_cpu_jtag_debug_module (cpu_instruction_master_qualified_request_cpu_jtag_debug_module),
      .cpu_instruction_master_read                                    (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_cpu_jtag_debug_module   (cpu_instruction_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_instruction_master_requests_cpu_jtag_debug_module          (cpu_instruction_master_requests_cpu_jtag_debug_module),
      .cpu_jtag_debug_module_address                                  (cpu_jtag_debug_module_address),
      .cpu_jtag_debug_module_begintransfer                            (cpu_jtag_debug_module_begintransfer),
      .cpu_jtag_debug_module_byteenable                               (cpu_jtag_debug_module_byteenable),
      .cpu_jtag_debug_module_chipselect                               (cpu_jtag_debug_module_chipselect),
      .cpu_jtag_debug_module_debugaccess                              (cpu_jtag_debug_module_debugaccess),
      .cpu_jtag_debug_module_readdata                                 (cpu_jtag_debug_module_readdata),
      .cpu_jtag_debug_module_readdata_from_sa                         (cpu_jtag_debug_module_readdata_from_sa),
      .cpu_jtag_debug_module_reset                                    (cpu_jtag_debug_module_reset),
      .cpu_jtag_debug_module_reset_n                                  (cpu_jtag_debug_module_reset_n),
      .cpu_jtag_debug_module_resetrequest                             (cpu_jtag_debug_module_resetrequest),
      .cpu_jtag_debug_module_resetrequest_from_sa                     (cpu_jtag_debug_module_resetrequest_from_sa),
      .cpu_jtag_debug_module_write                                    (cpu_jtag_debug_module_write),
      .cpu_jtag_debug_module_writedata                                (cpu_jtag_debug_module_writedata),
      .d1_cpu_jtag_debug_module_end_xfer                              (d1_cpu_jtag_debug_module_end_xfer),
      .reset_n                                                        (clk_reset_n)
    );

  cpu_data_master_arbitrator the_cpu_data_master
    (
      .clk                                                           (clk),
      .cpu_data_master_address                                       (cpu_data_master_address),
      .cpu_data_master_address_to_slave                              (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_cpu_jtag_debug_module                 (cpu_data_master_granted_cpu_jtag_debug_module),
      .cpu_data_master_granted_hex_display_avalon_slave              (cpu_data_master_granted_hex_display_avalon_slave),
      .cpu_data_master_granted_jtag_uart_avalon_jtag_slave           (cpu_data_master_granted_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_granted_ledr_s1                               (cpu_data_master_granted_ledr_s1),
      .cpu_data_master_granted_memory_s1                             (cpu_data_master_granted_memory_s1),
      .cpu_data_master_granted_sysid_control_slave                   (cpu_data_master_granted_sysid_control_slave),
      .cpu_data_master_irq                                           (cpu_data_master_irq),
      .cpu_data_master_qualified_request_cpu_jtag_debug_module       (cpu_data_master_qualified_request_cpu_jtag_debug_module),
      .cpu_data_master_qualified_request_hex_display_avalon_slave    (cpu_data_master_qualified_request_hex_display_avalon_slave),
      .cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave (cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_qualified_request_ledr_s1                     (cpu_data_master_qualified_request_ledr_s1),
      .cpu_data_master_qualified_request_memory_s1                   (cpu_data_master_qualified_request_memory_s1),
      .cpu_data_master_qualified_request_sysid_control_slave         (cpu_data_master_qualified_request_sysid_control_slave),
      .cpu_data_master_read                                          (cpu_data_master_read),
      .cpu_data_master_read_data_valid_cpu_jtag_debug_module         (cpu_data_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_data_master_read_data_valid_hex_display_avalon_slave      (cpu_data_master_read_data_valid_hex_display_avalon_slave),
      .cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave   (cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_read_data_valid_ledr_s1                       (cpu_data_master_read_data_valid_ledr_s1),
      .cpu_data_master_read_data_valid_memory_s1                     (cpu_data_master_read_data_valid_memory_s1),
      .cpu_data_master_read_data_valid_sysid_control_slave           (cpu_data_master_read_data_valid_sysid_control_slave),
      .cpu_data_master_readdata                                      (cpu_data_master_readdata),
      .cpu_data_master_requests_cpu_jtag_debug_module                (cpu_data_master_requests_cpu_jtag_debug_module),
      .cpu_data_master_requests_hex_display_avalon_slave             (cpu_data_master_requests_hex_display_avalon_slave),
      .cpu_data_master_requests_jtag_uart_avalon_jtag_slave          (cpu_data_master_requests_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_requests_ledr_s1                              (cpu_data_master_requests_ledr_s1),
      .cpu_data_master_requests_memory_s1                            (cpu_data_master_requests_memory_s1),
      .cpu_data_master_requests_sysid_control_slave                  (cpu_data_master_requests_sysid_control_slave),
      .cpu_data_master_waitrequest                                   (cpu_data_master_waitrequest),
      .cpu_data_master_write                                         (cpu_data_master_write),
      .cpu_jtag_debug_module_readdata_from_sa                        (cpu_jtag_debug_module_readdata_from_sa),
      .d1_cpu_jtag_debug_module_end_xfer                             (d1_cpu_jtag_debug_module_end_xfer),
      .d1_hex_display_avalon_slave_end_xfer                          (d1_hex_display_avalon_slave_end_xfer),
      .d1_jtag_uart_avalon_jtag_slave_end_xfer                       (d1_jtag_uart_avalon_jtag_slave_end_xfer),
      .d1_ledr_s1_end_xfer                                           (d1_ledr_s1_end_xfer),
      .d1_memory_s1_end_xfer                                         (d1_memory_s1_end_xfer),
      .d1_sysid_control_slave_end_xfer                               (d1_sysid_control_slave_end_xfer),
      .jtag_uart_avalon_jtag_slave_irq_from_sa                       (jtag_uart_avalon_jtag_slave_irq_from_sa),
      .jtag_uart_avalon_jtag_slave_readdata_from_sa                  (jtag_uart_avalon_jtag_slave_readdata_from_sa),
      .jtag_uart_avalon_jtag_slave_waitrequest_from_sa               (jtag_uart_avalon_jtag_slave_waitrequest_from_sa),
      .memory_s1_readdata_from_sa                                    (memory_s1_readdata_from_sa),
      .registered_cpu_data_master_read_data_valid_memory_s1          (registered_cpu_data_master_read_data_valid_memory_s1),
      .reset_n                                                       (clk_reset_n),
      .sysid_control_slave_readdata_from_sa                          (sysid_control_slave_readdata_from_sa)
    );

  cpu_instruction_master_arbitrator the_cpu_instruction_master
    (
      .clk                                                            (clk),
      .cpu_instruction_master_address                                 (cpu_instruction_master_address),
      .cpu_instruction_master_address_to_slave                        (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_granted_cpu_jtag_debug_module           (cpu_instruction_master_granted_cpu_jtag_debug_module),
      .cpu_instruction_master_granted_memory_s1                       (cpu_instruction_master_granted_memory_s1),
      .cpu_instruction_master_latency_counter                         (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_cpu_jtag_debug_module (cpu_instruction_master_qualified_request_cpu_jtag_debug_module),
      .cpu_instruction_master_qualified_request_memory_s1             (cpu_instruction_master_qualified_request_memory_s1),
      .cpu_instruction_master_read                                    (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_cpu_jtag_debug_module   (cpu_instruction_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_instruction_master_read_data_valid_memory_s1               (cpu_instruction_master_read_data_valid_memory_s1),
      .cpu_instruction_master_readdata                                (cpu_instruction_master_readdata),
      .cpu_instruction_master_readdatavalid                           (cpu_instruction_master_readdatavalid),
      .cpu_instruction_master_requests_cpu_jtag_debug_module          (cpu_instruction_master_requests_cpu_jtag_debug_module),
      .cpu_instruction_master_requests_memory_s1                      (cpu_instruction_master_requests_memory_s1),
      .cpu_instruction_master_waitrequest                             (cpu_instruction_master_waitrequest),
      .cpu_jtag_debug_module_readdata_from_sa                         (cpu_jtag_debug_module_readdata_from_sa),
      .d1_cpu_jtag_debug_module_end_xfer                              (d1_cpu_jtag_debug_module_end_xfer),
      .d1_memory_s1_end_xfer                                          (d1_memory_s1_end_xfer),
      .memory_s1_readdata_from_sa                                     (memory_s1_readdata_from_sa),
      .reset_n                                                        (clk_reset_n)
    );

  cpu the_cpu
    (
      .clk                                   (clk),
      .d_address                             (cpu_data_master_address),
      .d_byteenable                          (cpu_data_master_byteenable),
      .d_irq                                 (cpu_data_master_irq),
      .d_read                                (cpu_data_master_read),
      .d_readdata                            (cpu_data_master_readdata),
      .d_waitrequest                         (cpu_data_master_waitrequest),
      .d_write                               (cpu_data_master_write),
      .d_writedata                           (cpu_data_master_writedata),
      .i_address                             (cpu_instruction_master_address),
      .i_read                                (cpu_instruction_master_read),
      .i_readdata                            (cpu_instruction_master_readdata),
      .i_readdatavalid                       (cpu_instruction_master_readdatavalid),
      .i_waitrequest                         (cpu_instruction_master_waitrequest),
      .jtag_debug_module_address             (cpu_jtag_debug_module_address),
      .jtag_debug_module_begintransfer       (cpu_jtag_debug_module_begintransfer),
      .jtag_debug_module_byteenable          (cpu_jtag_debug_module_byteenable),
      .jtag_debug_module_clk                 (clk),
      .jtag_debug_module_debugaccess         (cpu_jtag_debug_module_debugaccess),
      .jtag_debug_module_debugaccess_to_roms (cpu_data_master_debugaccess),
      .jtag_debug_module_readdata            (cpu_jtag_debug_module_readdata),
      .jtag_debug_module_reset               (cpu_jtag_debug_module_reset),
      .jtag_debug_module_resetrequest        (cpu_jtag_debug_module_resetrequest),
      .jtag_debug_module_select              (cpu_jtag_debug_module_chipselect),
      .jtag_debug_module_write               (cpu_jtag_debug_module_write),
      .jtag_debug_module_writedata           (cpu_jtag_debug_module_writedata),
      .reset_n                               (cpu_jtag_debug_module_reset_n)
    );

  hex_display_avalon_slave_arbitrator the_hex_display_avalon_slave
    (
      .clk                                                        (clk),
      .cpu_data_master_address_to_slave                           (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_hex_display_avalon_slave           (cpu_data_master_granted_hex_display_avalon_slave),
      .cpu_data_master_qualified_request_hex_display_avalon_slave (cpu_data_master_qualified_request_hex_display_avalon_slave),
      .cpu_data_master_read                                       (cpu_data_master_read),
      .cpu_data_master_read_data_valid_hex_display_avalon_slave   (cpu_data_master_read_data_valid_hex_display_avalon_slave),
      .cpu_data_master_requests_hex_display_avalon_slave          (cpu_data_master_requests_hex_display_avalon_slave),
      .cpu_data_master_waitrequest                                (cpu_data_master_waitrequest),
      .cpu_data_master_write                                      (cpu_data_master_write),
      .cpu_data_master_writedata                                  (cpu_data_master_writedata),
      .d1_hex_display_avalon_slave_end_xfer                       (d1_hex_display_avalon_slave_end_xfer),
      .hex_display_avalon_slave_address                           (hex_display_avalon_slave_address),
      .hex_display_avalon_slave_reset_n                           (hex_display_avalon_slave_reset_n),
      .hex_display_avalon_slave_write                             (hex_display_avalon_slave_write),
      .hex_display_avalon_slave_writedata                         (hex_display_avalon_slave_writedata),
      .reset_n                                                    (clk_reset_n)
    );

  hex_display the_hex_display
    (
      .address   (hex_display_avalon_slave_address),
      .clk       (clk),
      .hex0      (hex0_from_the_hex_display),
      .hex1      (hex1_from_the_hex_display),
      .hex2      (hex2_from_the_hex_display),
      .hex3      (hex3_from_the_hex_display),
      .hex4      (hex4_from_the_hex_display),
      .hex5      (hex5_from_the_hex_display),
      .hex6      (hex6_from_the_hex_display),
      .hex7      (hex7_from_the_hex_display),
      .reset_n   (hex_display_avalon_slave_reset_n),
      .write     (hex_display_avalon_slave_write),
      .writedata (hex_display_avalon_slave_writedata)
    );

  jtag_uart_avalon_jtag_slave_arbitrator the_jtag_uart_avalon_jtag_slave
    (
      .clk                                                           (clk),
      .cpu_data_master_address_to_slave                              (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_jtag_uart_avalon_jtag_slave           (cpu_data_master_granted_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave (cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_read                                          (cpu_data_master_read),
      .cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave   (cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_requests_jtag_uart_avalon_jtag_slave          (cpu_data_master_requests_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_waitrequest                                   (cpu_data_master_waitrequest),
      .cpu_data_master_write                                         (cpu_data_master_write),
      .cpu_data_master_writedata                                     (cpu_data_master_writedata),
      .d1_jtag_uart_avalon_jtag_slave_end_xfer                       (d1_jtag_uart_avalon_jtag_slave_end_xfer),
      .jtag_uart_avalon_jtag_slave_address                           (jtag_uart_avalon_jtag_slave_address),
      .jtag_uart_avalon_jtag_slave_chipselect                        (jtag_uart_avalon_jtag_slave_chipselect),
      .jtag_uart_avalon_jtag_slave_dataavailable                     (jtag_uart_avalon_jtag_slave_dataavailable),
      .jtag_uart_avalon_jtag_slave_dataavailable_from_sa             (jtag_uart_avalon_jtag_slave_dataavailable_from_sa),
      .jtag_uart_avalon_jtag_slave_irq                               (jtag_uart_avalon_jtag_slave_irq),
      .jtag_uart_avalon_jtag_slave_irq_from_sa                       (jtag_uart_avalon_jtag_slave_irq_from_sa),
      .jtag_uart_avalon_jtag_slave_read_n                            (jtag_uart_avalon_jtag_slave_read_n),
      .jtag_uart_avalon_jtag_slave_readdata                          (jtag_uart_avalon_jtag_slave_readdata),
      .jtag_uart_avalon_jtag_slave_readdata_from_sa                  (jtag_uart_avalon_jtag_slave_readdata_from_sa),
      .jtag_uart_avalon_jtag_slave_readyfordata                      (jtag_uart_avalon_jtag_slave_readyfordata),
      .jtag_uart_avalon_jtag_slave_readyfordata_from_sa              (jtag_uart_avalon_jtag_slave_readyfordata_from_sa),
      .jtag_uart_avalon_jtag_slave_reset_n                           (jtag_uart_avalon_jtag_slave_reset_n),
      .jtag_uart_avalon_jtag_slave_waitrequest                       (jtag_uart_avalon_jtag_slave_waitrequest),
      .jtag_uart_avalon_jtag_slave_waitrequest_from_sa               (jtag_uart_avalon_jtag_slave_waitrequest_from_sa),
      .jtag_uart_avalon_jtag_slave_write_n                           (jtag_uart_avalon_jtag_slave_write_n),
      .jtag_uart_avalon_jtag_slave_writedata                         (jtag_uart_avalon_jtag_slave_writedata),
      .reset_n                                                       (clk_reset_n)
    );

  jtag_uart the_jtag_uart
    (
      .av_address     (jtag_uart_avalon_jtag_slave_address),
      .av_chipselect  (jtag_uart_avalon_jtag_slave_chipselect),
      .av_irq         (jtag_uart_avalon_jtag_slave_irq),
      .av_read_n      (jtag_uart_avalon_jtag_slave_read_n),
      .av_readdata    (jtag_uart_avalon_jtag_slave_readdata),
      .av_waitrequest (jtag_uart_avalon_jtag_slave_waitrequest),
      .av_write_n     (jtag_uart_avalon_jtag_slave_write_n),
      .av_writedata   (jtag_uart_avalon_jtag_slave_writedata),
      .clk            (clk),
      .dataavailable  (jtag_uart_avalon_jtag_slave_dataavailable),
      .readyfordata   (jtag_uart_avalon_jtag_slave_readyfordata),
      .rst_n          (jtag_uart_avalon_jtag_slave_reset_n)
    );

  ledr_s1_arbitrator the_ledr_s1
    (
      .clk                                       (clk),
      .cpu_data_master_address_to_slave          (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_ledr_s1           (cpu_data_master_granted_ledr_s1),
      .cpu_data_master_qualified_request_ledr_s1 (cpu_data_master_qualified_request_ledr_s1),
      .cpu_data_master_read                      (cpu_data_master_read),
      .cpu_data_master_read_data_valid_ledr_s1   (cpu_data_master_read_data_valid_ledr_s1),
      .cpu_data_master_requests_ledr_s1          (cpu_data_master_requests_ledr_s1),
      .cpu_data_master_waitrequest               (cpu_data_master_waitrequest),
      .cpu_data_master_write                     (cpu_data_master_write),
      .cpu_data_master_writedata                 (cpu_data_master_writedata),
      .d1_ledr_s1_end_xfer                       (d1_ledr_s1_end_xfer),
      .ledr_s1_address                           (ledr_s1_address),
      .ledr_s1_chipselect                        (ledr_s1_chipselect),
      .ledr_s1_reset_n                           (ledr_s1_reset_n),
      .ledr_s1_write_n                           (ledr_s1_write_n),
      .ledr_s1_writedata                         (ledr_s1_writedata),
      .reset_n                                   (clk_reset_n)
    );

  ledr the_ledr
    (
      .address    (ledr_s1_address),
      .chipselect (ledr_s1_chipselect),
      .clk        (clk),
      .out_port   (out_port_from_the_ledr),
      .reset_n    (ledr_s1_reset_n),
      .write_n    (ledr_s1_write_n),
      .writedata  (ledr_s1_writedata)
    );

  memory_s1_arbitrator the_memory_s1
    (
      .clk                                                  (clk),
      .cpu_data_master_address_to_slave                     (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                           (cpu_data_master_byteenable),
      .cpu_data_master_granted_memory_s1                    (cpu_data_master_granted_memory_s1),
      .cpu_data_master_qualified_request_memory_s1          (cpu_data_master_qualified_request_memory_s1),
      .cpu_data_master_read                                 (cpu_data_master_read),
      .cpu_data_master_read_data_valid_memory_s1            (cpu_data_master_read_data_valid_memory_s1),
      .cpu_data_master_requests_memory_s1                   (cpu_data_master_requests_memory_s1),
      .cpu_data_master_waitrequest                          (cpu_data_master_waitrequest),
      .cpu_data_master_write                                (cpu_data_master_write),
      .cpu_data_master_writedata                            (cpu_data_master_writedata),
      .cpu_instruction_master_address_to_slave              (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_granted_memory_s1             (cpu_instruction_master_granted_memory_s1),
      .cpu_instruction_master_latency_counter               (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_memory_s1   (cpu_instruction_master_qualified_request_memory_s1),
      .cpu_instruction_master_read                          (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_memory_s1     (cpu_instruction_master_read_data_valid_memory_s1),
      .cpu_instruction_master_requests_memory_s1            (cpu_instruction_master_requests_memory_s1),
      .d1_memory_s1_end_xfer                                (d1_memory_s1_end_xfer),
      .memory_s1_address                                    (memory_s1_address),
      .memory_s1_byteenable                                 (memory_s1_byteenable),
      .memory_s1_chipselect                                 (memory_s1_chipselect),
      .memory_s1_clken                                      (memory_s1_clken),
      .memory_s1_readdata                                   (memory_s1_readdata),
      .memory_s1_readdata_from_sa                           (memory_s1_readdata_from_sa),
      .memory_s1_write                                      (memory_s1_write),
      .memory_s1_writedata                                  (memory_s1_writedata),
      .registered_cpu_data_master_read_data_valid_memory_s1 (registered_cpu_data_master_read_data_valid_memory_s1),
      .reset_n                                              (clk_reset_n)
    );

  memory the_memory
    (
      .address    (memory_s1_address),
      .byteenable (memory_s1_byteenable),
      .chipselect (memory_s1_chipselect),
      .clk        (clk),
      .clken      (memory_s1_clken),
      .readdata   (memory_s1_readdata),
      .write      (memory_s1_write),
      .writedata  (memory_s1_writedata)
    );

  sysid_control_slave_arbitrator the_sysid_control_slave
    (
      .clk                                                   (clk),
      .cpu_data_master_address_to_slave                      (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_sysid_control_slave           (cpu_data_master_granted_sysid_control_slave),
      .cpu_data_master_qualified_request_sysid_control_slave (cpu_data_master_qualified_request_sysid_control_slave),
      .cpu_data_master_read                                  (cpu_data_master_read),
      .cpu_data_master_read_data_valid_sysid_control_slave   (cpu_data_master_read_data_valid_sysid_control_slave),
      .cpu_data_master_requests_sysid_control_slave          (cpu_data_master_requests_sysid_control_slave),
      .cpu_data_master_write                                 (cpu_data_master_write),
      .d1_sysid_control_slave_end_xfer                       (d1_sysid_control_slave_end_xfer),
      .reset_n                                               (clk_reset_n),
      .sysid_control_slave_address                           (sysid_control_slave_address),
      .sysid_control_slave_readdata                          (sysid_control_slave_readdata),
      .sysid_control_slave_readdata_from_sa                  (sysid_control_slave_readdata_from_sa)
    );

  sysid the_sysid
    (
      .address  (sysid_control_slave_address),
      .readdata (sysid_control_slave_readdata)
    );

  //reset is asserted asynchronously and deasserted synchronously
  system_reset_clk_domain_synch_module system_reset_clk_domain_synch
    (
      .clk      (clk),
      .data_in  (1'b1),
      .data_out (clk_reset_n),
      .reset_n  (reset_n_sources)
    );

  //reset sources mux, which is an e_mux
  assign reset_n_sources = ~(~reset_n |
    0 |
    cpu_jtag_debug_module_resetrequest_from_sa |
    cpu_jtag_debug_module_resetrequest_from_sa);


endmodule


//synthesis translate_off



// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE

// AND HERE WILL BE PRESERVED </ALTERA_NOTE>


// If user logic components use Altsync_Ram with convert_hex2ver.dll,
// set USE_convert_hex2ver in the user comments section above

// `ifdef USE_convert_hex2ver
// `else
// `define NO_PLI 1
// `endif

`include "d:/altera/80/quartus/eda/sim_lib/altera_mf.v"
`include "d:/altera/80/quartus/eda/sim_lib/220model.v"
`include "d:/altera/80/quartus/eda/sim_lib/sgate.v"
`include "hex_display.v"
`include "hex_display_comp/hdl/hex_display_comp.v"
`include "hex_display_comp/hdl/number_to_hex_display.v"
`include "memory.v"
`include "cpu_test_bench.v"
`include "cpu_mult_cell.v"
`include "cpu_jtag_debug_module_tck.v"
`include "cpu_jtag_debug_module_sysclk.v"
`include "cpu_jtag_debug_module_wrapper.v"
`include "cpu.v"
`include "sysid.v"
`include "jtag_uart.v"
`include "ledr.v"

`timescale 1ns / 1ps

module test_bench 
;


  reg              clk;
  wire    [  6: 0] hex0_from_the_hex_display;
  wire    [  6: 0] hex1_from_the_hex_display;
  wire    [  6: 0] hex2_from_the_hex_display;
  wire    [  6: 0] hex3_from_the_hex_display;
  wire    [  6: 0] hex4_from_the_hex_display;
  wire    [  6: 0] hex5_from_the_hex_display;
  wire    [  6: 0] hex6_from_the_hex_display;
  wire    [  6: 0] hex7_from_the_hex_display;
  wire             jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  wire             jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  wire    [ 17: 0] out_port_from_the_ledr;
  reg              reset_n;


// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE
//  add your signals and additional architecture here
// AND HERE WILL BE PRESERVED </ALTERA_NOTE>

  //Set us up the Dut
  system DUT
    (
      .clk                       (clk),
      .hex0_from_the_hex_display (hex0_from_the_hex_display),
      .hex1_from_the_hex_display (hex1_from_the_hex_display),
      .hex2_from_the_hex_display (hex2_from_the_hex_display),
      .hex3_from_the_hex_display (hex3_from_the_hex_display),
      .hex4_from_the_hex_display (hex4_from_the_hex_display),
      .hex5_from_the_hex_display (hex5_from_the_hex_display),
      .hex6_from_the_hex_display (hex6_from_the_hex_display),
      .hex7_from_the_hex_display (hex7_from_the_hex_display),
      .out_port_from_the_ledr    (out_port_from_the_ledr),
      .reset_n                   (reset_n)
    );

  initial
    clk = 1'b0;
  always
    #10 clk <= ~clk;
  
  initial 
    begin
      reset_n <= 0;
      #200 reset_n <= 1;
    end

endmodule


//synthesis translate_on
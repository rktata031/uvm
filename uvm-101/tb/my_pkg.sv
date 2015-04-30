//-----------------------------------------------------------------------------
// Author         :  Admin 
// E-Mail         :  contact@chipverify.com
// Description    :  Package of verification components
//-----------------------------------------------------------------------------

`include "uvm_macros.svh"

package my_pkg;
   // If you don't use this, it'll complain that it doesn't recognize uvm components
   import uvm_pkg::*;

   //---------------------------------------------------------------------------------------------------------------------
   //                                                 my_env
   //---------------------------------------------------------------------------------------------------------------------
   class my_env extends uvm_env ;
   
      `uvm_component_utils (my_env)
   
      function new (string name, uvm_component parent);
         super.new (name, parent);
      endfunction : new
   
      function void build_phase (uvm_phase phase);
         super.build_phase (phase);
      endfunction : build_phase
   
      task run_phase (uvm_phase phase);
         phase.raise_objection (this);
         set_report_verbosity_level (UVM_MEDIUM);
         uvm_report_info      (get_name(), $sformatf ("Hello UVM ! Simulation has started."), `__FILE__, `__LINE__);
        
         #100
         `uvm_info   (get_name(), $sformatf("Finishing up with run_phase ... "), UVM_LOW)
         phase.drop_objection (this);
      endtask : run_phase
   
   endclass : my_env

endpackage

program basic_test;
  slave_env env;
  
  initial begin
    //Create env
    env = new();
    
    //Calling run of env
    env.run();
  end
endprogram 



class err_inject extends slave_driver;
  virtual task update_resp;
    $display("Injecting SLVERR");
    resp = SLVERR;
  endtask
endclass

program error_test;
  slave_env  env;
  err_inject err_driver;
  
  initial begin
    //Create env
    env = new();
    err_driver = new();
    
    env.slv_driver = err_driver;
    
    //Calling run of env
    env.run();
  end
endprogram 
/* This whole program are from call back function*/


class slave_env;
  slave_driver slv_driver;
  
  function new();
    slv_driver = new();
  endfunction
  
  //run task to call driver logic
  task run;
    
    repeat(2) begin //{
      slv_driver.send_response();
      $display("Slave generated response is %s",slv_driver.resp.name());
    end //}
  endtask
  
endclass



typedef enum {OKAY, EXOKAY, SLVERR, DECERR} resp_type;

class slave_driver;
  resp_type resp;
  
  //callback method
  virtual task update_resp; endtask
  
  //send response task
  task send_response;
    std::randomize(resp) with { resp == OKAY;};
    update_resp();
  endtask
endclass


`include "slave_driver.sv"
`include "slave_env.sv"
//`include "basic_test.sv"
`include "error_test.sv"

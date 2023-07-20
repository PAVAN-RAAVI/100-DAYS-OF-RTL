///Semaphore with one key
//Now by using 4 keys

module semaphore_ex;
  semaphore sema; //declaring semaphore sema
  
  initial begin
    sema=new(4); //creating sema with '4' key
    fork
      display(); //process-1
      display(); //process-2
    join
  end
  
  //display method
  task automatic display();
    sema.get(); //getting '4' key from sema
    $display($time,"\tCurent Simulation Time");
    #30;
    sema.put(4); //putting '4' key to sema
  endtask
endmodule

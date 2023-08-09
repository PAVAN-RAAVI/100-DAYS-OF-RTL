                               /*EVENTS*/


/*In the example below,
event triggering and waiting for the event trigger will happen at the same time.
wait();
intial it start from 0sec after triggering also it start with same time only
the operator is used to detects the event triggering.*/


module events_ex;
  event ev_1; //declaring event ev_1

  initial begin
    fork
      //process-1, triggers the event
      begin
         $display($time,"\tTriggering The Event");
        ->ev_1;
      end
   
      //process-2, wait for the event to trigger
      begin
        $display($time,"\tWaiting for the Event to trigger");
        wait(ev_1.triggered);
        $display($time,"\tEvent triggered");
      end
    join
  end
endmodule

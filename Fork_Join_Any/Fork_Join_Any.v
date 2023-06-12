module fork_join_any;
  initial begin
    $display("-----------------------------------------------------------");    
    fork
      //Process-1
      begin
        $display($time,"\tProcess-1 Started");
        #5;
        $display($time,"\tProcess-1 Finished");
      end

      //Process-2
      begin
        $display($time,"\tProcess-2 Started");
        #20;
        $display($time,"\tProcess-2 Finished");
      end
    join_any

    $display($time,"\tOutside Fork-Join");
    $display("-----------------------------------------------------------");
  end
endmodule
Output:
/*Note:In this Fork_join_any first it execute theprocess1 statement with 0ns 
and then it will exectue the process2 first statement-1 with 0ns and after
that it will finsihed the process1 statement and it will out of  the loop
 and execute the outer statement  and final it reached to the process 2 statement.*/

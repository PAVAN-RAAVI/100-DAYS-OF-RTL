module queues_array;
  //declaration
  bit    [31:0] queue_1[$]; 
  string 		queue_2[$]; 
  
  initial begin
    //Queue Initialization:
    queue_1 = {0,1,2,3};
    queue_2 = {"ECE","DESIGN","VERIFICATION"};
    
    //Size-Method
    $display("----- Queue_1 size is %0d  -----",queue_1.size());
    foreach(queue_1[i]) $display("\tqueue_1[%0d] = %0d",i,queue_1[i]);    
    $display("----- Queue_2 size is %0d  -----",queue_2.size());
    foreach(queue_2[i]) $display("\tqueue_2[%0d] = %0s",i,queue_2[i]);
    
    //Insert-Method
    queue_2.insert(1,"VLSI");
    $display("----- Queue_2 size  after inserting Orange is %0d  -----",queue_2.size());
    foreach(queue_2[i]) $display("\tqueue_2[%0d] = %0s",i,queue_2[i]);
    
    //Delete Method
    queue_2.delete(3);
    $display("----- Queue_2 size after Delete is %0d  -----",queue_2.size());
    foreach(queue_2[i])$display("\tqueue_2[%0d] = %0s",i,queue_2[i]);
  end

endmodule


//////////////Push() and pop() of the queue//////////////////

module queues_array;
  //declaration
  bit    [31:0] queue_1[$]; 
  int    lvar;  
  
  initial begin
    //Queue Initialization:
    queue_1 = {0,1,2,3};
    
    //Size-Method
    $display("\tQueue_1 size is %0d",queue_1.size());   
    
    //Push_front Method
    queue_1.push_front(22);
    $display("\tQueue_1 size after push_front is %0d",queue_1.size());
    
    //Push_back  Method
    queue_1.push_back(44);
    $display("\tQueue_1 size after push_back is %0d",queue_1.size());

 //Pop_front Method
 lvar = queue_1.pop_front();
    $display("\tQueue_1 pop_front value is %0d",lvar);

 //Pop_back Method
 lvar = queue_1.pop_back();
    $display("\tQueue_1 pop_back value is %0d",lvar);
  end
endmodule

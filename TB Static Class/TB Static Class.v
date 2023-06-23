//Declaration of Static function
class packet;
  //byte packet_id;//Now here static method are trying to access non-static
 // varaiable it leads to compliation erroe
    
  //static property to keep track of number of pkt's created
  static byte no_of_pkts_created;
  
  //constructor
  function new();
    //incrementing pkt count on creating an object
    no_of_pkts_created++;
  endfunction
    
  //Static method to display class prperties
  static function void display_packets_created();
    $display("--------------------------------------");
    $display("\t %0d packets created.",no_of_pkts_created);
     //$display("\t Packet Id is %0d",packet_id);
    $display("--------------------------------------");
  endfunction 
endclass

module static_properties;
  packet pkt[3];

  initial begin
    foreach(pkt[i]) begin
      pkt[i] = new();
    end
    pkt[0].display_packets_created();
  end  
endmodule
///////////////////////Now here static method are trying to access non-static varaiable it leads to compliation error////////////////////////////
//Declaration of Static function
class packet;
  byte packet_id;
    
  //static property to keep track of number of pkt's created
  static byte no_of_pkts_created;
  
  //constructor
  function new();
    //incrementing pkt count on creating an object
    no_of_pkts_created++;
  endfunction
    
  //Static method to display class prperties
  static function void display_packets_created();
    $display("--------------------------------------");
    $display("\t %0d packets created.",no_of_pkts_created);
     $display("\t Packet Id is %0d",packet_id);
    $display("--------------------------------------");
  endfunction 
endclass

module static_properties;
  packet pkt[3];

  initial begin
    foreach(pkt[i]) begin
      pkt[i] = new();
    end
    pkt[0].display_packets_created();
  end  
endmodule

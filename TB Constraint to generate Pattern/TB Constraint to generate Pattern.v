/* Write a constraint to generate a pattern 0102030405*/
 /*We need to generator the seq as 0102030405*/

class packet;//class define
  rand int a[];//dynamic array decalred
  //constraint declare
  constraint c1{a.size()inside{[10:20]};}
               
  constraint c2
{
    foreach(a[i])
  {
    if(i%2==1)
      {
        a[i]==(i+1)/2; //Even place it should be a zero
      }
        else
        {
          a[i]==0;//odd palce it should be a value
        }
      
     }
}
 endclass
        module test;
           initial begin
             packet pkt=new;
             pkt.randomize();
             $display("a=%p",pkt.a);
           end
         endmodule
          

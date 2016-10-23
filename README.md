# bayes-shreyas
This code implements the Bayes detection theory for a Binary Communications Channel. 

Procedure to implement the code:


Step 1: Save the files *Bayes_binary_channel_detection.m* and *surfzlim.m* in the **same** folder.


Step 2: Open *surfzlim.m* in a suitable editor and modify the following variables :-

  p0  - The prior probability of a '0' being transmitted
  
  p1  - The prior probability of a '1' being transmitted i.e., 1 - p0 
  
  p00 - Probability of a '0' transmitted is interpreted as a '0' at the receiver 
  
  p01 - Probability of a '0' transmitted is interpreted as a '1' at the receiver
  
  p11 - Probability of a '1' transmitted is interpreted as a '1' at the receiver
  
  p10 - Probability of a '1' transmitted is interpreted as a '0' at the receiver
  
  c00 and c11 - Conditional costs for a correct prediction are assumed to be 0
  
  c10 and c01 - Conditional Costs for an incorrect prediction are assumed to be 1
  

Step 3: Open the *Bayes_binary_channel_detection.m* file and run it in matlab (tested on R2015a). You will not be able to run *surfzlim.m*.
      

Step 4: There seems to be an issue with the scrollbar not appearing when the window is minimized. Users are requested to **maximize** the window and click on any of the arrows of the scroll bar to call the function *surfzlim.m*.
    	

Step 5: Users will notice that for a fixed p0 and p11 value, the minimum cost varies with different p00. Depending upon the p00 value we can determine which decision rule gives the minimum Bayes Cost.

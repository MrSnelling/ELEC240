# Moore Mealy Equivalents

This is a simple state machine for bit pattern detection, where both Moore and Mealy implementations are compared and shown to be equivilent.

You can open the Quartus project in this folder. The top level entity implements a component `OneZeroOne` which is defined in the file [OneZeroOne.vhd](./OneZeroOne.vhd). This is a state machine written in VHDL that detects the sequence 1 - 0 - 1. 

The Moore machine state diagram is as follows:

![alt text](https://github.com/UniversityOfPlymouth-Electronics/ELEC240/blob/master/Examples/VHDL/MooreMealyEquivalents/img/fsm_moore.png "FSM for the Moore Machine")

This can be converted to a Mealy Machine. Furthermore, state minimisation can be performed (see lecture).

![alt text](https://github.com/UniversityOfPlymouth-Electronics/ELEC240/blob/master/Examples/VHDL/MooreMealyEquivalents/img/fsm_mealy.png "FSM for the Mealy Machine")

Look carefully at the [OneZeroOne.vhd](./OneZeroOne.vhd) file. You will there is a single entity, and two architectures. These architectures model the two finite state diagrams above.

A difficulty with Quartus schematics is that you place a component with the last defined architecture. Therefore, this example is best examined using ModelSim and a VHDL test bench.

* Ensure that ModelSim is configured correctly.
  * See section below
  * Build the project
* Open ModelSim from Quartus by selecting Tools->Run Simulation Tool->RTL Simulation

This should open ModelSim (Altera Starter Edition) and run the test bench file [OneZeroOne_tb.vhd](./OneZeroOne_tb.vhd). 

* Study this file carefully.
* When the simulator has finished running, a wave window should be visible. Zoom out (to select the Wave window and press F) to see the results.

The results should be equivalent to the following:

![alt text](https://github.com/UniversityOfPlymouth-Electronics/ELEC240/blob/master/Examples/VHDL/MooreMealyEquivalents/img/results.png "Test results for both Moore and Mealy Machines")
 
 You might have different colours in your waveform.
  
 # Setting up Quartus to use ModelSim ASE
 For Quartus to be able to utilise ModelSim ASE for simulation, you must ensure it knows where it is stored on your computer.
 
  * Tools->Options->EDA Tool Options
  * Ensure the ModelSim-Altera path is set correctly (see below)
 
![alt text](https://github.com/UniversityOfPlymouth-Electronics/ELEC240/blob/master/Examples/VHDL/img/EDA_Tool_Options_Windows.PNG "Example Settings for the Windows version of Quartus")


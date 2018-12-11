# Stay-Frosty-Final-Project
Our MATLAB/Arduino Final Project using a PIR Sensor and a relay to control a fan

## Problem Statement
The objective of this experiment is to use a PIR motion sensor to control a fan as a on/off switch. 
The PIR sensor will be used to detect if there is someone in front of the fan where then the raw sensor 
data will be transferred to the MATLAB® program. If the sensor data passes a certain threshold 
the fan will be activated and then controlled by the user if they decide to keep than fan on or 
switch it off using MATLAB®

## Hardware setup

### Bill of Materials

|Part Name|Purpose|Item Name|URL|Price|
|---|---|---|---|---|
|Arduino Uno|Runs our program|SparkFun RedBoard|[Link](https://www.sparkfun.com/products/13975)|$19.95|
|Breadboard|Building circuit|Breadboard - Self-Adhesive|[Link](https://www.sparkfun.com/products/12002)|$4.95|
|Enclosure|Enclosure for Relay|Sparkfun Big Red Box|[Link](https://www.sparkfun.com/products/11366)|$8.95|
|PIR Sensor|Input sensor for program|PIR (motion) sensor|[Link](https://www.adafruit.com/product/189)|$9.95|
|Relay|Lets us power high voltage devices with low voltage Arduino|SparkFun Beefcake Relay Control Kit|[Link](https://www.sparkfun.com/products/13815)|$8.95|
|Fan|Output of program|Received from Peter Kazarinoff|Received from Peter Kazarinoff|Received from Peter Kazarinoff|
|Jumper Cables|Connects components|Jumper Wires Standard 7" M/M - 30 AWG|[Link](https://www.sparkfun.com/products/11026)|$1.95|
|Extension Cable|Connects to high voltage end of relay to plug into wall socket and fan|Received from PCC Maker Lab|Received from PCC Maker Lab|Received from PCC Maker Lab|
|Nylon Dome Strain Relief Connectors|Helps prevent component damage|Received from PCC Maker Lab|Received from PCC Maker Lab|Received from PCC Maker Lab|
|Mini-USB cable|Uploads program to Arduino|SparkFun USB Mini-B Cable - 6 Foot|[Link](https://www.sparkfun.com/products/11301)|$3.95|
|Standoffs/Screws|Lifts relay off floor of enclosure|Received from PCC Maker Lab|Received from PCC Maker Lab|Received from PCC Maker Lab|
|Wire Nuts|Connects wires together and prevents them from contacting other elements/wires|Received from PCC Maker Lab|Received from PCC Maker Lab|Received from PCC Maker Lab|

### Hardware Schematic (Made with Fritzing)

![Alt-text](/images/Fritizing_Stay_Frosty.jpg "Alt-title")

### Hookup Guide

|Part|Pin|Connector|Pin|Part|
|---|---|---|---|---|
|PIR Sensor|13|Jumper Wire|13|Arduino Uno|
|Relay|8|Jumper Wire|8|Arduino Uno|

### Assembly Instructions

**Step 1:** Build the Beefcake relay. Follow instructions on [Sparkfun.com](https://learn.sparkfun.com/tutorials/beefcake-relay-control-hookup-guide?_ga=2.126438346.678827907.1495830299-657127905.1456517273)

**Step 2:** Drill 3 holes into relay enclosure. 2 Large circular holes on each side to insert strain relief connectors, and 1 small hole so that the jumper cables have a point of exit. (Extra hole in image is unnecessary, the enclosure we were using was pre-drilled)

![Alt-text](/images/Holes.jpg "Alt-title")

**Step 3:** Add standoffs onto the bottom of the enclosure, so that the relay will be raised off the ground. Simply add a dab of super glue to the bottom and place them where they need to be, so that the 4 standoffs line up with the 4 holes on the relay.

![Alt-text](/images/Standoffs.jpg "Alt-title")

**Step 4:** Cut the extension cable so that the male end is much longer than the female end. The                      female end should be around a foot long and the male end should be the remaining amount. After that use a box cutter or another type of knife to remove about 4 inches of the rubber cover, exposing 3 wires on each end, black, white, and green. Finally, strip off about half an inch of the protective covering off each wire using wire strippers.

**Step 5:** Slip the strain relief connectors on each end of the extension cables, and connect them to the enclosure. Secure the strain relief connectors onto the enclosure. After that, using wire nuts, connect the white (neutral) wires together, and the green (ground) wires together.

![Alt-text](/images/Strain_Relief.jpg "Alt-title")
![Alt-text](/images/Wire_Nuts.jpg "Alt-title")

**Step 6:** Connect the black (hot) wires into the relay. The black from the male plug should go in the common (COM) terminal, and the black from the female plug should go in the normally open (NO) terminal. Once each wire is in, secure the connection by tightening the screws on the terminal.

![Alt-text](/images/Hot_Wires.jpg "Alt-title")

**Step 7:** Using the standoff screws, fasten the relay onto the enclosure into the standoffs we installed earlier. The low voltage end should be facing the hole that was drilled earlier, so that the terminals are fully accessible through the hole. Once all the wires are in and the relay is secured, tighten the strain relief connectors while allowing a little bit of slack. 

**Step 8:** Connect jumper wires to the low voltage end. Black into ground (GND), yellow into control (CTRL), and red into power (5V). Secure the connections by tightening the screws. Now that the relay is complete, place the top of the enclosure back on and secure it with the screws it comes with.

![Alt-text](/images/Jumper_cables.jpg "Alt-title")

**Step 9:** Using a breadboard and the Arduino Uno, build the circuit specified by the Fritzing diagram, with the relay connected to digital pin 8 and the PIR sensor connected to digital pin 13. 

**Step 10:** Plug fan into extension cable. After that, plug extension cable into a wall socket, and connect the mini-USB cable to your computer/laptop. The setup is now complete and you can now use the program.

### Final Result

![Alt-text](/images/Wiring.jpg "Alt-title")
![Alt-text](/images/Fan.jpg "Alt-title")

## Code

### Arduino Code

The [stay_frosty.ino](stay_frosty.ino) sketch was uploaded on the Arduino using the Arduino IDE.

### MATLAB Code

The [stay_frosty.m](stay_frosty.m) script was run in MATLAB.

## Results

![Alt-text](/images/Final_Result.jpg "Alt-title")

## Future Work
Another group of students could take this build and use it for other commonly used house appliances, such as a toaster, television, shower, etc.. What this would do is that all the projects could be brought together and be implemented into a smart home. Where a smart home would detect motion and turn on specific appliances throughout the day. An example of this would be if there is motion detected in the bedroom early in the morning then the toaster will turn on to toast some bread, the shower may turn on so warm steamy water is ready for the user to get into and so on. The motion detection will greatly help with conserving energy for future smart homes, where appliances will turn off after certain time if they’re no longer needed. 

## License

The FreeBSD Copyright
Copyright 1992-2018 The FreeBSD Project.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are those of the authors and should not be interpreted as representing official policies, either expressed or implied, of the FreeBSD Project.


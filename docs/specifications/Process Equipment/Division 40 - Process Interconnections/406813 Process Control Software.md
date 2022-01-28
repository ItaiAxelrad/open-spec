---
title: Process Control Software
section: '406813'
divNumb: 40
divName: Process Interconnections
subgroup: Process Equipment
tags: ['Process', 'Equipment', 'Interconnections', 'Control', 'HMI', 'Software']
navigation:
  key: Process Control (HMI) Software
  parent: Process Interconnections
  order: 6813.0
---

## General

1. Summary
   1. Work under this section shall include computer network and HMI hardware requirements. This includes but is not necessarily limited to:
	2. Ethernet switches.
	3. Software.
	4. Accessories and maintenance materials.
1. Related Specification Sections include:
	5. Section 40 50 00, Instrumentation and Process Controls: Basic Requirements.
2. Design Requirements:
	6. Owner shall supply and install the HMI equipment and develop the Graphical screens.
	7. Contractor shall supply specific equipment/software as listed herein and coordinate data translation and general control requirements to the Owner through process meetings.
	8. Data to be made available will represent the data requirements stated on the P&IDs as well as that data which is not on the P&ID but is listed in the Control Strategy Narrative. 
	9. **Quality Assurance
3. Work shall be per:
	10. Institute of Electrical and Electronics Engineers, Inc. (IEEE):
		1. 802.3, Information Technology - Local and Metropolitan Area Networks - Part 3: Carrier Sense Multiple Access with Collision Detection (CSMA/CD) Access Method and Physical Layer Specifications.
			1. 802.3u: IEEE Standards for Local and Metropolitan Area Networks: Supplement to Carrier Sense Multiple Access with Collision Detection (CSMA/CD) Access Method and Physical Layer Specifications Media Access Control (MAC) Parameters, Physical Layer, Medium Attachment Units, and Repeater for 100 Mb/s Operation, Type 100BASE-T.
			2. 802.3x: IEEE Standards for Local and Metropolitan Area Networks: Specification for 802.3 Full Duplex Operation.
	11. **Submittals
4. See Specification Section 01 33 00 for requirements for the mechanics and administration of the submittal process.
5. Shop drawings
	12. Shop drawings shall include product technical data including:
		1. Acknowledgement that products submitted meet requirements of the aforementioned standards. 
		2. Manufacturer’s installation instructions.
6. Operation and Maintenance Manuals. 

## Product
7. 2.1 Ethernet Switches
   1. Managed Ethernet Switches:
	13. Design and fabrication:
		1. Support Ethernet 100 Mbps.
		2. Support SNMP and Web based management.
		3. Rapid Spanning Tree Protocol.
		4. IGMP (Internet Group Management Protocol) support for IP multicast filtering to enable switches to automatically route messages only to appropriate ports.
		5. Backbone ports for connection to multimode fiber via type ST connectors.
			1. Quantity as required for communication with devices as depicted in the Contract Documents.
		6. 10/100 Mbps twisted pair ports (RJ45) as required for communication with devices as depicted in the Contract Documents.
			1. Unless otherwise noted, provide at least two (2) spare 10/100 Mbps port (twisted pair) at each Ethernet switch.
		7. Check all received data for validity.
			1. Discard invalid and defective frames or fragments.
		8. Monitor connected TP/TX line segments for short-circuit or interrupt using regular link test pulses in accordance with IEEE 802.3.
		9. Monitor attached fiber optic lines for open circuit conditions in accordance with IEEE 802.3.
		10. As applicable, meet requirements of IEEE 802.3.
		11. Power switch with 24 Vdc power input.
		12. Provide LED status lights to indicate:
			1. Power: Supply voltage present.
			2. Fault.
			3. Port status.
		13. Environmental rating:
			1. Operating temperature: 32 Deg F to 131 Deg F.
			2. Humidity: 95 percent relative humidity, non-condensing.
	14. **Software
8. Provide all software and associated programming/configuration required to meet performance requirements of the Contract Documents.
	15. At substantial completion of the Project:
		1. Turn current licenses for all software over to the Owner in the Owner's name and install the latest version, upgrade or service pack for all software.
9. Programming Software:
	16. Acceptable Manufacturer:
		1. Rockwell RSLogix 5000.
	17. Features:
		1. Compatible with Allen Bradley PLC.

## Execution

1. 3.1 Installation
   1. Install based on manufacturer’s recommended installation instructions. 

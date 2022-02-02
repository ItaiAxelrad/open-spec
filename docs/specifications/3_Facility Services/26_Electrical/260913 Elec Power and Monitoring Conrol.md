---
title: Elec Power and Monitoring Conrol
section: '260913'
divNumb: 26
divName: Electrical
subgroup: Facility Services
tags: ['Facility', 'Services', 'Electrical', 'Elec', 'Power', 'Monitoring', 'Conrol']
---

## General

1. RELATED DOCUMENTS
   1. Drawings and general provisions of the Contract, including General and Supplementary Conditions and Division 1 Specification Sections, apply to this Section.
1. SUMMARY
   1. This Section includes:
      1. Provide a complete system capable of monitoring demand, consumption and power quality at designated points in the power distribution system.
   1. Provide a system that is compatible in all respects, including equipment and software, with the General Electric PQM monitoring system presently in use on the Owner campus.
   1. Include remote devices for monitoring and protective functions; device communication interface hardware; inter-communication wiring; analysis software; and accessories as specified and indicated.

## General

 Electric (GE) Multilin instruments shall be an acceptable alternative to model PQM instruments.
1. SYSTEM DESCRIPTION
   1. System Overview
   1. Provide a system that can accommodate the devices indicated and allow for expansion of twenty-five percent. Provide all interface cards, device drivers and other hardware and software required to accommodate the communications system expansion.
   1. Provide a complete power distribution system monitoring and control system, to integrate the following functions and features:
      1. Main Distribution Switchboard (MDS) 
   1. Distribution panels serving lighting and HVAC equipment
   1. Communications system hardware and software
   1. Remote monitoring and control computer and related software located in SERF Energy Center
1. SUBMITTALS
   1. Product Data:
      1. Submit manufacturer's technical product data for the specified and indicated monitoring and control components.
   1. Shop Drawings 
   1. Submit wiring diagrams of monitoring and control circuits.
   1. Submit an overall system functional block diagram including devices, conduit and wire, connections to the existing computer.
1. WARRANTY
   1. Provide a warranty which includes the following:
      1. One year of free software updates.
   1. One year of toll-free telephone technical support by factory-trained personnel.
   1. Replacement of all defective hardware and software furnished with this system under this contract for one year after date of acceptance.
1. Retain one or both subparagraphs below. Retain first if work includes only local metering and monitoring, without connections to data transmission network. Retain both if monitoring and control are connected to a LAN.
1. PRODUCTS
1. LOCAL ELECTRONIC METERING UNIT*   1. Main Distribution System (MDS) Metering
   1. Provide local metering unit on each assembly, to directly display the following metered values for each selected feeder as shown on the drawings.
   1. Amperes:
      1. phase A, B, C at 1 percent accuracy. 
   1. Volts:
      1. phase A-B, B-C, C-A, (A-N, B-N, C-N) within 1 percent accuracy. 
   1. Present demand:
      1. kW or MW and kVAR or MVAR within 2 percent accuracy.
   1. Peak demand:
      1. kW or MW within 2 percent accuracy. 
   1. Cumulative energy:
      1. kWh or MWh within 2 percent accuracy.
   1. Power factor:
      1. within 4 percent accuracy.
   1. Provide monitoring device which includes the following features:
      1. Suitable for semi-flush panel mounting.
   1. Front-panel accessible user input and display control switches.
   1. Screw terminals for connection to voltage and current transformer outputs.
   1. Field selection of transformer ratios.
   1. Provide the following protective functions which actuate N.O./N.C. contacts rated 10 amperes at 120/240 volts, for "alarm" and "trip" action:
      1. Phase loss:
         1. less than 50 percent of nominal line voltage or less than 6 percent of largest phase current.
   1. Voltage:
      1. less than 90 percent of minimal line voltage or greater than 110 percent of nominal line voltage.
   1. Delay:
      1. adjustable 0 to 8-second delay on above conditions before "alarm" and "trip" actions.
   1. Data communication:
      1. Provide communication ability for transmitting all data including trip data to the Power Monitoring and Control System, as specified.
   1. Potential transformer
   1. Per ANSI C57.13, 120-volt secondary, integral to electronic metering unit, burden and accuracy as required for connected metering and relay devices.
1. LOCAL ELECTRONIC ASSEMBLY MONITORING DEVICE
   1. Main Distribution System (MDS) Monitoring
   1. Provide a microprocessor-based, self-contained device suitable for door mounting and containing communication ability for transmitting all data of all secondary unit substation and standby transformer mains, ties, and feeder breakers, including "spares", "spaces" and future breakers.
   1. Provide a device which complies with the following requirements:
      1. Provide separate "step-up" and "step-down" buttons to select specific breakers by means of a breaker address in a display window. Locally display the following parameters for each breaker.
   1. Breaker status:
      1. "Tripped", "Open", "Closed" or "No Response".
   1. Cause of trip for tripped breakers.
   1. Current in each phase and ground.
   1. Transmit to the Power Monitoring and Control System the following parameters in addition to the locally displayed parameters:
      1. Circuit breaker type.
   1. Current rating of circuit breaker trip rating plug.
   1. Power in megawatts, Peak power demand, Energy in Megawatt hours.
   1. Breaker trip unit in test mode.
   1. Long delay pickup activated (overload in progress).
   1. Missing or defective trip rating plug.
   1. Unit RAM or ROM fails self-diagnostic check.
   1. Monitor and transmit complete data from all Electronic Metering Units.
   1. Provide integral alarm relay with Form C contacts rated 10 Amperes resistive at 115 VAC for remote alarm, as well as an alarm LED. Provide an Acknowledge/Reset pushbutton to acknowledge the alarm as well as de-energize the alarm relay, change the alarm LED from flashing to steady on, and stop cycling the alarmed breakers. Store the alarm data in memory and display whenever the alarm breaker address is selected. Purge the alarm data from memory only after the Acknowledge/Reset pushbutton has been depressed again after the breaker trip unit is reset.
   1. Operate at 120-volt, single phase, powered from control power transformer.
   1. Provide communication ability for transmitting all data, including trip data to the Power Monitoring and Control System, as specified. Provide time stamp for all breaker operations.
1. COMMUNICATIONS SYSTEMS
   1. Communications System Hardware
   1. Provide communications system hardware which includes as a minimum the following:
      1. Necessary hardware at the local assembly monitor required to interface between the monitored points and the communications network.
   1. Necessary internal plug-in cards installed in the monitoring and control computer, to interface between the communications network and the computer.
   1. Conduit and cable to interconnect the local assembly monitors indicated.
   1. Provide a physical communication system that has a high tolerance of component damage from external faults, such as short circuit, unintentional grounding, and induced voltage or current.
   1. Communication System Firmware and Software
   1. Provide communication protocol which is highly reliable, and employs error-detection and error-correction algorithms.
1. BAS INTERFACE
   1. BAS Interface:
      1. Provide factory-installed hardware and software to enable the BAS to monitor, display, and record data for use in processing reports.
   1. Retain one of two subparagraphs below. Retain first subparagraph if interface with the BAS is through hardwired points and minimal interface is required. Retain second subparagraph if extensive interface with the BAS is required and is beyond what hardwired points can provide. Requirement may exclude some manufacturers.
   1. Hardwired Monitoring Points:
      1. Electrical power demand (kilowatts), electrical power consumption (kilowatt-hours)power factor.
   1. ASHRAE 135 (BACnet) communication interface with the BAS shall enable the BAS operator to remotely monitor meter information from a BAS operator workstation. Control features and monitoring points displayed locally at metering panel shall be available through
1. PRODUCTS
1. INSTALLATION

## General

   1. Connect the communication network to the local monitoring devices. 
   1. Configure monitoring workstation including interface with BAS.
   1. Communication System Wiring
   1. Install communication system wiring in dedicated conduit, separate from any other system wiring.
   1. Coordinate with related Division 27 sections of the Specifications.
   1. Install wire without splices or taps. Provide terminals blocks, and make connections device terminals and at communication modules.
1. FIELD QUALITY CONTROL
   1. System Startup Service
   1. Engage a factory trained service representative to inspect, test and adjust components, assemblies, and equipment including communications wiring and monitoring workstation.
   1. Manufacturer's representative is to be trained and have a thorough knowledge of the hardware and system software and programming.
   1. Provide the following services:
      1. Set and record addresses of all remote addressable devices.
   1. Verify integrity of the communications wiring.
   1. Program the system to communicate with the remote devices and to perform as specified.
   1. Verify and demonstrate all monitoring and control functions.
   1. Assist the contractor in troubleshooting and repair of defects.
   1. Correct any software-based monitoring or control defects.
   1. Field Tests 
   1. Verify operation of communications system hardware and software.
   1. Verify operation of computer and related software. 
   1. Verify operation of each local assembly monitoring device.
   1. Verify that each parameter is being monitored.
   1. Verify that each control point functions as specified.
   1. Demonstrate energy analysis software.
1. DEMONSTRATION
   1. Initial Training
   1. Furnish the services of a manufacturer's representative for a period of not less than two weeks, consisting of five consecutive 8-hour days exclusive of travel time, to conduct on-site training of Owner's personnel in operation and programming of the system.
   1. Conduct training after all site systems have been installed.
   1. Require manufacturer's representative to be trained and have a thorough knowledge of the hardware and system software and programming.
   1. Provide training for a minimum of ten persons, to include the following:
      1. Explanation of system operation.
   1. Explanation of devices.
   1. Hands-on training. Use of systems simulators is acceptable for introduction purposes, but include operation of the installed system.
   1. Explanation of the site-specific system.
   1. Follow-up Training
   1. Furnish the services of a manufacturer's representative for a period of not less than one week, consisting of five consecutive 8-hour days exclusive of travel time, to conduct on-site training of Owner's personnel in operation and programming of the system.
   1. Conduct training not more than one year after all site systems have been installed, tested and accepted.
   1. Require manufacturer's representative to be trained and have a thorough knowledge of the hardware and system software and programming.
   1. Provide training for a minimum of five persons, to include the following:
      1. Explanation of system operation.
   1. Explanation of devices.
   1. Hands-on training. Use of systems simulators is acceptable for introduction purposes, but include operation of the installed system.
   1. Explanation of the site-specific system.
   1. User-defined training.
1. ON-SITE ASSISTANCE
   1. Occupancy Adjustments:
      1. When requested within 12 months of date of Substantial Completion, provide on-site assistance in adjusting system to suit actual occupied conditions. Provide up to three visits to Project during other-than-normal occupancy hours for this purpose.


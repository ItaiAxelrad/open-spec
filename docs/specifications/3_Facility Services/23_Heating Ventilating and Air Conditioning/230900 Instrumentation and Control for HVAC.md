---
title: Instrumentation and Control for HVAC
section: '230900'
divNumb: 23
divName: Heating Ventilating and Air Conditioning
subgroup: Facility Services
tags:
  [
    'Facility',
    'Services',
    'Heating',
    'Ventilating',
    'Air',
    'Conditioning',
    'Instrumentation',
    'Control',
    'HVAC',
  ]
---

## General

1. RELATED DOCUMENTS
   1. Drawings and general provisions of the Contract, including General and Supplementary Conditions and Division 1 Specification Sections, apply to this Section.
1. SUMMARY
   1. This Section includes:
      1. Extent of control systems work required by this Section is indicated on drawings and schedules, and by requirements of this Section.
   1. Control sequences are specified on the drawings
1. DEFINITIONS
   1. DDC:
      1. Direct digital control.
   1. I/O:
      1. Input/output.
   1. LonWorks:
      1. A control network technology platform for designing and implementing interoperable control devices and networks.
   1. MS/TP:
      1. Master slave/token passing.
   1. PC:
      1. Personal computer.
   1. PID:
      1. Proportional plus integral plus derivative.
   1. RTD:
      1. Resistance temperature detector.
1. REFERENCES
   1. Applicable Standards:
      1. National Electrical Manufacturers' Association (NEMA)
   1. National Fire Protection Association (NFPA)
   1. 70 - National Electrical Code (NEC)
   1. 90A - Air Conditioning and Ventilating Systems
   1. Underwriters Laboratories (UL)
1. SUBMITTALS
   1. General:
      1. Submit the following in accordance with Division 23 sections of the Specifications.
   1. Product Data:
   1. Submit manufacturer's technical product data for each control device furnished, indicating dimensions, capacities, performance and electrical characteristics, and material finishes. All submittals must be provided in both hard copy and digital (PDF) format. Scanned copies of documents must be provided if other digital copy not available.
   1. Also include installation and start-up instructions.
   1. Shop Drawings:
   1. Use Owner’s master set of control drawings as basis for shop drawings.
   1. Submit shop drawings for each control system containing the following information:
      1. Schematic flow diagram of system showing boilers, chillers, pumps, coils, valves, and control devices. The Owner control diagrams are available on AutoCAD 2005 and may be used as the basis for the flow diagram.
   1. Label each control device with setting or adjustable range of control and device name.
   1. Indicate all required electrical wiring. Clearly differentiate between portions of wiring that are factory-installed and portions to be field-installed.
   1. Include verbal description of sequence of operation and software descriptions. Submit flow charts for approval with sequence of operation.
   1. Plan drawings of panel locations.
   1. Input/output (I/O) summary forms that include:
      1. Point list including point descriptions.
   1. Hardware list for each binary and analog function.
   1. Alarm limit and failure mode lists.
   1. Application program list for each piece of equipment.
   1. Maintenance Data:
   1. Submit maintenance instructions and spare parts lists for each type of control device.
   1. Include that type data, product data, and shop drawings in Operating and Maintenance Manual in accordance with requirements of Division 23 sections of the Specifications. These must be provided in PDF format in addition to hard copy.
   1. Submit as built drawings and as built AutoCAD 2005 files for all drawings. Verify most current AutoCAD version being utilized by Owner.
   1. All drawings must be fully integrated into the Owner master set of existing control drawings. This includes using Owner’s standard border for drawings, and numbering the new drawings to match existing master drawing set, as well as updating any impacted existing drawings. A complete single set of control drawings must be maintained for each building.
1. QUALITY ASSURANCE
   1. Manufacturer's Qualification:
      1. Firms regularly engaged in manufacture of control equipment, of types and sizes required, whose products have been in satisfactory use in similar service for not less than five years.
   1. Installer's Qualifications:
      1. Firms specializing and experienced in control system installations for not less than five years.
   1. Codes and Standards
   1. Electrical Standards:
      1. Provide electrical components of control systems which have been UL-listed and labeled and comply with NEMA standards.
   1. NEMA Compliance:
      1. Comply with NEMA standards pertaining to components and devices for control systems.
   1. NFPA Compliance:
      1. Comply with NFPA 90A where applicable to controls and control sequences.
1. DELIVERY, STORAGE, AND PROTECTION
   1. Provide factory-shipping cartons for each piece of equipment and control device.
   1. Maintain cartons while shipping, storing, and handling as required to prevent equipment damage and to eliminate dirt and moisture from equipment.
   1. Store equipment and materials inside and protect from weather.

## Products

1. MANUFACTURERS
   1. Subject to compliance with requirements, provide control systems from:
      1. Delta Controls
   1. c/o Setpoint Systems Corporation
   1. 2680 S. Platte River Drive
   1. Denver, Colorado 80223
1. MATERIALS\* 1. General:
   1. Furnish and install a complete control system consisting of an Energy Monitoring and Control System (EMCS).
   1. The control system shall be complete in all respects including labor, materials, equipment, and services necessary, and shall be installed by personnel regularly employed by the manufacturer.
   1. All automation and control components shall be integrated into a distributed network system communicating over a nonproprietary local area network.
   1. This system shall consist of field Stand-alone Direct Digital Controllers (DDC), Smart Local DDCs, and multiple Personal Computer (PC) based operator workstations. Firmware and software shall match existing Owner system unless approved by Owner.
   1. The communication between major system components shall be Ethernet. Any communication lines that are between building, exposed outdoors or underground shall be fiber optics with conversion to Ethernet inside the buildings.
   1. The EMCS shall consist of the following items:
      1. Stand-alone DDC panels.
   1. Stand-alone Smart Local Controllers (SLC).
   1. Personal Computer (PC) Operator Workstations supplied by contractor for each building. If work is in an existing building with an existing workstation, then a new one does not need to be provided. All new buildings require new workstations.
   1. Each DDC panel shall operate independently by performing its own specified control, alarm management, operator I/O, and historical data collection.
   1. The failure of any single component or network connection shall not interrupt the execution of control strategies at other operational devices.
   1. Stand-alone DDC panels shall be able to access any data from, or send control commands and alarm reports directly to, any other DDC panel or combination of panels on the network without dependence upon a central processing device. Stand-alone DDC panels shall also be able to send alarm reports to operator workstations without dependence upon a central processing device polling them.
   1. Hardware, Stand-Alone DDC Panels:
   1. General:
      1. Stand-alone DDC panels shall be microprocessor based, multi-tasking, multi-user, real-time digital control processors.
   1. A sufficient number of controllers shall be supplied to meet the requirements of the sequence of operation.
   1. Communication Ports:
   1. Stand-alone DDC panels shall provide at least one Ethernet data communication port.
   1. For simultaneous operation of multiple operator I/O devices, stand-alone DDC panels shall allow temporary use of portable devices without interrupting the normal operation of permanently connected modems, printers, or network terminals.
   1. Power Failure Restart:
   1. In the event of the loss of normal power, there shall be an orderly shutdown of all stand-alone DDC panels to prevent the loss of database or operating system software.
   1. Nonvolatile memory shall be incorporated for all critical controller configuration data, and battery backup shall be provided to support the real-time clock and all volatile memory for a minimum of 48 hours.
   1. Upon restoration of normal power, the DDC panel shall automatically resume full operation without manual intervention.
   1. All devices including control panels, network hubs, or other devices required for the operation of the DDC system, must be on emergency power where available.
   1. Hardware - Smart Local Controllers:
      1. Each Stand-alone DDC Controller shall be able to extend its performance and capacity through the use of remote Smart Local Controllers (SLC). The SLC shall be application specific, dedicated DDC controllers.
   1. Each SLC shall operate as a stand-alone controller capable of performing its specified control responsibilities independently of other controllers in the network. Each SLC shall be a microprocessor-based, multi-tasking, real-time digital control processor.
   1. Each SLC shall have sufficient memory to support its own operating system and data bases, including:
      1. Weekly scheduling.
   1. Control Processes.
   1. Energy Management Applications.
   1. Power Failure Protection:
      1. All system set points, proportional bands, control algorithms, and any other programmable parameters shall be stored such that a power failure of any duration does not necessitate reprogramming the controller.
   1. HVAC Applications:
      1. Each SLC shall support the following library of control strategies to address the requirements of the sequences described in the Sequence of Operation.
   1. Occupancy-Based Standby/Comfort Mode Control:
   1. Each SLC shall have a provision for occupancy sensing overrides.
   1. Based upon the contact status of either a manual wall switch or an occupancy-sensing device, the SLC shall automatically select either Standby or Comfort mode to minimize the heating and cooling requirements while satisfying comfort conditions.
   1. VAV Terminal Unit Controllers:
      1. VAV Terminal Unit Controllers shall support, but not be limited to, the control of the following configurations of VAV boxes to address requirements as described in the Sequence of Operation and for future expansion:
      1. Single Duct Only (Cooling Only, or Cooling with Reheat)
   1. Fan Powered (Parallel Fan, Series Fan)
   1. Dual Duct (Constant Volume, Variable Volume)
   1. VAV Terminal Unit Controllers shall support the following types of point inputs and outputs:
      1. Proportional Cooling Outputs
   1. Box and Baseboard Heating Outputs (Proportional, or 1 to 3 Stages)
   1. Fan Control Output (On/Off Logic, or Proportional Series Fan Logic)
   1. Lighting Applications:
      1. Each Stand-alone DDC Controller shall be able to extend its performance and capacity through the use of remote Smart Local Controllers (SLC) dedicated to controlling lighting. Lighting Control SLC shall provide stand-alone remote control of building lighting circuits, including weekly and holiday time programming, local overrides, and local status indication.
   1. Occupancy-Based Lighting Control:
      1. Each lighting circuit shall have an associated binary override input for monitoring motion detectors, wall switches, photocells, or similar devices. Based upon the contact status of an occupancy-sensing device, the Lighting Controller shall automatically override normal scheduled control to reduce electricity consumption while satisfying occupant lighting requirements.
   1. Sensors and Controllers:
      1. Input:
         1. Provide devices as required to perform the functions described in the sequence of operation.
   1. Temperature:
   1. Temperature sensors and transmitters shall be as described below or as required for the application.
   1. Sensors and transmitters shall be capable of being calibrated.
   1. Space Temperature Transmitter:
   1. Transmitter shall contain a Resistance Temperature Detector (RTD) sensing element to monitor room air temperatures in the range of 30oF to 90oF, unless indicated otherwise.
   1. The assembly shall be installed within a ventilated enclosure suitable for wall mounting.
   1. Transmitter shall be factory calibrated to an accuracy of +1%.
   1. Duct Averaging Type Temperature Transmitter:
   1. Transmitter shall be a general purpose RTD sensing element, moisture resistant transmitter for indoor or outdoor mounting, or mounting into a duct.
   1. The operating range shall be as indicated with an accuracy of +1% over the full range.
   1. Pipe Temperature Transmitter:
   1. Transmitter shall contain an RTD sensing element to monitor water temperature.
   1. The Contractor shall provide stainless steel wells of sufficient size for the pipe to be installed.
   1. Transmitter shall be factory calibrated to an accuracy of +1%.
   1. Humidity:
   1. Humidity sensors and transmitters shall be as described below or as required for the application.
   1. Sensors and transmitters shall be capable of being calibrated.
   1. Space Humidity Transmitter:
      1. Transmitter shall be capable of providing continuous measurement of percent relative humidity (RH) with an accuracy of +3% over the range of 10 to 60% RH.
   1. Duct Humidity Transmitter:
      1. Transmitter shall be capable of providing continuous measurement of percent relative humidity with an accuracy of +4% over the range of 10 to 80% RH.
   1. Outside Air Humidity Transmitter:
      1. Transmitter shall be capable of providing continuous measurement of percent relative humidity with an accuracy of +2% over the range 20 to 90% RH. Transmitter shall have outside weather enclosure.
   1. Pressure:
   1. Pressure sensors, transmitters and switches shall be as described below or as required for the application.
   1. Sensors and transmitters shall be capable of being calibrated.
   1. Differential Pressure Transmitter:
      1. Transmitter shall provide a proportional signal with an accuracy of +2% over the full range.
   1. Differential Pressure Switch:
   1. Switch shall be for liquid or vapor service.
   1. Switch shall have a single-pole, single-throw (SPST) contact, adjustable dead band, brass bellows, UL rated 6 amperes at 120V 100 psig design, and with automatic reset.
   1. Each switch shall be provided with isolation and drain valves.
   1. Low Limit Thermostats:
   1. Low limit thermostats shall be of automatic or manual reset type, with set point adjustment.
   1. The sensing element shall be 20-foot minimum and shall be installed completely across the coil.
   1. When any 1-foot of the element senses a temperature as low as the set point, the thermostat contacts shall open.
   1. The thermostats shall contain double pole switches for simultaneous remote alarms.
   1. Flow Switches:
   1. Switches shall have a single-pole, single-throw (SPST) or double-pole, double-throw (DPDT) contact, adjustable dead band; UL rated 6 amperes at 120V.
   1. Switch actuation shall be adjustable over the operating flow range.
   1. Watt-Hour Transducers:
      1. Selected as required for application.
   1. Voltage-to-Digital Alarm Relays:
      1. Relays shall be provided to monitor status of equipment safeties and overloads, sized and connected to not impede the function of the monitored contacts.
   1. Current Sensing Relays:
      1. Relays shall be provided to monitor status of motor loads. Switch shall have adjustable set point.
   1. Current Transformers (CT):
   1. CTs with output scalable to current draw may be used in place of current sensing relays to monitor status of motors.
   1. CTs shall be used if called out on drawings.
   1. Software - Automatic Control:
   1. General:
      1. All necessary software to form a complete operating system as described in this specification shall be provided.
   1. The software programs shall be provided as an integral part of the DDC panel and shall not be dependent upon any higher-level computer for execution.
   1. Run Time Totalization:
      1. Stand-alone DDC panels shall be programmed to accumulate and store run time hours for binary input and output points as identified in the sequence.
   1. Analog/Pulse/or Event Totalization:
      1. Stand-alone DDC panels shall automatically sample, calculate and store consumption totals, or count events, on a daily, weekly, or monthly basis for user-selected analog and binary pulse input-type points, or binary input points.
   1. Dynamic Color Graphic Displays:
      1. Color graphic system schematics for each mechanical system, including air handling systems, chilled water systems, hot water systems and other mechanical systems shall be provided.
   1. System Selection/Penetration:
      1. The operator interface shall allow users to access the various system schematics and floor plans via a graphical penetration scheme, menu selection, or text-based commands.
   1. Peer-to-Peer Displays:
      1. Global temperature values, humidity values, flow values, and status indication shall be shown in their actual respective locations and shall automatically update to represent current conditions without operator intervention.
   1. Documentation:
   1. General:
      1. Provide reference material that contains an overview of the system, organization, terminology, abbreviations, symbols and job specific information as described below.
   1. Documentation shall also include an Input/Output summary table and plans showing equipment locations.
   1. All manuals shall be updated to reflect as built configuration after final acceptance and shall be provided in three-ring hard cover bindings.
   1. Hardware:
      1. Provide the following documentation as a minimum on all hardware.
   1. Product catalog cuts and descriptions.
   1. Installation, mounting, connection, set-up, checkout, and tuning instructions.
   1. Maintenance procedures and spare parts list for all hardware.
   1. Software:
      1. Provide the following documentation as a minimum on all software.
   1. Description of control logic including sequences.
   1. Lists of all set points, alarm points, and message conditions.
   1. Hard copy of graphics.
   1. Materials and Equipment:
   1. General:
      1. Provide electric control products in sizes and capacities indicated, consisting of valves, dampers, thermostats, sensors, controllers, and other components as required for complete installation interfacing with DDC control system.
   1. Provide electric control systems with the following functional and construction features.
   1. Control Valves:
   1. Provide factory fabricated electric control valves of type, body material, and pressure class indicated.
   1. Where type or body material is not indicated, provide selection as determined by manufacturer for installation requirements and pressure class, based on maximum pressure and temperature in piping system.
   1. Provide valve size in accordance with scheduled or specified maximum pressure drop across control valve.
   1. Except as otherwise indicated, provide valves which mate and match material of connecting piping.
   1. Equip control valves with control valve motor actuators, with proper shutoff rating for each individual application.
   1. Water Service Valves:
      1. Equal percentage characteristics with rangeability of 50 to 1, and maximum full flow pressure drop of 5 psig.
   1. Single Seated Valves:
      1. Cage type trim, providing seating and guiding surfaces for plug on "top and bottom" guided plugs.
   1. Double Seated Valves:
      1. Balanced plug type, with cage type trim providing seating and guiding surfaces on "top and bottom" guided plugs.
   1. Valve Trim and Stems:
      1. Polished stainless steel.
   1. Packing:
      1. Spring-loaded Teflon, self-adjusting.
   1. Terminal Unit Control Valves:
   1. Provide control valves for control of terminal units including, but not necessarily limited to, convectors, finned tube radiation, and fan-coil units that are of integral motor type.
   1. Provide 2-position or modulating type valves, electrically actuated by line voltage of 120V.
   1. Dampers:
   1. Provide automatic control dampers as indicated, with damper frames not less than formed 13-gauge galvanized steel.
   1. Provide mounting holes for enclosed duct mounting.
   1. Provide damper blades not less than formed 16-gauge galvanized steel, with maximum blade width of 8-inch.
   1. Equip dampers with motors of proper rating for each application.
   1. Secure blades to 1/2-inch diameter zinc-plated axles using zinc-plated hardware.
   1. Seal off against spring stainless steel blade bearings.
   1. Provide blade bearings of Nylon and provide thrust bearings at each end of every blade. Construct blade linkage hardware of zinc-plated steel and brass.
   1. Submit leakage and flow characteristics plus size schedule for controlled dampers.
   1. Operating Temperature Range:
      1. From -20o to 200oF (-29o to 93oC).
   1. For standard applications as indicated, provide parallel or opposed blade design (as selected by the manufacturer's sizing techniques) with optional closed-cell neoprene edging.
   1. For low leakage applications as indicated, provide parallel or opposed blade design (as selected by manufacturer's sizing techniques) with inflatable steel blade edging or replaceable rubber seals, rated for leakage less than 10 cfm per square foot of damper area, at differential pressure of 4-inch w.g. when damper is being held by torque of 50 inch-pounds.
   1. Damper and Valve Motors, Actuators:
   1. Size each motor to operate dampers or valves with sufficient reserve power to provide smooth modulating action or 2-position action as specified.
   1. Pneumatic driven DDC controlled actuators are acceptable for large valves and dampers in buildings with compressed air systems.
   1. Equip motors for outdoor locations and for outside air intakes with "O-ring" gaskets designed to make motors completely weatherproof, and equip with internal heaters to permit normal operation at -20oF.
   1. Furnish nonspring return motors for dampers larger than 25 square feet and for valves larger than 2-1/2 inches, sized for running torque rating of 150 inch-pounds and breakaway torque rating of 300 inch-pounds. Size spring-return motors for running torque rating of 150 inch-pounds and breakaway torque rating of 150 inch-pounds.
   1. Ionization Smoke Detectors:
   1. For each air handling unit provide UL-listed ionization smoke detectors in main supply and return air ducts, as required by NFPA 90, and where indicated.
   1. Connect detectors into control circuits to stop fans in presence of smoke.
   1. Electric Contactors:
   1. Provide contactors for operating or limit-control of electric heating loads, which are UL-listed for 100,000 cycles of resistive loads.
   1. Equip with replaceable molded coils and replaceable silver cadmium oxide contacts.
   1. Coat core laminations with heat-resistant inorganic film to reduce core losses.
   1. Provide line and load terminals on contactors with higher-than-35-amp rating, or provide one-piece formed-and-welded pressure type.
   1. Provide screw-type contactors for 35-amp-or-lower rating.
   1. Equip field-mounted contactors with suitable steel enclosures.
   1. Provide open-type mounting for those installed in factory-fabricated panels.
   1. Water Flow Switches:
   1. Provide water flow switches of stainless steel or bronze paddle types.
   1. Where flow switches are used in chilled water applications, provide vapor-proof type to prevent condensation on electrical switch.
   1. Provide pressure-flow switches of bellows actuated mercury type or snap-acting type, with appropriate scale range and differential adjustment for service indicated.

## Execution

1. EXAMINATION
   1. Examine areas and conditions under which control systems are to be installed.
   1. Do not proceed with work until unsatisfactory conditions have been corrected in manner acceptable to Installer.
1. ERECTION INSTALLATION APPLICATION
   1. General:
   1. Install systems and materials in accordance with manufacturer's instructions, roughing-in drawings and details shown on drawings.
   1. Install electrical components and use electrical products complying with the requirements of applicable Division 26 sections of the Specifications.
   1. Unit Mounted Equipment:
      1. Where control devices are indicated to be unit-mounted, ship electric relays, electric switches, valves, dampers, and motors to system manufacturer for mounting and wiring at factory.
   1. Control Wiring:
   1. Install control wiring, without splices between terminal points, color-coded.
   1. Install in accordance with the National Electrical Code.
   1. The term "control wiring" is defined to include providing of wiring, conduit, and miscellaneous materials as required for mounting and connecting control devices.
   1. Install circuits over 25V with color-coded No. 12 wire in electric metallic tubing (EMT).
   1. Install circuits under 25V with color-coded No. 18 wire with 0.031-inch high temperature (105oF (41oC)) plastic insulation on each conductor and plastic sheath over all.
   1. Install electronic circuits with color-coded No. 22 wire with 0.023-inch polyethylene insulation on each conductor with plastic jacketed copper shield over all.
   1. Install low voltage circuits, located in concrete slabs and masonry walls, or exposed in occupied areas, in electrical conduit.
   1. Number-code or color-code conductors, excluding those used for local individual room controls, appropriately for future identification and servicing of control system.
   1. Reset Limit Controls:
      1. Install manual-reset limit controls to be independent of power controllers.
   1. Room temperature transmitters shall be installed a minimum of 70" AFF. Occupant adjustable temperature controls shall be mounted at 48" AFF to meet ADA requirements.
1. ADJUSTING
   1. Startup:
      1. Startup, test, and adjust control systems. Demonstrate compliance with requirements.
   1. Coordinate with other contractors as required to start-up, test, balance and adjust all systems. Replace damaged or malfunctioning controls and equipment.
   1. Do not place systems into operation until all components are complete and in place, all testing and inspection has been performed and authorization of Owner has been received.
   1. Final Adjustment:
      1. After completion of installation, adjust thermostats, control valves, motors, and similar equipment provided as work of this section.
1. CLEANING
   1. Clean factory-finished surfaces. Repair any marred or scratched surfaces and manufacturer's touch-up paint.
1. DEMONSTRATION
   1. Operator Instructions:
      1. During system commissioning and at such time acceptable performance of the control system hardware and software has been established, the Building Automation Contractor shall provide on-site operator instruction to Owner personnel. Operator instruction during normal working hours shall be performed by a competent Building Automation Contractor representative familiar with the control system's software, hardware, and accessories.
   1. At a time mutually agreed upon during control system commissioning as stated above, the Building Automation Contractor shall:
   1. Give at least 8 hours of instruction to the Owner designed personnel at the Owner job site on the operation of all equipment within the building automation center and describe its intended use with respect to the programmed functions specified.
   1. 32 hours of additional training requirements may be fulfilled by off site training classes, for a total of 40 hours of training.
   1. Operator orientation of the automation system shall include, but not be limited to, the overall operational program, equipment functions (both individually and as part of the total integrated system), commands, system generation, advisories, and appropriate operator intervention required in responding to the control system's operation.
   1. An Owner's manual prepared for this project by the Building Automation Contractor shall be used in addition to the instruction. Four copies of the Owner's manual shall be provided.

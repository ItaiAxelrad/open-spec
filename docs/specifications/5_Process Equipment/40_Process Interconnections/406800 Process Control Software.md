---
title: Process Control Software
section: '406800'
divNumb: 40
divName: Process Interconnections
subgroup: Process Equipment
tags: ['Process', 'Equipment', 'Interconnections', 'Control', 'Software']
---

## General

1. SUMMARY
   1. Work under this section shall include programmable logic controllers (PLC) and control panels. The PLC system will now contain a Human Machine Interface (HMI).
2. Any pre-engineered package systems shall be programmed by the equipment supplier. The supplier shall place all his data in a contiguous memory section for use by the plant personnel to bring the vendor’s data to the plant PLC system.
3. Plant personnel will perform all setup and programming of new PLCs. The plant vendor will supply a completed panel to the general contractor who will be responsible for the physical installation.
   1. This shall include all electrical and controls wiring as well as physical mounting of the panel.
   2. Plant personnel will load the operating program and do all software work required to make the PLC functional.
4. Once approved panel drawings are available, they will be delivered to the plant programmers so they can begin their work.
5. Related Specification Sections include:
   1. Section 10 14 00, Identification Devices.
   2. Quality Assurance
6. Work shall be per:
   1. Canadian Standards Association (CSA).
   2. FM Global (FM).
   3. The International Society of Automation (ISA):
      1. 7.0.01, Quality Standard for Instrument Air.
      2. S5.1, Instrumentation Symbols and Identification.
      3. S5.3, Graphic Symbols for Distributed Control/Shared Display Instrumentation, Logic and Computer Systems.
      4. S5.4, Standard Instrument Loop Diagrams.
      5. S20, Standard Specification Forms for Process Measurement and Control Instruments, Primary Elements and Control Valves.
   4. National Electrical Manufacturers Association (NEMA):
      1. 250, Enclosures for Electrical Equipment (1000 Volts Maximum).
   5. National Fire Protection Association (NFPA):
      1. 70, National Electrical Code (NEC).
   6. National Institute of Standards and Technology (NIST).
7. Qualifications:
   1. Instrumentation subcontractor (site plant personnel):
      1. Site PLC programming to setup new PLCs shall be by the Owner.
      2. Instrumentation subcontractor shall supply pre-engineered panel assemblies based on the drawings and specifications.
      3. There will be two new control panel assemblies:
         1. UV System Control Panels (CP-105 and CP-106).
      4. There will be two modified PLC panel assemblies:
         1. Main Control Panel (CP-100).
         2. Filter Control Panel (CP-101).
8. Miscellaneous:
   1. Comply with electrical classifications and NEMA enclosure types shown on Drawings.
   2. System Description
9. Control System Requirements:
   1. The instrument and control system consists of all primary elements, transmitters, switches, controllers, computers, recorders, indicators, panels, signal converters, signal boosters, amplifiers, special power supplies, special or shielded cable, special grounding or isolation, auxiliaries, software, wiring, and other devices required to provide complete control of the plant.
10. Furnish and coordinate instrumentation system through a single instrumentation subcontractor.
    1. The instrumentation subcontractor shall be responsible for function operations of all systems, performance of control system engineering, supervision of installation, final connections, calibrations, preparation of Drawings and Operation and Maintenance Manuals, start-up, training, demonstration of substantial completion and all other aspects of the control system.
    2. Ensure coordination of instrumentation with other work to ensure that necessary wiring, conduits, contacts, relays, converters, and incidentals are provided in order to transmit, receive, and control necessary signals to other control elements, to control panels, and to receiving stations.
11. UV Control Panel:
    1. Two new control panels (CP-105 and CP-16) will be required for UV Unit 101 and 102.
    2. UV Control Panels must be supplied by the UV disinfection unit supplier.
    3. Both control panels will input the flow meters and UV transmitters.
    4. Refer to Drawing E-5 and the Control Strategy Narrative for further discussion.
12. Main Control Panel:
    1. Shall be modified based on Drawing E-6 and the Control Strategy Narrative.
13. Filter Control Panel:
    1. Shall be modified based on Drawing E-5 and the Control Strategy Narrative.
14. Submittals
    1. See Specification Section 01 33 00 for requirements for the mechanics and administration of the submittal process.
    2. Shop drawings shall include:
    3. Submittals shall be original printed material, PDF documents, or clear unblemished photocopies of original printed material.
    4. Product technical data including:
       1. Equipment catalog cut sheets.
       2. Instrument data sheets:
          1. ISA S20 or approved equal.
          2. Separate data sheet for each instrument.
       3. Materials of construction.
       4. Minimum and maximum flow ranges.
       5. Pressure loss curves.
       6. Physical limits of components including temperature and pressure limits.
       7. Size and weight.
       8. Electrical power requirements and wiring diagrams.
       9. NEMA rating of housings.
       10. Submittals shall be marked with arrows to show exact features to be provided.
    5. Comprehensive set of wiring diagrams.
    6. Panel fabrication drawings.
    7. PLC/DCS equipment drawings.
    8. HMI graphics.
    9. Name plate layout drawings.
    10. Drawings, systems, and other elements are represented schematically in accordance with ISA S5.1 and ISA S5.3.
    11. The nomenclature, tag numbers, equipment numbers, panel numbers, and related series identification contained in the Contract Documents shall be employed exclusively throughout submittals.
    12. All Shop Drawings shall be modified with as-built information/corrections.
    13. All panel and wiring drawings shall be provided in both hardcopy and softcopy.
        1. Furnish electronic files on CD-ROM or DVD-ROM media.
        2. Drawings in AUTO CAD format.
    14. Provide a parameter setting summary sheet for each field configurable device.
    15. Certifications:
        1. Documentation verifying that calibration equipment is certified with NIST traceability.
        2. Approvals from independent testing laboratories or approval agencies, such as UL, FM or CSA.
           1. Certification documentation is required for all equipment for which the specifications require independent agency approval.
    16. Testing reports: Source quality control reports.
15. Provide Operation and Maintenance Manuals.
    1. Delivery, Storage and Handling
16. Do not remove shipping blocks, plugs, caps, and desiccant dryers installed to protect the instrumentation during shipment until the instruments are installed and permanent connections are made.

## Products

1. NEMA Type Requirements
   1. Provide enclosures/housing for control system components in accordance with the following:
   1. Areas designated as wet: NEMA Type 4.
   1. Areas designated as wet or corrosive: NEMA Type 4X.
   1. Either architecturally or non-architecturally finished areas designed as dry, noncorrosive, and nonhazardous: NEMA Type 12.
   1. Areas designed to be subject to temporary submersion: NEMA Type 6P.
1. Programmable Logic Controller
   1. Acceptable Manufacturer:
   1. Allen Bradley, CompactLogix.
1. Performance and Design Requirements
   1. System Operating Criteria
   1. Stability: After controls have taken corrective action, as result of a change in the controlled variable or a change in setpoint, oscillation of final control element shall not exceed two cycles per minute or a magnitude of movement of 0.5 percent full travel.
   1. Response: Any change in setpoint or change in controlled variable shall produce a corresponding corrective change in position of final control element and become stabilized within 30 seconds.
   1. Agreement: Setpoint indication of controlled variable 1 and measured indication of controlled variable shall agree within 3 percent of full scale over a 6:1 operating range.
   1. Repeatability: For any repeated magnitude of control signal, from either an increasing or decreasing direction, the final control element shall take a repeated position within 0.5 percent of full travel regardless of force required to position final element.
   1. Sensitivity: Controls shall respond to setpoint deviations and measured variable deviations within 1.0 percent of full scale.
   1. Performance: All instruments and control devices shall perform in accordance with manufacturer's specifications.

## Execution

1. Installation
   1. Wherever feasible, use bottom entry for all conduit entry to instruments and junction boxes.
2. Install electrical components per the requirements of the Electrical design.
3. Panel-Mounted Instruments:
   1. Mount and wire so removal or replacement may be accomplished without interruption of service to adjacent devices.
   2. Locate all devices mounted inside enclosures so terminals and adjustment devices are readily accessible without use of special tools and with terminal markings clearly visible.
   3. Quality Control
4. Maintain accurate daily log of all startup activities, calibration functions, and final setpoint adjustments.
5. In the event that instrument air is not available during calibration and testing, supply either filtered, dry, instrument quality air from a portable compressor or bottled, dry, instrument quality air.
   1. Do not, under any circumstances, apply hydrostatic test to any part of the air supply system or pneumatic control system.
6. Instrumentation Calibration:
   1. Verify that all instruments and control devices are calibrated to provide the performance required by the Contract Documents.
   2. Calibrate all field-mounted instruments, other than local pressure and temperature gages, after the device is mounted in place to assure proper installed operation.
   3. Calibrate in accordance with the manufacturer's specifications.
   4. Bench calibrate pressure and temperature gages.
      1. Field mount gage within five (5) days of calibration.
   5. Check the calibration of each transmitter and gage across its specified range at 0, 25, 50, 75, and 100 percent.
      1. Check for both increasing and decreasing input signals to detect hysteresis.
   6. Replace any instrument which cannot be properly adjusted.
   7. Stroke control valves to verify control action, positioner settings, and solenoid functions.
   8. Calibration equipment shall be certified by an independent agency with traceability to NIST.
      1. Certification shall be up-to-date.
      2. Use of equipment with expired certifications shall not be permitted.
   9. Calibration equipment shall be at least three (3) times more accurate as the device being calibrated.
7. Loop check-out requirements are as follows:
   1. Check control signal generation, transmission, reception and response for all control loops under simulated operating conditions by imposing a signal on the loop at the instrument connections.
      1. Use actual signals where available.
      2. Closely observe controllers, indicators, transmitters, HMI displays, recorders, alarm and trip units, remote setpoints, ratio systems, and other control components.
         1. Verify that readings at all loop components are in agreement.
         2. Make corrections as required.
         3. Following any corrections, retest the loop as before.
   2. Stroke all control valves, cylinders, drives and connecting linkages from the local control station and from the control room operator interface.
   3. Check all interlocks to the maximum extent possible.
   4. In addition to any other as-recorded documents, record all setpoint and calibration changes on all affected Contract Documents and turn over to the Owner.
8. Provide verification of system assembly, power, ground, and I/O tests.
9. Verify existence and measure adequacy of all grounds required for instrumentation and controls.

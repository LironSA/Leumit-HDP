Profile: LeumitPatient
Parent: ILCorePatient
Id: leumit-patient
Title: "Leumit Patient Profile"
Description: "Leumit proposed profile for a Patient resouce"
* ^url = $LeumitPatient
* extension contains InfoApproved named info-approved 0..1
* extension contains PopulationType named population-type 0..1
* extension contains FamilyHead named family-head 0..1
* identifier contains fict 0..1 MS
* identifier contains ppn-no-system 0..1
* identifier[ppn-no-system].extension contains $DAR named data-absent-reason 1..1
* identifier[ppn-no-system].extension[data-absent-reason].valueCode = #unknown (exactly)
* identifier[fict] ^short = "fictive patient ID"
* identifier[fict].use = #secondary
* identifier[fict].system = $FictPatient (exactly)


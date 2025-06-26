Profile: LeumitEncounter
Parent: il-core-encounter
Id: leumit-encounter
Title: "Leumit Encounter Profile"
* meta 1..1
* meta.profile 2..*
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile contains
   il-core 1..1 and
   leumit 1..1
* meta.profile[il-core] 1..1
* meta.profile[il-core].value = "http://fhir.health.gov.il/StructureDefinition/il-core-encounter" (exactly)
* meta.profile[leumit] 1..1
* meta.profile[leumit].value = "http://fhir.leumit.co.il/StructureDefinition/leumit-encounter" (exactly)
* identifier.system 1..1
* identifier.value 1..1
* class.system 1..1
* class.code 1..1
* class.display 1..1
* type.coding 0..*
* type.coding ^slicing.discriminator.type = #pattern
* type.coding ^slicing.discriminator.path = "$this"
* type.coding ^slicing.rules = #open
* type.coding contains
    tamar 0..1 and
    snomed 0..1 and
    virtual-encounters 0..1 and
    doctor-to-doctor-consultation 0..1
* type.coding[tamar].system = $tamar-visit-types (exactly)
* type.coding[tamar].code 0..1
* type.coding[tamar].display 0..1
* type.coding[snomed].system = $sct (exactly)
* type.coding[snomed].code 0..1
* type.coding[snomed].display 0..1
* type.coding[virtual-encounters].system = $sct (exactly)
* type.coding[virtual-encounters].code = #185316007 (exactly)
* type.coding[virtual-encounters].display = "Indirect encounter" (exactly)
* type.coding[doctor-to-doctor-consultation] 0..1
* type.coding[doctor-to-doctor-consultation].system = $sct (exactly)
* type.coding[doctor-to-doctor-consultation].code = #1268903003 (exactly)
* type.coding[doctor-to-doctor-consultation].display = "Consultation by multidisciplinary team" (exactly)
* serviceType.coding 2..2
* serviceType.coding ^slicing.discriminator.type = #value
* serviceType.coding ^slicing.discriminator.path = "system"
* serviceType.coding ^slicing.rules = #open
* serviceType.coding contains
    il-core 1..1 and
    leumit 1..1
* serviceType.coding[il-core] from $il-core-service-type-vs (required)
* serviceType.coding[il-core].system = $sct (exactly)
* serviceType.coding[il-core].code 1..1
* serviceType.coding[il-core].display 1..1
* serviceType.coding[leumit] from $visit-expertise-vs (required)
* serviceType.coding[leumit].system = $expertise-code (exactly)
* serviceType.coding[leumit].code 1..1
* serviceType.coding[leumit].display 1..1
* subject 1..1
* subject.reference 1..1
* participant 1..*
* participant[primary-performer] 1..1
* period 1..1
* period.start 1..1
* period.end 1..1
* reasonCode 2..*
* reasonCode ^slicing.discriminator.type = #value
* reasonCode ^slicing.discriminator.path = "system"
* reasonCode ^slicing.rules = #open
* reasonCode contains
    leumit-reason-code 1..*
* reasonCode[moh-reason-code] 1..*
* reasonCode[moh-reason-code].coding 1..1
* reasonCode[moh-reason-code].coding.system = $moh-reason-code (exactly)
* reasonCode[moh-reason-code].coding.code 1..1
* reasonCode[moh-reason-code].coding.display 1..1
* reasonCode[leumit-reason-code].coding 1..*
* reasonCode[leumit-reason-code].coding.system = $patient-visit-reason-leumit (exactly)
* reasonCode[leumit-reason-code].coding.code 1..1
* reasonCode[leumit-reason-code].coding.display 1..1
* reasonReference.reference 1..1
* diagnosis.condition 1..1
* location.location.reference 1..1
* serviceProvider 1..1
* serviceProvider.reference 1..1
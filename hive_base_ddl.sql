CREATE EXTERNAL TABLE IF NOT EXISTS hospitals
(
ProviderID string,
HospitalName string,
Address string,
City string,
State string,
ZIPCode string,
CountyName string,
PhoneNumber string,
HospitalType string,
HospitalOwnership string,
EmergencyServices string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare'
;

CREATE EXTERNAL TABLE IF NOT EXISTS readmissions
(
ProviderID string,
HospitalName string,
Address string,
City string,
State string,
ZIPCode string,
CountyName string,
PhoneNumber string,
MeasureName string,
MeasureID string,
Compared_to_National string,
Denominator string,
Score string,
Lower_Estimate string,
Higher_Estimate string,
Footnote string,
Measure_start_date string,
Measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare'
;


CREATE EXTERNAL TABLE IF NOT EXISTS effective_care
(
ProviderID string,
HospitalName string,
Address string,
City string,
State string,
ZIPCode string,
CountyName string,
PhoneNumber string,
Condition string,
MeasureID string,
MeasureName string,
Score string,
Sample string,
Footnote string,
Measure_start_date string,
Measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare'
;

CREATE EXTERNAL TABLE IF NOT EXISTS Measures
(
MeasureName string,
MeasureID string,
Measure_start_quarter string,
Measure_start_date string,
Measure_end_quarter string,
Measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare'
;

CREATE EXTERNAL TABLE IF NOT EXISTS surveys_responses
(
 ProviderNumber string,
 HospitalName string,
 Address string,
 City string,
 State string,
 ZIPCode string,
 CountyName string,
 Communication_with_Nurses_Achievement_points string,
 Communication_with_Nurses_improvement_points string,
 Communication_with_Nurses_Dimension_score string,
Communication_with_Doctors_Achievement_points string,
 Communication_with_Doctors_improvement_points string,
 Communication_with_Doctors_Dimension_score string,
Communication_with_Hospital_staff_Achievement_points string,
 Communication_with_Hospital_staff_improvement_points string,
 Communication_with_Hospital_staff_Dimension_score string,
Pain_management_Achievement_points string,
 Pain_management_improvement_points string,
 Pain_management_Dimension_score string,
Communication_about_Medicine_Achievement_points string,
 Communication_About_Medicine_improvement_points string,
 Communication_About_Medicine_Dimension_score string,
Cleanliness_and_Quietness_of_Hospital_environment_Achievement_points string,
Cleanliness_and_Quietness_of_Hospital_environment_improvement_points string,
 Cleanliness_and_Quietness_of_Hospital_environment_Dimension_score string,
Discharge_information_Achievement_points string,
 Discharge_information_improvement_points string,
 Discharge_information_Dimension_score string,
Overall_rating_of_hospital_Achievement_points string,
Overall_rating_of_hospital_improvement_points string,
Overall_rating_of_hospital_Dimension_score string,
 HCAHPS_Base_score string,
 HCAHPS_consistency_score string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',quit
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare'
;

use sql_project;
select *from data;
#q1
select sum(transfusionsummary) as Transfusion_Summary,
sum(hypercalcemiasummary) as Hypercalcemia_summary,
sum(Serumphosphorussummary) as Serumphosphorus_summary,
sum(hospitalizationsummary) as Hospitalization_summary,
sum(hospitalreadmissionsummary) as Readmission_summary,
sum(survivalsummary) as Survival_summary,
sum(fistulasummary) as Fistula_summary,
sum(cathetersummary) as catheter_summary from data;
#Q2
SELECT
    `Profit Non-Profit`,
    COUNT(*) AS Facilities
FROM
    `data`
GROUP BY
    `Profit Non-Profit`;
#Q3
SELECT ChainOrganization,count(*) as no_score_count
FROM data where totalperformancescore = 'no_score'
GROUP BY ChainOrganization
ORDER BY TotalPerformanceScore DESC
LIMIT 10;
  #Q4
  SELECT count(DialysisStations) as dialysis_station_stats, State
FROM data
GROUP BY State
order by count(DialysisStations) desc;
#Q5
select Count(patientTransfusioncategorytext) as '# of category text'
 from data where patientTransfusioncategorytext = 'As expected'
 union all
 select Count(patienthospitalizationcategorytext) 
 from data where patienthospitalizationcategorytext = 'As expected' 
 union all
 select Count(PatientHospitalReadmissionCategory) 
 from data where PatientHospitalReadmissionCategory = 'As expected' 
 union all
 select Count(PatientInfectioncategorytext) 
 from data where PatientInfectioncategorytext = 'As expected' 
 union all
 select Count(FistulaCategoryText) 
 from data where FistulaCategoryText = 'As expected'
 union all
  select Count(SWRCategoryText) 
 from data where SWRCategoryText = 'As expected'
 union all
  select Count(PPPWCategoryText) 
 from data where PPPWCategoryText = 'As expected';


#Q6
SELECT ROUND(AVG(PaymentReductionPercentage) * 100, 3) AS Average_Payment_Reduction_Rate
FROM data;
select *from data;



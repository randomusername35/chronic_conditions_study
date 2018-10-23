
/*
 *
 * Task code generated by SAS® Studio 5.1
 *
 * Generated on '10/17/18, 11:07 AM'
 * Generated by 'videmo'
 * Generated on server 'sasserver'
 * Generated on SAS platform 'Linux LIN X64 2.6.32-696.18.7.el6.x86_64'
 * Generated on SAS version 'V.03.04M0P071118'
 * Generated on browser 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'
 * Generated on web client 'https://sasserver.demo.sas.com/SASStudioV/main?locale=en_US&launchedFromAppSwitcher=true'
 */

ods noproctitle;

/*** Analyze categorical variables ***/
title "Frequencies for Categorical Variables";

proc freq data=PUBLIC.CDI (datalimit=ALL);
        tables LocationAbbr LocationDesc DataSource Topic Response
                DataValueUnit DataValueType / plots=(freqplot);
run;

/*** Analyze numeric variables ***/
title "Descriptive Statistics for Numeric Variables";

proc means data=PUBLIC.CDI n nmiss min mean median max std;
        var YearStart YearEnd DataValue DataValueAlt LowConfidenceLimit
                HighConfidenceLimit LocationID;
run;

title;

proc univariate data=PUBLIC.CDI noprint;
        histogram YearStart YearEnd DataValue DataValueAlt LowConfidenceLimit
                HighConfidenceLimit LocationID;
run;

alter session set nls_date_format = 'hh24:mi:ss dC1.mM6.yyyy';
set pages 100 lines 120
column PM_INSTANCE_ID    format 9999999999999

clear screen
SELECT E.PM_TRANS_DEFN_SET, E.PM_TRANS_DEFN_ID
,      E.DESCR60
,      E.PM_TRANS_LABEL
,      'C1:'||E.PM_CONTEXTID_1||'='||C1.PM_CONTEXT_LABEL
,      'C2:'||E.PM_CONTEXTID_1||'='||C2.PM_CONTEXT_LABEL
,      'C3:'||E.PM_CONTEXTID_1||'='||C3.PM_CONTEXT_LABEL
,      'M1:'||E.PM_METRICID_1||'='||M1.PM_METRICLABEL, M1.PM_METRICTYPE, X1.XLATLONGNAME
,      'M2:'||E.PM_METRICID_2||'='||M2.PM_METRICLABEL, M2.PM_METRICTYPE, X2.XLATLONGNAME
,      'M3:'||E.PM_METRICID_3||'='||M3.PM_METRICLABEL, M3.PM_METRICTYPE, X3.XLATLONGNAME
,      'M4:'||E.PM_METRICID_4||'='||M4.PM_METRICLABEL, M4.PM_METRICTYPE, X4.XLATLONGNAME
,      'M5:'||E.PM_METRICID_5||'='||M5.PM_METRICLABEL, M5.PM_METRICTYPE, X5.XLATLONGNAME
,      'M6:'||E.PM_METRICID_6||'='||M6.PM_METRICLABEL, M6.PM_METRICTYPE, X6.XLATLONGNAME
,      'M7:'||E.PM_METRICID_7||'='||M7.PM_METRICLABEL, M7.PM_METRICTYPE, X7.XLATLONGNAME
--       E.PM_FILTER_LEVEL
--       E.PM_SAMPLING_ENABLE
,      E.PM_ADDTNL_LABEL
FROM   PSPMTRANSDEFN E
,      PSPMCONTEXTDEFN C1
,      PSPMCONTEXTDEFN C2
,      PSPMCONTEXTDEFN C3
,      PSPMMETRICDEFN M1
,      PSPMMETRICDEFN M2 
,      PSPMMETRICDEFN M3
,      PSPMMETRICDEFN M4
,      PSPMMETRICDEFN M5
,      PSPMMETRICDEFN M6
,      PSPMMETRICDEFN M7
,      PSXLATITEM X1
,      PSXLATITEM X2
,      PSXLATITEM X3
,      PSXLATITEM X4
,      PSXLATITEM X5
,      PSXLATITEM X6
,      PSXLATITEM X7
WHERE  M1.PM_METRICID(+) = E.PM_METRICID_1 
AND    M2.PM_METRICID(+) = E.PM_METRICID_2 
AND    M3.PM_METRICID(+) = E.PM_METRICID_3 
AND    M4.PM_METRICID(+) = E.PM_METRICID_4
AND    M5.PM_METRICID(+) = E.PM_METRICID_5 
AND    M6.PM_METRICID(+) = E.PM_METRICID_6 
AND    M7.PM_METRICID(+) = E.PM_METRICID_7 
AND    C1.PM_CONTEXTID(+) = E.PM_CONTEXTID_1
AND    C2.PM_CONTEXTID(+) = E.PM_CONTEXTID_2
AND    C3.PM_CONTEXTID(+) = E.PM_CONTEXTID_3
AND    X1.FIELDNAME(+) = 'PM_METRICTYPE'
AND    X2.FIELDNAME(+) = 'PM_METRICTYPE'
AND    X3.FIELDNAME(+) = 'PM_METRICTYPE'
AND    X4.FIELDNAME(+) = 'PM_METRICTYPE'
AND    X5.FIELDNAME(+) = 'PM_METRICTYPE'
AND    X6.FIELDNAME(+) = 'PM_METRICTYPE'
AND    X7.FIELDNAME(+) = 'PM_METRICTYPE'
AND    X1.FIELDVALUE(+) = M1.PM_METRICTYPE
AND    X2.FIELDVALUE(+) = M2.PM_METRICTYPE
AND    X3.FIELDVALUE(+) = M3.PM_METRICTYPE
AND    X4.FIELDVALUE(+) = M4.PM_METRICTYPE
AND    X5.FIELDVALUE(+) = M5.PM_METRICTYPE
AND    X6.FIELDVALUE(+) = M6.PM_METRICTYPE
AND    X7.FIELDVALUE(+) = M7.PM_METRICTYPE
AND    E.PM_TRANS_DEFN_ID = 115
;


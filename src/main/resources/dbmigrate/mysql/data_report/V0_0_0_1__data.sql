

INSERT INTO REPORT_SUBJECT(ID,NAME,PRIORITY) VALUES(1,'活跃流程',1);

INSERT INTO REPORT_QUERY(ID,CONTENT,SUBJECT_ID) VALUES(1,'SELECT PD.NAME_ AS NAME,COUNT(PD.NAME_) AS C
 FROM ACT_HI_PROCINST PI,ACT_RE_PROCDEF PD
 WHERE PI.PROC_DEF_ID_=PD.ID_ AND PD.TENANT_ID_=?
 GROUP BY PD.NAME_',1);

INSERT INTO REPORT_DIM(ID,CODE,NAME,QUERY_ID) VALUES(1,'NAME','流程名称',1);
INSERT INTO REPORT_DIM(ID,CODE,NAME,QUERY_ID) VALUES(2,'C','数量',1);

INSERT INTO REPORT_INFO(ID,CODE,NAME,TYPE,CONTENT,QUERY_ID) VALUES(1,'mostActiveProcess','最活跃流程','pie','{"name":"name","count":"c"}',1);


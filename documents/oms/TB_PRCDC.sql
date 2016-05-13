/*
================================================================================
表结构代码:TB_PRCDC
表结构名称:扣率调整单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRCDC;
drop index AK_TB_PRCDC;
drop table TB_PRCDC;
create table TB_PRCDC  (
   PRCDC_ID             INTEGER                       not null,    /*扣率调整ID           */ 
   PRCDC001             INTEGER                       not null,    /*扣率调整单别         */ 
   PRCDC002             VARCHAR2(30)                  not null,    /*扣率调整单号         */ 
   PRCDC003             DATE,                                      /*调整开始日期         */ 
   PRCDC004             DATE,                                      /*调整结束日期         */ 
   PRCDC005             INTEGER                       not null,    /*调整组织             */ 
   PRCDC006             INTEGER                       not null,    /*调整原因             */ 
   PRCDC007             INTEGER,                                   /*供应商               */ 
   PRCDC008             VARCHAR2(1)                   not null,    /*调整方式             */ 
   PRCDC009             VARCHAR2(30),                              /*销售单号             */ 
   PRCDC010             INTEGER,                                   /*商品                 */ 
   PRCDC011             VARCHAR2(255),                             /*备注                 */ 
   PRCDC012             VARCHAR2(1),                               /*审核状态             */ 
   PRCDC013             INTEGER,                                   /*录入人               */ 
   PRCDC014             DATE,                                      /*录入时间             */ 
   PRCDC015             INTEGER,                                   /*审核人               */ 
   PRCDC016             DATE,                                      /*审核时间             */ 
   PRCDC017             INTEGER,                                   /*来源单据ID           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员               */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门           */                               
   CREATE_DATE          DATE,                                      /*建立日期               */
   MODIFIER             VARCHAR2(12),                              /*修改人员               */
   MODI_DATE            DATE,                                      /*修改日期               */
   FLAG                 NUMBER(1),                                 /*资料状态               */
   constraint PK_TB_PRCDC primary key (PRCDC_ID)
);
create unique index AK_TB_PRCDC on TB_PRCDC (PRCDC001,PRCDC002);
create sequence SEQ_TB_PRCDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCDC to public;
grant index  on TB_PRCDC to public;
grant update on TB_PRCDC to public; 
grant delete on TB_PRCDC to public;  
grant insert on TB_PRCDC to public; 
grant select on SEQ_TB_PRCDC to public;   
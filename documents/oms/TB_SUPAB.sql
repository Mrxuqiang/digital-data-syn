/*
================================================================================
表结构代码:TB_SUPAB
表结构名称:摊位异动单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAB;
drop index AK_TB_SUPAB;
drop table TB_SUPAB;
create table TB_SUPAB  (
   SUPAB_ID             INTEGER                         not null,  /*摊位异动单ID        */
   SUPAB001             INTEGER                         not null,  /*单别ID              */
   SUPAB002             VARCHAR2(30)                    not null,  /*单据编号            */
   SUPAB003             DATE                            not null,  /*单据日期            */
   SUPAB004             INTEGER                         not null,  /*摊位编号ID          */
   SUPAB005             VARCHAR2(1)                     not null,  /*异动原因 0.新增 1.调整 2.停用 3.启用  */
   SUPAB006             DATE                            not null,  /*生效日期            */
   SUPAB007             NUMBER(2)                       not null,  /*版本流水号          */
   SUPAB008             VARCHAR2(100),                             /*备注                */
   SUPAB009             INTEGER                         not null,  /*经营小类ID          */
   SUPAB010             INTEGER                         not null,  /*经营中类ID          */
   SUPAB011             INTEGER                         not null,  /*经营大类ID          */
   SUPAB012             INTEGER                         not null,  /*所属楼栋ID          */
   SUPAB013             INTEGER                         not null,  /*所属楼层ID          */
   SUPAB014             VARCHAR2(1)                     not null,  /*摊位类型            */
   SUPAB015             INTEGER,                                   /*录入人ID            */
   SUPAB016             DATE,                                      /*录入日期            */
   SUPAB017             INTEGER,                                   /*审核人ID            */
   SUPAB018             DATE,                                      /*审核日期            */
   SUPAB019             VARCHAR2(1)                     not null,  /*审核状态            */
   SUPAB020             VARCHAR2(1),                               /*是否签核            */
   SUPAB021             VARCHAR2(30),                              /*签核单号            */
   SUPAB022             VARCHAR2(1),                               /*签核码              */
   SUPAB023             DATE,                                      /*截止日期            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAB primary key (SUPAB_ID)
);
create unique index AK_TB_SUPAB on TB_SUPAB (SUPAB002);
create sequence SEQ_TB_SUPAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAB to public;
grant index  on TB_SUPAB to public;
grant update on TB_SUPAB to public; 
grant delete on TB_SUPAB to public;  
grant insert on TB_SUPAB to public; 
grant select on SEQ_TB_SUPAB to public;   
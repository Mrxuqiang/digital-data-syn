/*
================================================================================
表结构代码:TB_MEDCF
表结构名称:媒体合同分摊单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEDCF;
drop index AK_TB_MEDCF;
drop table TB_MEDCF;
create table TB_MEDCF  (
   MEDCF_ID             INTEGER                         not null,  /*媒体合同分摊单ID    */
   MEDCF001             INTEGER                         not null,  /*单别                */
   MEDCF002             VARCHAR2(30)                    not null,  /*分摊单号            */
   MEDCF003             DATE                            not null,  /*分摊日期            */
   MEDCF004             INTEGER                         not null,  /*营运组织ID          */
   MEDCF005             INTEGER                         not null,  /*媒体合同号ID        */
   MEDCF006             INTEGER                         not null,  /*费用项ID            */
   MEDCF007             INTEGER                         not null,  /*业务部门ID          */
   MEDCF008             INTEGER                         not null,  /*业务人员ID          */
   MEDCF009             VARCHAR2(255),                             /*备注                */
   MEDCF010             INTEGER,                                   /*录入ID              */
   MEDCF011             DATE,                                      /*录入日期            */
   MEDCF012             INTEGER,                                   /*审核ID              */
   MEDCF013             DATE,                                      /*审核日期            */
   MEDCF014             VARCHAR2(1)                     not null,  /*审核状态            */
   MEDCF015             VARCHAR2(1),                               /*是否签核            */
   MEDCF016             VARCHAR2(30),                              /*签核单号            */
   MEDCF017             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_MEDCF primary key (MEDCF_ID)
);
create unique index AK_TB_MEDCF on TB_MEDCF (MEDCF002,MEDCF004);
create sequence SEQ_TB_MEDCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDCF to public;
grant index  on TB_MEDCF to public;
grant update on TB_MEDCF to public; 
grant delete on TB_MEDCF to public;  
grant insert on TB_MEDCF to public; 
grant select on SEQ_TB_MEDCF to public;   
/*
================================================================================
表结构代码:TB_BILBA
表结构名称:支出单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILBA;
drop index AK_TB_BILBA;
drop table TB_BILBA;
create table TB_BILBA  (
   BILBA_ID             INTEGER                         not null,  /*支出单ID             */
   BILBA001             INTEGER                         not null,  /*单别ID               */
   BILBA002             VARCHAR2(30)                    not null,  /*单据编号             */
   BILBA003             DATE                            not null,  /*单据日期             */
   BILBA004             INTEGER                         not null,  /*公司ID               */
   BILBA005             INTEGER                         not null,  /*营运组织ID           */
   BILBA006             INTEGER                         not null,  /*客商ID               */
   BILBA007             INTEGER,                                   /*摊位ID               */
   BILBA008             INTEGER,                                   /*合同ID               */
   BILBA009             INTEGER                         not null,  /*业务部门ID           */
   BILBA010             INTEGER                         not null,  /*业务人员ID           */
   BILBA011             VARCHAR2(255),                             /*备注                 */
   BILBA012             VARCHAR2(1)                     not null,  /*单据来源             */
   BILBA013             INTEGER,                                   /*来源单号ID           */
   BILBA014             INTEGER,                                   /*录入人ID             */
   BILBA015             DATE,                                      /*录入日期             */
   BILBA016             INTEGER,                                   /*审核人ID             */
   BILBA017             DATE,                                      /*审核日期             */
   BILBA018             VARCHAR2(1)                     not null,  /*审核状态             */
   BILBA019             VARCHAR2(1),                               /*是否签核             */
   BILBA020             VARCHAR2(30),                              /*签核单号             */
   BILBA021             VARCHAR2(1),                               /*签核码               */
   BILBA022             VARCHAR2(16),                              /*来源单号             */
   BILBA023             INTEGER                         not null,  /*结算商户ID           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_BILBA primary key (BILBA_ID)
);
create unique index AK_TB_BILBA on TB_BILBA (BILBA002,BILBA005);
create sequence SEQ_TB_BILBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILBA to public;
grant index  on TB_BILBA to public;
grant update on TB_BILBA to public; 
grant delete on TB_BILBA to public;  
grant insert on TB_BILBA to public; 
grant select on SEQ_TB_BILBA to public;   
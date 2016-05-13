/*
================================================================================
表结构代码:TB_AWBBA
表结构名称:单据与凭证关系对照表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AWBBA;
drop index AK_TB_AWBBA;
drop table TB_AWBBA;
create table TB_AWBBA  (
   AWBBA_ID             INTEGER                         not null,  /*对照表ID             */
   AWBBA001             INTEGER                         not null,  /*模块ID               */
   AWBBA002             INTEGER                         not null,  /*单别ID               */
   AWBBA003             INTEGER                         not null,  /*单据ID               */
   AWBBA004             VARCHAR2(30),                              /*单据号               */
   AWBBA005             INTEGER,                                   /*凭证ID               */
   AWBBA006             INTEGER,                                   /*临时凭证ID           */
   AWBBA007             DATE,                                      /*单据日期             */
   AWBBA008             INTEGER,                                   /*录入人ID             */
   AWBBA009             INTEGER,                                   /*审核人ID             */
   AWBBA010             INTEGER,                                   /*币种ID               */
   AWBBA011             NUMBER(16,2),                              /*原币金额             */
   AWBBA012             NUMBER(16,2),                              /*本币金额             */
   AWBBA013             INTEGER,                                   /*凭证类别ID           */
   AWBBA014             VARCHAR2(1),                               /*凭证状态             */
   AWBBA015             INTEGER,                                   /*公司ID               */
   AWBBA016             INTEGER,                                   /*会计主体ID           */
   AWBBA017             INTEGER,                                   /*核算账套ID           */
   AWBBA022             VARCHAR2(255),                             /*备注                 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_AWBBA primary key (AWBBA_ID)
);
create unique index AK_TB_AWBBA on TB_AWBBA (AWBBA016,AWBBA017,AWBBA002,AWBBA003);
create sequence SEQ_TB_AWBBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBBA to public;
grant index  on TB_AWBBA to public;
grant update on TB_AWBBA to public; 
grant delete on TB_AWBBA to public;  
grant insert on TB_AWBBA to public; 
grant select on SEQ_TB_AWBBA to public;   
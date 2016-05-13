/*
================================================================================
表结构代码:TB_PMTII
表结构名称:收券规则定义
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTII;
drop index AK_TB_PMTII;
drop table TB_PMTII;
create table TB_PMTII  (
   PMTII_ID             INTEGER                         not null,  /*收券规则定义ID    */
   PMTII001             INTEGER                         not null,  /*交款收券单ID      */
   PMTII002             INTEGER                         not null,  /*券种ID            */
   PMTII003             VARCHAR2(10)                            ,  /*券种类型          */
   PMTII004             VARCHAR2(1)                             ,  /*满额收券          */
   PMTII005             NUMBER(12,2)                            ,  /*现金额            */
   PMTII006             NUMBER(12,2)                            ,  /*收券额            */
   PMTII007             VARCHAR2(1)                             ,  /*会员是否积分（0.不积分，1.积分）*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER,                                    /*资料状态          */
   constraint PK_TB_PMTII primary key (PMTII_ID)
);
create sequence SEQ_TB_PMTII minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTII to public;
grant index  on TB_PMTII to public;
grant update on TB_PMTII to public; 
grant delete on TB_PMTII to public;  
grant insert on TB_PMTII to public; 
grant select on SEQ_TB_PMTII to public;   
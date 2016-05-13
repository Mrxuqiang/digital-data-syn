/*
================================================================================
表结构代码:TB_PUBBR
表结构名称:品牌提成率对照子表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBBR;
drop index AK_TB_PUBBR;
drop table TB_PUBBR;
create table TB_PUBBR  (
   PUBBR_ID             INTEGER                         not null,  /*品牌提成率子ID       */
   PUBBR001             INTEGER                         not null,  /*品牌提成率主ID       */
   PUBBR002             NUMBER(4,2),                               /*开始折扣率           */
   PUBBR003             NUMBER(4,2) ,                              /*结束折扣率           */
   PUBBR004             NUMBER(4) ,                                /*提成率               */   
   PUBBR005             VARCHAR2(255),                             /*备注                 */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_PUBBR primary key (PUBBR_ID)
);
create unique index AK_TB_PUBBR on TB_PUBBR (PUBBR001,PUBBR002,PUBBR003,FLAG);
create sequence SEQ_TB_PUBBR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBR to public;
grant index  on TB_PUBBR to public;
grant update on TB_PUBBR to public; 
grant delete on TB_PUBBR to public;  
grant insert on TB_PUBBR to public; 
grant select on SEQ_TB_PUBBR to public;   
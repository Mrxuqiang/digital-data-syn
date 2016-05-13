/*
================================================================================
表结构代码:TB_CONBW
表结构名称:合同月租金表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBW;
drop index AK_TB_CONBW;
drop table TB_CONBW;
create table TB_CONBW  (
   CONBW_ID             INTEGER                         not null,  /*合同月租金ID         */
   CONBW001             INTEGER                         not null,  /*合同ID               */
   CONBW002             VARCHAR2(30)                    not null,  /*合同号               */
   CONBW003             DATE,                                      /*费用起日             */
   CONBW004             DATE,                                      /*费用止日             */      
   CONBW005             VARCHAR2(6),                               /*合同期间             */
   CONBW006             INTEGER,                                   /*合同期间租金         */
   CONBW007             NUMBER(12,2),                              /*合同月租金           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER,                                 /*资料状态             */
   constraint PK_TB_CONBW primary key (CONBW_ID)
);
create unique index AK_TB_CONBW on TB_CONBW (CONBW001,CONBW003,CONBW004,FLAG);
create sequence SEQ_TB_CONBW minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBW to public;
grant index  on TB_CONBW to public;
grant update on TB_CONBW to public; 
grant delete on TB_CONBW to public;  
grant insert on TB_CONBW to public; 
grant select on SEQ_TB_CONBW to public;   
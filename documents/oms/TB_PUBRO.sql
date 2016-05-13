/*
================================================================================
表结构代码:TB_PUBRO
表结构名称:对应科目对方表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRO;
drop index AK_TB_PUBRO;
drop table TB_PUBRO;
create table TB_PUBRO  (
   PUBRO_ID             INTEGER                         not null,  /*对应科目对方ID       */
   PUBRO001             INTEGER                         not null,  /*对应科目主ID         */
   PUBRO002             INTEGER                         not null,  /*会计科目ID           */
   PUBRO003             VARCHAR2(20),                              /*辅助核算项标识       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBRO primary key (PUBRO_ID)
);
create sequence SEQ_TB_PUBRO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRO to public;
grant index  on TB_PUBRO to public;
grant update on TB_PUBRO to public; 
grant delete on TB_PUBRO to public;  
grant insert on TB_PUBRO to public; 
grant select on SEQ_TB_PUBRO to public;   
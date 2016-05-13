/*
================================================================================
表结构代码:TB_SEREJ
表结构名称:赠品批次明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SEREJ;
drop index AK_TB_SEREJ;
drop table TB_SEREJ;
create table TB_SEREJ  (
   SEREJ_ID             INTEGER                         not null,  /*批次明细ID                */
   SEREJ001             VARCHAR2(30)                    not null,  /*主批号;年月日6位+6位流水  */
   SEREJ002             INTEGER                         not null,  /*部门ID                    */
   SEREJ003             VARCHAR2(1)                     not null,  /*业务类型 1.入库 2.领出 3.领入 4.发放 5.收回    */
   SEREJ004             INTEGER                         not null,  /*单据ID                    */
   SEREJ005             INTEGER                         not null,  /*单据明细ID                */
   SEREJ006             INTEGER                         not null,  /*赠品ID                    */
   SEREJ007             NUMBER(18,3)                    not null,  /*批次数量                  */
   SEREJ008             NUMBER(12,2)                    not null,  /*批次进价                  */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门              */                               
   CREATE_DATE          DATE,                                      /*建立日期                  */
   MODIFIER             VARCHAR2(12),                              /*修改人员                  */
   MODI_DATE            DATE,                                      /*修改日期                  */
   FLAG                 NUMBER(1),                                 /*资料状态                  */
   constraint PK_TB_SEREJ primary key (SEREJ_ID)
);
create unique index AK_TB_SEREJ on TB_SEREJ (SEREJ001);
create sequence SEQ_TB_SEREJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREJ to public;
grant index  on TB_SEREJ to public;
grant update on TB_SEREJ to public; 
grant delete on TB_SEREJ to public;  
grant insert on TB_SEREJ to public; 
grant select on SEQ_TB_SEREJ to public;   
/*
================================================================================
表结构代码:TB_BILAD
表结构名称:先行赔付单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILAD;
drop index AK_TB_BILAD;
drop table TB_BILAD;
create table TB_BILAD  (
   BILAD_ID             INTEGER                         not null,  /*先行赔付子ID         */
   BILAD001             INTEGER                         not null,  /*先行赔付主ID         */
   BILAD002             INTEGER,                                   /*销售单明细ID         */
   BILAD003             INTEGER,                                   /*商品ID               */
   BILAD004             VARCHAR2(80),                              /*规格                 */
   BILAD005             VARCHAR2(40),                              /*型号                 */
   BILAD006             NUMBER(18,3),                              /*数量                 */
   BILAD007             NUMBER(22,2),                              /*金额                 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER,                                 /*资料状态             */
   constraint PK_TB_BILAD primary key (BILAD_ID)
);
create unique index AK_TB_BILAD on TB_BILAD (BILAD001,BILAD002,FLAG);
create sequence SEQ_TB_BILAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAD to public;
grant index  on TB_BILAD to public;
grant update on TB_BILAD to public; 
grant delete on TB_BILAD to public;  
grant insert on TB_BILAD to public; 
grant select on SEQ_TB_BILAD to public;   
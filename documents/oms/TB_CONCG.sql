/*
================================================================================
表结构代码:TB_CONCG
表结构名称:合同变更周期性比例费用子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONCG;
drop index AK_TB_CONCG;
drop table TB_CONCG;
create table TB_CONCG  (
   CONCG_ID             INTEGER                         not null,  /*合同变更周期性比例费用明细ID*/
   CONCG001             INTEGER                         not null,  /*合同变更ID                  */
   CONCG002             INTEGER                         not null,  /*合同变更周期性比例费用ID    */
   CONCG003             DATE                            not null,  /*开始日期			 */
   CONCG004             DATE                            not null,  /*结束日期			 */
   CONCG005             NUMBER(12,2)                    not null,  /*基准起			 */
   CONCG006             NUMBER(12,2),                              /*基准止			 */
   CONCG007             NUMBER(12,2)                    not null,  /*基准比例(%)		 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员			 */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门		 */                               
   CREATE_DATE          DATE,                                      /*建立日期			 */
   MODIFIER             VARCHAR2(12),                              /*修改人员			 */
   MODI_DATE            DATE,                                      /*修改日期			 */
   FLAG                 NUMBER(1),                                 /*资料状态			 */
   constraint PK_TB_CONCG primary key (CONCG_ID)
);
create unique index AK_TB_CONCG on TB_CONCG (CONCG001,CONCG002,CONCG003,CONCG005);
create sequence SEQ_TB_CONCG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCG to public;
grant index  on TB_CONCG to public;
grant update on TB_CONCG to public; 
grant delete on TB_CONCG to public;  
grant insert on TB_CONCG to public; 
grant select on SEQ_TB_CONCG to public;   
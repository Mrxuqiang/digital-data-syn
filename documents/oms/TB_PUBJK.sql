/*
20130917 add by gaoxl for 红星
*/
/*
================================================================================
表结构代码:TB_PUBJK
表结构名称:商场费用项表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBJK;
drop index AK_TB_PUBJK;
drop table TB_PUBJK;
create table TB_PUBJK  (
   PUBJK_ID             INTEGER                         not null,  /*商场费用项id         */
   PUBJK001             INTEGER                         not null,  /*商场ID                 */   
   PUBJK002             INTEGER                         not null,  /*费用项ID               */
   PUBJK003             VARCHAR2(16),                              /*所属公司代码           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员               */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门           */                               
   CREATE_DATE          DATE,                                      /*建立日期               */
   MODIFIER             VARCHAR2(12),                              /*修改人员               */
   MODI_DATE            DATE,                                      /*修改日期               */
   FLAG                 NUMBER,                                    /*资料状态               */
   constraint PK_TB_PUBJK primary key (PUBJK_ID)
);
create unique index AK_TB_PUBJK on TB_PUBJK (PUBJK001,PUBJK002,FLAG);
create sequence SEQ_TB_PUBJK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJK to public;
grant index  on TB_PUBJK to public;
grant update on TB_PUBJK to public; 
grant delete on TB_PUBJK to public;  
grant insert on TB_PUBJK to public; 
grant select on SEQ_TB_PUBJK to public;   
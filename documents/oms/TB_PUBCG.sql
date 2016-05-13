/*
================================================================================
表结构代码:TB_PUBCG
表结构名称:部门属性表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBCG;
drop index AK_TB_PUBCG;
drop table TB_PUBCG;
create table TB_PUBCG  (
   PUBCG_ID             INTEGER                         not null,  /*部门属性ID                 */
   PUBCG001             VARCHAR2(4)                     not null,  /*部门属性代码               */
   PUBCG002             VARCHAR2(20)                    not null,  /*部门属性名称               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员			*/
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门		*/                               
   CREATE_DATE          DATE,                                      /*建立日期			*/
   MODIFIER             VARCHAR2(12),                              /*修改人员			*/
   MODI_DATE            DATE,                                      /*修改日期			*/
   FLAG                 NUMBER(1),                                 /*资料状态			*/
   constraint PK_TB_PUBCG primary key (PUBCG_ID)
);
create unique index AK_TB_PUBCG on TB_PUBCG (PUBCG001);
create sequence SEQ_TB_PUBCG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCG to public;
grant index  on TB_PUBCG to public;
grant update on TB_PUBCG to public; 
grant delete on TB_PUBCG to public;  
grant insert on TB_PUBCG to public; 
grant select on SEQ_TB_PUBCG to public;   
/*
================================================================================
表结构代码:TB_PUBHJ
表结构名称:商品组装信息表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHJ;
drop index AK_TB_PUBHJ;
drop table TB_PUBHJ;
create table TB_PUBHJ  (
   PUBHJ_ID             INTEGER                         not null,  /*组装项ID          */
   PUBHJ001             INTEGER                         not null,  /*商品ID            */
   PUBHJ002             INTEGER                         not null,  /*组装成分商品ID    */
   PUBHJ003             INTEGER                         not null,  /*成分数量          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PUBHJ primary key (PUBHJ_ID)
);
create unique index AK_TB_PUBHJ on TB_PUBHJ (PUBHJ001,PUBHJ002);
create sequence SEQ_TB_PUBHJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHJ to public;
grant index  on TB_PUBHJ to public;
grant update on TB_PUBHJ to public; 
grant delete on TB_PUBHJ to public;  
grant insert on TB_PUBHJ to public; 
grant select on SEQ_TB_PUBHJ to public;   
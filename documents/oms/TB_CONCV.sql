/*
================================================================================
表结构代码:TB_CONCV
表结构名称:合同主表打印信息表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONCV;
drop index AK_TB_CONCV;
drop table TB_CONCV;
create table TB_CONCV  (
   CONCV_ID             INTEGER                         not null,  /*合同主表打印信息id  */
   CONCV001             INTEGER                         not null,  /*合同ID          */
   CONCV002             INTEGER                         ,  /*担保金方式       */
   CONCV003             INTEGER                         ,  /*商品保质期       */
   CONCV004             INTEGER                         ,  /*一次返还期限       */
   CONCV005             NUMBER(5,2)                     ,  /*最低折扣率       */
   CONCV006             INTEGER                         ,  /*退货方式       */
   CONCV007             INTEGER                         ,  /*违约金月数      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                             
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONCV primary key (CONCV_ID)
);
create unique index AK_TB_CONCV on TB_CONCV (CONCV001);
create sequence SEQ_TB_CONCV minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCV to public;
grant index  on TB_CONCV to public;
grant update on TB_CONCV to public; 
grant delete on TB_CONCV to public;  
grant insert on TB_CONCV to public; 
grant select on SEQ_TB_CONCV to public;   
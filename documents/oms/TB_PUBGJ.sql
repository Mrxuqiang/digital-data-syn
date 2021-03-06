/*
20140519 add by gaoxl for 批量账扣 增加允许账扣字段pubgj003
*/

/*
================================================================================
表结构代码:TB_PUBGJ
表结构名称:费用分类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGJ;
drop index AK_TB_PUBGJ;
drop table TB_PUBGJ;
create table TB_PUBGJ  (
   PUBGJ_ID             INTEGER                         not null,  /*费用分类ID         */
   PUBGJ001             VARCHAR2(4)                     not null,  /*费用分类代码       */
   PUBGJ002             VARCHAR2(30)                    not null,  /*费用分类名称       */
   PUBGJ003             VARCHAR2(1),                               /*核销分类标识       */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBGJ primary key (PUBGJ_ID)
);
create unique index AK_TB_PUBGJ on TB_PUBGJ (PUBGJ001);
create sequence SEQ_TB_PUBGJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGJ to public;
grant index  on TB_PUBGJ to public;
grant update on TB_PUBGJ to public; 
grant delete on TB_PUBGJ to public;  
grant insert on TB_PUBGJ to public; 
grant select on SEQ_TB_PUBGJ to public;   
/*
================================================================================
表结构代码:TB_PUBTH 
表结构名称:品牌条码解析方式对应表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBTH;
drop index AK_TB_PUBTH;
drop table TB_PUBTH;
create table TB_PUBTH  (
   PUBTH_ID             INTEGER                         not null,  /*品牌条码解析方式ID */
   PUBTH001             INTEGER                         not null,  /*品牌ID           */
   PUBTH002             VARCHAR2(1) ,                              /*规则             */  /*0.无1.bigzone2.红苹果*/
   PUBTH003             VARCHAR2(255),                             /*备注               */
   PUBTH004             INTEGER ,                                  /*公司ID             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_PUBTH primary key (PUBTH_ID)
);
create unique index AK_TB_PUBTH on TB_PUBTH (PUBTH_ID,PUBTH001,FLAG);
create sequence SEQ_TB_PUBTH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBTH to public;
grant index  on TB_PUBTH to public;
grant update on TB_PUBTH to public; 
grant delete on TB_PUBTH to public;  
grant insert on TB_PUBTH to public; 
grant select on SEQ_TB_PUBTH to public;   
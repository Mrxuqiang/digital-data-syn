/*
================================================================================
表结构代码:TB_PUBTG 
表结构名称:商品特定因子对照表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBTG;
drop index AK_TB_PUBTG;
drop table TB_PUBTG;
create table TB_PUBTG  (
   PUBTG_ID             INTEGER                         not null,  /*商品特定因子对照ID     */
   PUBTG001             INTEGER                         not null,  /*商品特定属性分类启用ID */
   PUBTG002             INTEGER                         not null,  /*特定因子ID             */
   PUBTG003             NUMBER(22,2)                    not null,  /*加价               */
   PUBTF004             VARCHAR2(255)                              /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_PUBTG primary key (PUBTG_ID)
);
create unique index AK_TB_PUBTG on TB_PUBTG (PUBTG001,PUBTG002,FLAG);
create sequence SEQ_TB_PUBTG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBTG to public;
grant index  on TB_PUBTG to public;
grant update on TB_PUBTG to public; 
grant delete on TB_PUBTG to public;  
grant insert on TB_PUBTG to public; 
grant select on SEQ_TB_PUBTG to public;   
================================================================================
表结构代码:TB_PUBTC
表结构名称:潜在用户活动概览表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBTC;
drop index AK_TB_PUBTC;
drop table TB_PUBTC;
create table TB_PUBTC  (
   PUBTC_ID             INTEGER                   not null,         /*卡片ID            */
   PUBTC001             INTEGER                   not null,         /*主表ID            */
   PUBTC002             DATE                      not null,         /*日期              */
   PUBTC003             INTEGER                   not null,         /*导购员            */
   PUBTC004             INTEGER                   not null，        /*活动方式          */--20110416 MODIFY BY XIECHUN 
   PUBTC005             VARCHAR2(8)               not null          /*阶段              */
   PUBTC006             VARCHAR2(255),                              /*备注              */
   PUBTC007             VARCHAR2(255),                              /*对应措施          */
   PUBTC008             VARCHAR2(1),                                /*上次活动时间         */
   PUBTC009             INTEGER,                                    /*进店途径         */
   PUBTC010             INTEGER,                                     /*录入人*/
   PUBTC011             VARCHAR2(500),                              /*沟通内容*/
   PUBTC012             VARCHAR2(500),                              /*顾客反馈*/
   PUBTC013             DATE,                                       /* 录入时间*/
   CREATE_USER          VARCHAR2(12),                               /*建立人员          */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门      */                               
   CREATE_DATE          DATE,                                       /*建立日期          */
   MODIFIER             VARCHAR2(12),                               /*修改人员          */
   MODI_DATE            DATE,                                       /*修改日期          */
   FLAG                 NUMBER(1),                                  /*资料状态          */
   constraint PK_TB_PUBTC primary key (PUBTB_ID)
);
create unique index AK_TB_PUBTC on TB_PUBTC (PUBTA001);
create sequence SEQ_TB_PUBTC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBTC to public;
grant index  on TB_PUBTC to public;
grant update on TB_PUBTC to public; 
grant delete on TB_PUBTC to public;  
grant insert on TB_PUBTC to public; 
grant select on SEQ_TB_PUBTC to public;  

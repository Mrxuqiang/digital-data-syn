/*
================================================================================
表结构代码:TB_PUBNA
表结构名称:结算单位主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBNA;
drop index AK_TB_PUBNA;
drop table TB_PUBNA;
create table TB_PUBNA  (
   PUBNA_ID             INTEGER                         not null,   /*结算单位主ID            */
   PUBNA001             VARCHAR2(20)                    not null,   /*结算单位编码            */
   PUBNA002             VARCHAR2(200)                   not null,   /*结算单位名称            */
   PUBNA003             VARCHAR2(100),                              /*结算单位简称            */
   PUBNA004             VARCHAR2(100) ,                             /*外文名称                */   
   PUBNA005             VARCHAR2(20) ,                              /*助记码                  */
   PUBNA006             INTEGER,                                    /*结算中心ID              */
   PUBNA007             INTEGER                          not null,  /*对应公司ID              */
   PUBNA008             INTEGER,                                    /*对应部门ID              */
   PUBNA009             INTEGER,                                    /*上级结算单位ID          */
   PUBNA010             VARCHAR2(255),                              /*地址                    */
   CREATE_USER          VARCHAR2(12),                               /*建立人员                */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门            */                               
   CREATE_DATE          DATE,                                       /*建立日期                */
   MODIFIER             VARCHAR2(12),                               /*修改人员                */
   MODI_DATE            DATE,                                       /*修改日期                */
   FLAG                 NUMBER(1),                                  /*资料状态                */
   constraint PK_TB_PUBNA primary key (PUBNA_ID)
);
create unique index AK_TB_PUBNA on TB_PUBNA (PUBNA001);
create sequence SEQ_TB_PUBNA minvalue 1 NAxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNA to public;
grant index  on TB_PUBNA to public;
grant update on TB_PUBNA to public; 
grant delete on TB_PUBNA to public;  
grant insert on TB_PUBNA to public; 
grant select on SEQ_TB_PUBNA to public;   
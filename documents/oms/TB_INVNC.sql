/*
================================================================================
表结构代码:TB_INVNC
表结构名称:回库单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVNC;
drop index AK_TB_INVNC;
drop table TB_INVNC;
create table TB_INVNC  (
   INVNC_ID             INTEGER                         not null,  /*回库单ID            */
   INVNC001             VARCHAR2(30)                    not null,  /*回库单号            */
   INVNC002             INTEGER                         not null,  /*来源单类型：0-手工；1-收货单          */
   INVNC003             INTEGER                         not null,  /*来源单营运组织ID    */
   INVNC004             INTEGER ,                                  /*来源单ID            */
   INVNC005             INTEGER                         not null,  /*签收单ID            */
   INVNC006             INTEGER                         not null,  /*回货仓库，默认为发货仓库，可修改            */
   INVNC007             INTEGER                         not null,  /*录入人ID            */
   INVNC008             DATE                            not null,  /*录入日期            */
   INVNC009             INTEGER,  			           /*审核人ID            */
   INVNC010             DATE,                                      /*审核日期            */
   INVNC011             VARCHAR2(1)                     not null,  /*审核状态            */
   INVNC012             VARCHAR2(255),                             /*备注                */
   INVNC013             INTEGER                                    /*单别ID              */
   INVNC014             VARCHAR2(30)                            ,  /*来源单号            */--20111217 add by xiechun 
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_INVNC primary key (INVNC_ID)
);
create unique index AK_TB_INVNC on TB_INVNC (INVNC001);

create sequence SEQ_TB_INVNC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVNC to public;
grant index  on TB_INVNC to public;
grant update on TB_INVNC to public; 
grant delete on TB_INVNC to public;  
grant insert on TB_INVNC to public; 
grant select on SEQ_TB_INVNC to public;   

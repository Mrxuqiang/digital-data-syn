/*
================================================================================
表结构代码:TB_SALAD
表结构名称:客户协议单商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALAD;
drop index AK_TB_SALAD;
drop table TB_SALAD;
create table TB_SALAD  (
   SALAD_ID             INTEGER                         not null,  /*客户协议单商品ID    */
   SALAD001             INTEGER                         not null,  /*客户协议单ID        */
   SALAD002             INTEGER                         not null,  /*商品ID              */
   SALAD003             INTEGER                         not null,  /*单位ID              */
   SALAD004             INTEGER                         not null,  /*供应商ID            */
   SALAD005             VARCHAR2(1)                     not null,  /*经营方式            */
   SALAD006             NUMBER(12,2),                              /*采购价              */
   SALAD007             NUMBER(12,2),                              /*进价上涨幅度(%)     */
   SALAD008             NUMBER(12,2),                              /*原售价              */
   SALAD009             NUMBER(12,2),                              /*折扣率(%)           */
   SALAD010             NUMBER(12,2),                              /*批发价              */
   SALAD011             NUMBER(12,2),                              /*原结算扣率(%)       */
   SALAD012             NUMBER(12,2),                              /*新结算扣率(%)       */
   SALAD013             NUMBER(12,2),                              /*供应商分摊比率(%)   */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SALAD primary key (SALAD_ID)
);
create unique index AK_TB_SALAD on TB_SALAD (SALAD001,SALAD002);
create sequence SEQ_TB_SALAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALAD to public;
grant index  on TB_SALAD to public;
grant update on TB_SALAD to public; 
grant delete on TB_SALAD to public;  
grant insert on TB_SALAD to public; 
grant select on SEQ_TB_SALAD to public;   
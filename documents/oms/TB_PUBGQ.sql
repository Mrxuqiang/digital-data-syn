/*
================================================================================
表结构代码:TB_PUBGQ
表结构名称:客商品牌表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGQ;
drop index AK_TB_PUBGQ;
drop table TB_PUBGQ;
create table TB_PUBGQ  (
   PUBGQ_ID             INTEGER                         not null,  /*客商品牌ID         */
   PUBGQ001             INTEGER                         not null,  /*客商ID             */
   PUBGQ002             INTEGER                         not null,  /*品牌ID             */
   PUBGQ003             INTEGER,                                   /*产地ID             */
   PUBGQ004             VARCHAR2(255),                             /*备注               */
   PUBGQ005             VARCHAR2(255),                             /*品牌 描述          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGQ primary key (PUBGQ_ID)
);
create unique index AK_TB_PUBGQ on TB_PUBGQ (PUBGQ001,PUBGQ002);
create sequence SEQ_TB_PUBGQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGQ to public;
grant index  on TB_PUBGQ to public;
grant update on TB_PUBGQ to public; 
grant delete on TB_PUBGQ to public;  
grant insert on TB_PUBGQ to public; 
grant select on SEQ_TB_PUBGQ to public;   
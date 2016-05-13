/*
================================================================================
表结构代码:TB_INVEA
表结构名称:组装单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVEA;
drop index AK_TB_INVEA;
drop table TB_INVEA;
create table TB_INVEA  (
   INVEA_ID             INTEGER                        not null,     /*组装单ID        */
   INVEA001             INTEGER                        not null,     /*组装单别        */
   INVEA002             VARCHAR2(30)                   not null,     /*组装单号        */
   INVEA003             INTEGER                        not null,     /*组装商品        */
   INVEA004             NUMBER(18,3)                   not null,     /*组装数量        */
   INVEA005             INTEGER                        not null,     /*营运组织        */
   INVEA006             INTEGER,                                     /*组装部门        */
   INVEA007             INTEGER,                                     /*组装人员        */
   INVEA008             INTEGER                        not null,     /*组装仓库        */
   INVEA009             INTEGER,                                     /*组装库位        */ -- update by hansf 备用，可以为null
   INVEA010             VARCHAR2(1),                                 /*审核状态        */
   INVEA011             INTEGER,                                     /*录入人          */
   INVEA012             DATE,                                        /*录入日期        */
   INVEA013             INTEGER,                                     /*审核人          */
   INVEA014             DATE,                                        /*审核日期        */
   INVEA015             VARCHAR2(255),                               /*备注            */
   INVEA016             INTEGER,                                     /*维度1           */
   INVEA017             INTEGER,                                     /*维度2           */
   INVEA018             INTEGER,                                     /*维度3           */
   INVEA019             INTEGER,                                     /*维度4           */
   INVEA020             INTEGER,                                     /*维度5           */
   CREATE_USER          VARCHAR2(12),                                /*建立人员        */
   USER_GROUP           VARCHAR2(12),                                /*建立人员部门    */                               
   CREATE_DATE          DATE,                                        /*建立日期        */
   MODIFIER             VARCHAR2(12),                                /*修改人员        */
   MODI_DATE            DATE,                                        /*修改日期        */
   FLAG                 NUMBER(1),                                   /*资料状态        */
   constraint PK_TB_INVEA primary key (INVEA_ID)
);
create unique index AK_TB_INVEA on TB_INVEA (INVEA001,INVEA002);
create sequence SEQ_TB_INVEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVEA to public;
grant index  on TB_INVEA to public;
grant update on TB_INVEA to public; 
grant delete on TB_INVEA to public;  
grant insert on TB_INVEA to public; 
grant select on SEQ_TB_INVEA to public;   
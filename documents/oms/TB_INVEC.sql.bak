/*
================================================================================
表结构代码:TB_INVEC
表结构名称:拆解单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVEC;
drop index AK_TB_INVEC;
drop table TB_INVEC;
create table TB_INVEC  (
   INVEC_ID             INTEGER                        not null,     /*拆解单ID        */
   INVEC001             INTEGER                        not null,     /*拆解单别        */
   INVEC002             VARCHAR2(30)                   not null,     /*拆解单号        */
   INVEC003             INTEGER                        not null,     /*拆解商品        */
   INVEC004             NUMBER(18,3)                   not null,     /*拆解数量        */
   INVEC005             INTEGER                        not null,     /*营运组织        */
   INVEC006             INTEGER,                                     /*拆解部门        */
   INVEC007             INTEGER,                                     /*拆解人员        */
   INVEC008             INTEGER                        not null,     /*拆解仓库        */
   INVEC009             INTEGER                        ,     /*备用        */
   INVEC010             VARCHAR2(1),                                 /*审核状态        */
   INVEC011             INTEGER,                                     /*录入人          */
   INVEC012             DATE,                                        /*录入日期        */
   INVEC013             INTEGER,                                     /*审核人          */
   INVEC014             DATE,                                        /*审核日期        */
   INVEC015             VARCHAR2(255),                       /*备注            */
   INVEC016             INTEGER                        ,     /*维度1        */
   INVEC017             INTEGER                        ,     /*维度2        */
   INVEC018             INTEGER                        ,     /*维度3        */
   INVEC019             INTEGER                        ,     /*维度4        */
   INVEC020             INTEGER                        ,     /*维度5        */
   INVEC021             VARCHAR2(1),                                 /*商品服务属性  */
   INVEC022             VARCHAR2(1),                                 /*销售属性    */
   CREATE_USER          VARCHAR2(12),                                /*建立人员        */
   USER_GROUP           VARCHAR2(12),                                /*建立人员部门    */                               
   CREATE_DATE          DATE,                                        /*建立日期        */
   MODIFIER             VARCHAR2(12),                                /*修改人员        */
   MODI_DATE            DATE,                                        /*修改日期        */
   FLAG                 NUMBER(1),                                   /*资料状态        */
   constraint PK_TB_INVEC primary key (INVEC_ID)
);
create unique index AK_TB_INVEC on TB_INVEC (INVEC001,INVEC002);
create sequence SEQ_TB_INVEC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVEC to public;
grant index  on TB_INVEC to public;
grant update on TB_INVEC to public; 
grant delete on TB_INVEC to public;  
grant insert on TB_INVEC to public; 
grant select on SEQ_TB_INVEC to public;   
/*
================================================================================
表结构代码:TB_INVLA
表结构名称:库存借用单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVLA;
drop index AK_TB_INVLA;
drop table TB_INVLA;
create table TB_INVLA  (
   INVLA_ID             INTEGER                         not null,  /*库存借用单ID         */
   INVLA001             INTEGER                         not null,  /*单别             */
   INVLA002             VARCHAR2(30)                    not null,  /*库存借用单号         */
   INVLA003             DATE                            not null,  /*借用日期         */
   INVLA004             INTEGER                         not null,  /*营运组织         */
   INVLA005             INTEGER                         not null,  /*销售单ID         */
   INVLA006             INTEGER,                                   /*销售营运组织*/
   INVLA007             INTEGER,                                   /*导购员*/
   INVLA008             INTEGER,                                   /*录入人         */
   INVLA009             DATE,                                      /*录入时间             */
   INVLA010             VARCHAR2(1)                    not null,   /*审核状态        */
   INVLA011             INTEGER,                                   /*审核人  */
   INVLA012             DATE,                                      /*审核时间    */
   INVLA013             INTEGER,                                   /*借用人员   */                                  
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_INVLA primary key (INVLA_ID)
);
create unique index AK_TB_INVLA on TB_INVLA (INVLA002,INVLA004);
create sequence SEQ_TB_INVLA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVLA to public;
grant index  on TB_INVLA to public;
grant update on TB_INVLA to public; 
grant delete on TB_INVLA to public;  
grant insert on TB_INVLA to public; 
grant select on SEQ_TB_INVLA to public;   
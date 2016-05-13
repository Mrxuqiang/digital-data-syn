/*
================================================================================
表结构代码:TB_CONND
表结构名称:品类协议调整单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONND;
drop index AK_TB_CONND;
drop table TB_CONND;
create table TB_CONND  (
   CONND_ID             INTEGER                         not null,  /*品类协议调整明细ID          */
   CONND001             INTEGER                         not null,  /*品类协议调整ID              */
   CONND002             VARCHAR(1),                                /*无效                        */  
   CONND003             INTEGER                         not null,  /*商品ID                      */
   CONND004             NUMBER(18,3),                              /*最低采购量                  */
   CONND005             INTEGER,                                   /*最小采购单位                */
   CONND006             NUMBER(18,3),                              /*采购价                      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_CONND primary key (CONND_ID)
);
create unique index AK_TB_CONND on TB_CONND (CONND001,CONND003);
create sequence SEQ_TB_CONND minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONND to public;
grant index  on TB_CONND to public;
grant update on TB_CONND to public; 
grant delete on TB_CONND to public;  
grant insert on TB_CONND to public; 
grant select on SEQ_TB_CONND to public;   



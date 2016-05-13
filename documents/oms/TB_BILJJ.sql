/*
================================================================================
表结构代码:TB_BILJJ
表结构名称:扣率对账单暂估明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILJJ;
drop index AK_TB_BILJJ;
drop table TB_BILJJ;
create table TB_BILJJ  (
   BILJJ_ID          INTEGER                   not null,     /*扣率/联营进价调整单据明细ID     */      
   BILJJ001          INTEGER                   not null,     /*对账单ID                        */      
   BILJJ002          INTEGER                   not null,     /*暂估明细ID                      */      
   BILJJ003          VARCHAR2(30)              not null,     /*暂估单号                        */      
   BILJJ004          INTEGER                   not null,     /*暂估单明细ID                    */      
   BILJJ005          INTEGER                   not null,     /*来源单号ID                      */      
   BILJJ006          INTEGER                   not null,     /*商品ID                          */      
   BILJJ007          INTEGER                   not null,     /*单位                            */      
   BILJJ008          NUMBER(18,3)              not null,     /*数量                            */      
   BILJJ009          NUMBER(12,2)              not null,     /*本币单价                        */      
   BILJJ010          INTEGER                   not null,     /*税种                            */      
   BILJJ011          NUMBER(12,2)              not null,     /*税率                            */      
   BILJJ012          NUMBER(12,2)              not null,     /*本币未税金额                    */      
   BILJJ013          NUMBER(12,2)              not null,     /*本币税额                        */      
   BILJJ014          NUMBER(12,2)              not null,     /*本币含税金额                    */      
   BILJJ015          NUMBER(12,2)              not null,     /*本币开票金额                    */      
   BILJJ016          NUMBER(18,3)              not null,     /*开票数量                        */ 
   BILJJ017          INTEGER                   not null,      /*来源单号明细ID                 */
   CREATE_USER          VARCHAR2(12),                        /*建立人员               */
   USER_GROUP           VARCHAR2(12),                        /*建立人员部门           */                               
   CREATE_DATE          DATE,                                /*建立日期               */
   MODIFIER             VARCHAR2(12),                        /*修改人员               */
   MODI_DATE            DATE,                                /*修改日期               */
   FLAG                 NUMBER(1),                           /*资料状态               */
   constraint PK_TB_BILJJ primary key (BILJJ_ID)
);
create unique index AK_TB_BILJJ on TB_BILJJ (BILJJ001,BILJJ002);
create sequence SEQ_TB_BILJJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJJ to public;
grant index  on TB_BILJJ to public;
grant update on TB_BILJJ to public; 
grant delete on TB_BILJJ to public;  
grant insert on TB_BILJJ to public; 
grant select on SEQ_TB_BILJJ to public;   
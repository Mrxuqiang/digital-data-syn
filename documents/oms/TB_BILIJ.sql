/*
================================================================================
表结构代码:TB_BILIJ
表结构名称:成本代销对账单暂估明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILIJ;
drop index AK_TB_BILIJ;
drop table TB_BILIJ;
create table TB_BILIJ  (
   BILIJ_ID          INTEGER                   not null,     /*成本代销进价调整单据明细ID     */      
   BILIJ001          INTEGER                   not null,     /*对账单ID                        */      
   BILIJ002          INTEGER                   not null,     /*暂估明细ID                      */      
   BILIJ003          VARCHAR2(30)              not null,     /*暂估单号                        */      
   BILIJ004          INTEGER                   not null,     /*暂估单明细ID                    */      
   BILIJ005          INTEGER                   not null,     /*来源单号ID                      */      
   BILIJ006          INTEGER                   not null,     /*商品ID                          */      
   BILIJ007          INTEGER                   not null,     /*单位                            */      
   BILIJ008          NUMBER(18,3)              not null,     /*数量                            */      
   BILIJ009          NUMBER(12,2)              not null,     /*本币单价                        */      
   BILIJ010          INTEGER                   not null,     /*税种                            */      
   BILIJ011          NUMBER(12,2)              not null,     /*税率                            */      
   BILIJ012          NUMBER(12,2)              not null,     /*本币未税金额                    */      
   BILIJ013          NUMBER(12,2)              not null,     /*本币税额                        */      
   BILIJ014          NUMBER(12,2)              not null,     /*本币含税金额                    */      
   BILIJ015          NUMBER(12,2)              not null,     /*本币开票金额                    */      
   BILIJ016          NUMBER(18,3)              not null,     /*开票数量                        */ 
   BILIJ017          INTEGER                   not null,      /*来源单号明细ID                 */
   CREATE_USER          VARCHAR2(12),                        /*建立人员               */
   USER_GROUP           VARCHAR2(12),                        /*建立人员部门           */                               
   CREATE_DATE          DATE,                                /*建立日期               */
   MODIFIER             VARCHAR2(12),                        /*修改人员               */
   MODI_DATE            DATE,                                /*修改日期               */
   FLAG                 NUMBER(1),                           /*资料状态               */
   constraint PK_TB_BILIJ primary key (BILIJ_ID)
);
create unique index AK_TB_BILIJ on TB_BILIJ (BILIJ001,BILIJ002);
create sequence SEQ_TB_BILIJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIJ to public;
grant index  on TB_BILIJ to public;
grant update on TB_BILIJ to public; 
grant delete on TB_BILIJ to public;  
grant insert on TB_BILIJ to public; 
grant select on SEQ_TB_BILIJ to public;   
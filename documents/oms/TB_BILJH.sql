/*
================================================================================
表结构代码:TB_BILJH
表结构名称:扣率/联营对账单补立暂估子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILJH;
drop index AK_TB_BILJH;
drop table TB_BILJH;
create table TB_BILJH  (
   BILJH_ID	          INTEGER                         not null,    /*补立暂估ID           */                                                                             
   BILJH001	          INTEGER                         not null,    /*对账单ID             */                                                                           
   BILJH002	          INTEGER                         not null,    /*来源单号ID           */                                                                              
   BILJH003	          INTEGER                         not null,    /*商品ID               */                                                                              
   BILJH004	          NUMBER(12,2)                    not null,    /*未税销售/退额        */                                                                              
   BILJH005	          NUMBER(12,2)                    not null,    /*含税销售/退额        */                                                                              
   BILJH006	          NUMBER(12,2)                    not null,    /*未税已结金额         */                                                                              
   BILJH007	          NUMBER(12,2)                    not null,    /*含税已结金额         */                                                                           
   BILJH008	          INTEGER                         not null,    /*暂估单号ID           */                                                                              
   BILJH009	          NUMBER(12,2)                    not null,    /*未税已立暂估金额     */                                                                              
   BILJH010	          NUMBER(12,2)                    not null,    /*含税已立暂估金额     */                                                                              
   BILJH011	          NUMBER(12,2)                    not null,    /*未税补立金额         */                                                                              
   BILJH012	          NUMBER(12,2)                    not null,    /*含税补立金额         */                                                                              
   BILJH013	          NUMBER(12,2)                    not null,    /*补立税额             */                                                                              
   BILJH014	          INTEGER                                      /*补立暂估单号         */                                                                              
   BILJH015	          INTEGER                                      /*应付单号             */                                                                              
   CREATE_USER          VARCHAR2(12),                                 /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                 /*建立人员部门        */                               
   CREATE_DATE          DATE,                                         /*建立日期            */
   MODIFIER             VARCHAR2(12),                                 /*修改人员            */
   MODI_DATE            DATE,                                         /*修改日期            */
   FLAG                 NUMBER(1),                                    /*资料状态            */
   constraint PK_TB_BILJH primary key (BILJH_ID)
);
create unique index AK_TB_BILJH on TB_BILJH (BILJH_ID);
create sequence SEQ_TB_BILJH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJH to public;
grant index  on TB_BILJH to public;
grant update on TB_BILJH to public; 
grant delete on TB_BILJH to public;  
grant insert on TB_BILJH to public; 
grant select on SEQ_TB_BILJH to public;   
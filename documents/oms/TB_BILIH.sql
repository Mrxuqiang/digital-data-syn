/*
================================================================================
表结构代码:TB_BILIH
表结构名称:成本代销对账单补立暂估子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILIH;
drop index AK_TB_BILIH;
drop table TB_BILIH;
create table TB_BILIH  (
   BILIH_ID	          INTEGER                         not null,    /*补立暂估ID           */                                                                             
   BILIH001	          INTEGER                         not null,    /*对账单ID             */                                                                           
   BILIH002	          INTEGER                         not null,    /*来源单号ID           */                                                                              
   BILIH003	          INTEGER                         not null,    /*商品ID               */                                                                              
   BILIH004	          NUMBER(12,2)                    not null,    /*未税销售/退额        */                                                                              
   BILIH005	          NUMBER(12,2)                    not null,    /*含税销售/退额        */                                                                              
   BILIH006	          NUMBER(12,2)                    not null,    /*未税已结金额         */                                                                              
   BILIH007	          NUMBER(12,2)                    not null,    /*含税已结金额         */                                                                           
   BILIH008	          INTEGER                         not null,    /*暂估单号ID           */                                                                              
   BILIH009	          NUMBER(12,2)                    not null,    /*未税已立暂估金额     */                                                                              
   BILIH010	          NUMBER(12,2)                    not null,    /*含税已立暂估金额     */                                                                              
   BILIH011	          NUMBER(12,2)                    not null,    /*未税补立金额         */                                                                              
   BILIH012	          NUMBER(12,2)                    not null,    /*含税补立金额         */                                                                              
   BILIH013	          NUMBER(12,2)                    not null,    /*补立税额             */                                                                              
   BILIH014	          INTEGER                                      /*补立暂估单号         */                                                                              
   BILIH015	          INTEGER                                      /*应付单号             */                                                                              
   CREATE_USER          VARCHAR2(12),                                 /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                 /*建立人员部门        */                               
   CREATE_DATE          DATE,                                         /*建立日期            */
   MODIFIER             VARCHAR2(12),                                 /*修改人员            */
   MODI_DATE            DATE,                                         /*修改日期            */
   FLAG                 NUMBER(1),                                    /*资料状态            */
   constraint PK_TB_BILIH primary key (BILIH_ID)
);
create unique index AK_TB_BILIH on TB_BILIH (BILIH_ID);
create sequence SEQ_TB_BILIH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIH to public;
grant index  on TB_BILIH to public;
grant update on TB_BILIH to public; 
grant delete on TB_BILIH to public;  
grant insert on TB_BILIH to public; 
grant select on SEQ_TB_BILIH to public;   
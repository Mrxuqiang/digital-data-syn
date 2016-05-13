/*
================================================================================
表结构代码:TB_BILII
表结构名称:成本代销对账单暂估子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILIH;
drop index AK_TB_BILIH;
drop table TB_BILIH;
create table TB_BILIH  (
   BILII_ID	          INTEGER                    not null,     /*暂估对账明细ID   */                                                                                   
   BILII001	          INTEGER                    not null,     /*对账单ID         */                                                                                   
   BILII002	          INTEGER                    not null,     /*暂估单号ID       */                                                                                                                                        
   BILII003	          DATE                       not null,     /*暂估日期         */                                                                                   
   BILII004	          VARCHAR2(30)               not null,     /*暂估单号         */                                                                                   
   BILII005	          NUMBER(12,2)               not null,     /*未税暂估金额      */                                                                                  
   BILII006	          NUMBER(12,2)               not null,     /*含税暂估金额     */                                                                                   
   BILII007	          NUMBER(12,2)               not null,     /*正式应付冲销     */                                                                                   
   CREATE_USER          VARCHAR2(12),                          /*建立人员            */
   USER_GROUP           VARCHAR2(12),                          /*建立人员部门        */                               
   CREATE_DATE          DATE,                                  /*建立日期            */
   MODIFIER             VARCHAR2(12),                          /*修改人员            */
   MODI_DATE            DATE,                                  /*修改日期            */
   FLAG                 NUMBER(1),                             /*资料状态            */
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
/*
================================================================================
表结构代码:TB_BILJH
表结构名称:扣率/联营对账单暂估子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILJH;
drop index AK_TB_BILJH;
drop table TB_BILJH;
create table TB_BILJH  (
   BILJI_ID	          INTEGER                    not null,     /*暂估对账明细ID   */                                                                                   
   BILJI001	          INTEGER                    not null,     /*对账单ID         */                                                                                   
   BILJI002	          INTEGER                    not null,     /*暂估单号ID       */                                                                                                                                        
   BILJI003	          DATE                       not null,     /*暂估日期         */                                                                                   
   BILJI004	          VARCHAR2(30)               not null,     /*暂估单号         */                                                                                   
   BILJI005	          NUMBER(12,2)               not null,     /*未税暂估金额      */                                                                                  
   BILJI006	          NUMBER(12,2)               not null,     /*含税暂估金额     */                                                                                   
   BILJI007	          NUMBER(12,2)               not null,     /*正式应付冲销     */                                                                                   
   CREATE_USER          VARCHAR2(12),                          /*建立人员            */
   USER_GROUP           VARCHAR2(12),                          /*建立人员部门        */                               
   CREATE_DATE          DATE,                                  /*建立日期            */
   MODIFIER             VARCHAR2(12),                          /*修改人员            */
   MODI_DATE            DATE,                                  /*修改日期            */
   FLAG                 NUMBER(1),                             /*资料状态            */
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
/*
================================================================================
表结构代码:TB_BATAD
表结构名称:库存锁定表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATAD;
drop index AK_TB_BATAD;
drop table TB_BATAD;
create table TB_BATAD  (
   BATAD_ID	          INTEGER                  not null,    /*流水ID               */   
   BATAD001	          VARCHAR2(2)              not null,    /*单据类型             */   
   BATAD002	          INTEGER                  not null,    /*单据ID               */   
   BATAD003	          INTEGER,                              /*明细ID               */   
   BATAD004	          INTEGER                  not null,    /*仓库ID               */   
   BATAD005	          INTEGER                  not null,    /*仓位ID               */   
   BATAD006	          INTEGER                  not null,    /*商品ID               */   
   BATAD007	          INTEGER,                               /*维度1                */   
   BATAD008	          INTEGER,                               /*维度2                */   
   BATAD009	          INTEGER,                               /*维度3                */   
   BATAD010	          INTEGER,                               /*维度4                */   
   BATAD011	          INTEGER,                               /*维度5                */  
   BATAD012	          NUMBER(18,3)             not null,    /*数量                 */  
   BATAD013	          NUMBER(12,2)             not null,    /*预估成本价           */  
   BATAD014	          NUMBER(12,2)             not null,    /*预估成本金额         */  
   BATAD015	          NUMBER(12,2)             not null,    /*结算价               */  
   BATAD016	          NUMBER(12,2)             not null,    /*结算金额             */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_BATAD primary key (BATAD_ID)
);
create unique index AK_TB_BATAD on TB_BATAD (BATAD_ID,BATAD001);
create sequence SEQ_TB_BATAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATAD to public;
grant index  on TB_BATAD to public;
grant update on TB_BATAD to public; 
grant delete on TB_BATAD to public;  
grant insert on TB_BATAD to public; 
grant select on SEQ_TB_BATAD to public;   
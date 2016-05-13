/*
================================================================================
表结构代码:TB_PRCDD
表结构名称:扣率调整单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRCDD;
drop index AK_TB_PRCDD;
drop table TB_PRCDD;
create table TB_PRCDD  (
   PRCDD_ID             INTEGER                               not null,        /*调整明细ID        */    
   PRCDD001             INTEGER                               not null,        /*扣率调整单ID      */
   PRCDD002             INTEGER                               not null,        /*来源单号ID        */
   PRCDD003             VARCHAR2(30)                          not null,        /*销售/退单号       */
   PRCDD004             INTEGER                               not null,        /*来源明细ID        */
   PRCDD005             INTEGER                               not null,        /*商品编码          */
   PRCDD006             INTEGER,                                               /*维度1             */
   PRCDD007             INTEGER,                                               /*维度2             */
   PRCDD008             INTEGER,                                               /*维度3             */
   PRCDD009             INTEGER,                                               /*维度4             */
   PRCDD010             INTEGER,                                               /*维度5             */
   PRCDD011             INTEGER                               not null,        /*仓库              */
   PRCDD012             INTEGER                               not null,        /*库位              */
   PRCDD013             INTEGER                               not null,        /*单位              */
   PRCDD014             NUMBER(12,2)                          not null,        /*单位换算率        */
   PRCDD015             NUMBER(18,3)                          not null,        /*原销售数量        */
   PRCDD016             NUMBER(18,3)                          not null,        /*本次调价数量      */
   PRCDD017             NUMBER(12,2)                          not null,        /*销售单价          */
   PRCDD018             NUMBER(12,2)                          not null,        /*销售金额          */
   PRCDD019             NUMBER(12,2)                          not null,        /*原扣率            */
   PRCDD020             NUMBER(12,2)                                           /*新扣率            */       
   PRCDD021             NUMBER(12,2)                          not null,        /*原销售成本        */
   PRCDD022             NUMBER(12,2)                          not null,        /*新销售成本        */
   PRCDD023             NUMBER(12,2)                          not null,        /*调整成本差        */
   PRCDD024             VARCHAR2(30),                                          /*红字应付暂估单号  */
   PRCDD025             VARCHAR2(30),                                          /*蓝字应付暂估单号  */
   PRCDD026             NUMBER(12,2),                                          /*已结数量          */
   PRCDD027             VARCHAR2(255),                                         /*备注              */
   PRCDD028             INTEGER                               not null,        /*供应商            */
   CREATE_USER          VARCHAR2(12),                                          /*建立人员         */
   USER_GROUP           VARCHAR2(12),                                          /*建立人员部门     */                               
   CREATE_DATE          DATE,                                                  /*建立日期         */
   MODIFIER             VARCHAR2(12),                                          /*修改人员         */
   MODI_DATE            DATE,                                                  /*修改日期         */
   FLAG                 NUMBER(1),                                             /*资料状态         */
   constraint PK_TB_PRCDD primary key (PRCDD_ID)
);
create unique index AK_TB_PRCDD on TB_PRCDD (PRCDD_ID,PRCDD002,PRCDD005);
create sequence SEQ_TB_PRCDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCDD to public;
grant index  on TB_PRCDD to public;
grant update on TB_PRCDD to public; 
grant delete on TB_PRCDD to public;  
grant insert on TB_PRCDD to public; 
grant select on SEQ_TB_PRCDD to public;   
/*
================================================================================
表结构代码:TB_INVKC
表结构名称:拣货单套件明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVKC;
drop index AK_TB_INVKC;
drop table TB_INVKC;
create table TB_INVKC(
   INVKC_ID             INTEGER                      not null,     /*拣货单套件明细ID          */  
   INVKC001             INTEGER                      not null,     /*拣货单ID                  */  
   INVKC002             VARCHAR2(1)                  not null,     /*来源类型                  */  
   INVKC003             INTEGER,     		         	   /*来源门店单                */  
   INVKC004             INTEGER                      not null,     /*来源单ID                  */  
   INVKC005             INTEGER                      not null,     /*来源单明细ID              */  
   INVKC006             VARCHAR2(30)                 not null,     /*来源单号                  */   
   INVKC007             INTEGER                      not null,     /*商品ID                    */  
   INVKC008             INTEGER                      not null,     /*出库单位                  */ 
   INVKC009             NUMBER(18,2)                 not null,     /*包数/单位                 */ 
   INVKC010             NUMBER(18,2)                 not null      /*小计包数                  */
   INVKC011             INTEGER                              ,     /* 主商品ID                 */  
   INVKC012             VARCHAR2(1)                          ,     /* 是否成分                 */  
   INVKC013             VARCHAR2(1)                          ,     /* 是否组装品               */  
   INVKC014             NUMBER(18,2)                         ,     /* 出库数量                 */  
   INVKC015             VARCHAR2(1)                          ,     /* 商品服务属性             */  
   INVKC016             VARCHAR2(255)                        ,     /* 备注                     */
   INVKC017             NUMBER(18,2)                         ,     /* 单位成本                 */ --20110727 add by xiechun
   INVKC018             NUMBER(18,2)                         ,     /* 成本金额                 */ --20110727 add by xiechun
   INVKC019             INTEGER                              ,     /*商品分类                  */ --20110801 add by xiechun 
   INVKC020             INTEGER               ,                    /*商品系列                  */ --20110801 add by xiechun
   INVKC021             INTEGER,                                   /*签收单明细ID              */ --20111108 add by xiechun
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门              */                            
   CREATE_DATE          DATE,                                      /*建立日期                  */
   MODIFIER             VARCHAR2(12),                              /*修改人员                  */
   MODI_DATE            DATE,                                      /*修改日期                  */
   FLAG                 NUMBER(1),                                 /*资料状态                  */
   constraint PK_TB_INVKC primary key (INVKC_ID)
);
create sequence SEQ_TB_INVKC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVKC to public;
grant index  on TB_INVKC to public;
grant update on TB_INVKC to public; 
grant delete on TB_INVKC to public;  
grant insert on TB_INVKC to public; 
grant select on SEQ_TB_INVKC to public;   
/*
================================================================================
表结构代码:TB_PAYAB
表结构名称:暂估明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PAYAB;
drop index AK_TB_PAYAB;
drop table TB_PAYAB;
create table TB_PAYAB  (
   PAYAB_ID             INTEGER                         not null,  /*暂估明细ID        */
   PAYAB001             INTEGER                         not null,  /*暂估主表ID        */
   PAYAB002             VARCHAR2(1)                     not null,  /*单据来源          */
   PAYAB003             VARCHAR2(30)                    not null,  /*来源单号          */
   PAYAB004             INTEGER                         not null,  /*商品ID            */                                                                            
   PAYAB005             INTEGER                         not null,  /*收支异动码ID        */ 
   PAYAB006             INTEGER ,                                  /*会计科目ID          */ 
   PAYAB007             INTEGER,                                   /*单位ID              */ 
   PAYAB008             NUMBER(18,3),                              /*数量              */ 
   PAYAB009             NUMBER(16,2),                              /*原币单价          */
   PAYAB010             NUMBER(16,2),                              /*本币单价          */ 
   PAYAB011             INTEGER,                                   /*税种ID              */ 
   PAYAB012             NUMBER(5,4),                               /*税率              */ 
   PAYAB013             NUMBER(16,2),                              /*原币未税金额      */                                                                                           
   PAYAB014             NUMBER(16,2),                              /*本币未税金额      */                                                                                           
   PAYAB015             NUMBER(16,2),                              /*原币税额          */                                                                                           
   PAYAB016             NUMBER(16,2),                              /*本币税额          */                                                                                           
   PAYAB017             NUMBER(16,2),                              /*原币含税金额      */                                                                                          
   PAYAB018             NUMBER(16,2),                              /*本币含税金额      */                                                                                            
   PAYAB019             NUMBER(16,2),                              /*原币结账金额      */                                                                                            
   PAYAB020             NUMBER(16,2),                              /*本币结帐金额      */                                                                                            
   PAYAB021             NUMBER(18,3),                              /*结账数量          */ 
   PAYAB022             VARCHAR2(1),                               /*结账码             */  
   PAYAB023             INTEGER                        not null,   /*来源单号ID         */
   PAYAB024             INTEGER                        not null,   /*来源明细ID         */
   PAYAB025             INTEGER ,                                  /*营运组织ID         */
   PAYAB026             INTEGER ,                                  /*商品分类id         */
   PAYAB027             INTEGER ,                                  /*商品品牌id         */
   PAYAB028             INTEGER ,                                  /*商品系列id         */
   PAYAB029             VARCHAR2(1) ,                              /*销售属性           */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PAYAB primary key (PAYAB_ID)
);
create sequence SEQ_TB_PAYAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAB to public;
grant index  on TB_PAYAB to public;
grant update on TB_PAYAB to public; 
grant delete on TB_PAYAB to public;  
grant insert on TB_PAYAB to public; 
grant select on SEQ_TB_PAYAB to public;   
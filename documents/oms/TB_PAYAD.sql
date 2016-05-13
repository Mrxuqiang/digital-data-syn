/*
================================================================================
表结构代码:TB_PAYAD
表结构名称:应付明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PAYAD;
drop index AK_TB_PAYAD;
drop table TB_PAYAD;
create table TB_PAYAD  (
   PAYAD_ID             INTEGER                         not null,  /*应付明细ID        */
   PAYAD001             INTEGER                         not null,  /*应付主表ID        */
   PAYAD002             VARCHAR2(1),                               /*单据来源          */
   PAYAD003             VARCHAR2(30),                              /*来源单号          */
   PAYAD004             INTEGER,                                   /*商品ID            */
   PAYAD005             INTEGER,                                   /*现金异动码ID      */ 
   PAYAD006             INTEGER,                                   /*会计科目ID          */ 
   PAYAD007             INTEGER,                                   /*单位ID              */ 
   PAYAD008             NUMBER(18,3),                              /*数量              */ 
   PAYAD009             NUMBER(16,2),                              /*原币单价          */
   PAYAD010             NUMBER(16,2),                              /*本币单价          */ 
   PAYAD011             INTEGER,                                   /*税种ID              */ 
   PAYAD012             NUMBER(5,2),                               /*税率              */ 
   PAYAD013             NUMBER(16,2),                              /*原币未税金额      */ 
   PAYAD014             NUMBER(16,2),                              /*本币未税金额      */ 
   PAYAD015             NUMBER(16,2),                              /*原币税额          */ 
   PAYAD016             NUMBER(16,2),                              /*本币税额          */ 
   PAYAD017             NUMBER(16,2),                              /*原币含税金额      */
   PAYAD018             NUMBER(16,2),                              /*本币含税金额      */  
   PAYAD019             NUMBER(16,2),                              /*原币直接付款金额    */   
   PAYAD020             NUMBER(16,2),                              /*本币直接付款金额    */
   PAYAD021             INTEGER,                                   /*来源单号ID          */
   PAYAD022             INTEGER,                                   /*来源明细ID        */
   PAYAD023             INTEGER,                                   /*营运组织ID        */  
   PAYAD024             NUMBER(16,2),                              /*原币已核销金额    */   
   PAYAD025             NUMBER(16,2),                              /*本币已核销金额    */      
   PAYAD026             VARCHAR2(255),                             /*备注 20100510 add by gaoxl    */
   PAYAD027             INTEGER,                                   /*商品分类id   20110712 add by gaoxl     */      
   PAYAD028             INTEGER,                                   /*商品品牌id   20110712 add by gaoxl     */  
   PAYAD029             INTEGER,                                   /*商品系列id    20110712 add by gaoxl    */ 
   PAYAD030             VARCHAR2(1),                               /*销售属性     20110712 add by gaoxl   */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PAYAD primary key (PAYAD_ID)
);
create sequence SEQ_TB_PAYAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAD to public;
grant index  on TB_PAYAD to public;
grant update on TB_PAYAD to public; 
grant delete on TB_PAYAD to public;  
grant insert on TB_PAYAD to public; 
grant select on SEQ_TB_PAYAD to public;   
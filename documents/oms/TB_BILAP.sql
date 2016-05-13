/*
================================================================================
表结构代码:TB_BILAP
表结构名称:积分发放和使用明细表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_BILAP;
drop index AK_TB_BILAP;
drop table TB_BILAP;
create table TB_BILAP  (
   BILAP_ID             INTEGER                         not null,  /*积分发放和使用明细id    */
   BILAP001             INTEGER                         not null,  /*单据类别id           */   
   BILAP002             INTEGER                         not null,  /*商场               */
   BILAP003             VARCHAR2(20)                    not null,  /*公司代码           */  
   BILAP004             VARCHAR2(30)                    not null,  /*单号               */     
   BILAP005             INTEGER                         not null,  /*积分类型           */  
   BILAP006             DATE                            not null,  /*日期               */  
   BILAP007             INTEGER,                                   /*积分金额           */  
   BILAP008             INTEGER,                                   /*商户               */  
   BILAP009             VARCHAR2(30),                              /*商户合同号         */         
   BILAP010             VARCHAR2(30),                              /*发放单号           */ 
   BILAP011             INTEGER,                                   /*发放批次id         */ 
   BILAP012             INTEGER,                                   /*活动               */
   BILAP013             VARCHAR2(2),                               /*商户是否承担       */
   BILAP014             NUMBER(22,2),                              /*集团承担费用       */
   BILAP015             NUMBER(22,2),                              /*商场承担费用       */
   BILAP016             NUMBER(22,2),                              /*商户承担费用       */
   BILAP017             NUMBER(22,2),                              /*优惠金额           */
   BILAP018             VARCHAR2(255),                             /*备注               */
   BILAP019             VARCHAR2(255),                             /*参考单号一         */
   BILAP020             VARCHAR2(255),                             /*参考单号二         */
   BILAP021             VARCHAR2(255),                             /*参考单号三         */
   BILAP022             VARCHAR2(255),                             /*参考单号四         */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                    /*资料状态            */
   constraint PK_TB_BILAP primary key (BILAP_ID)
);
create unique index AK_TB_BILAP on TB_BILAP (BILAP001,BILAP002,BILAP003,BILAP004,BILAP009,flag);
create sequence SEQ_TB_BILAP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAP to public;
grant index  on TB_BILAP to public;
grant update on TB_BILAP to public; 
grant delete on TB_BILAP to public;  
grant insert on TB_BILAP to public; 
grant select on SEQ_TB_BILAP to public;   
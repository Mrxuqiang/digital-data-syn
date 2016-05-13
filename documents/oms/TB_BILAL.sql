/*
================================================================================
表结构代码:TB_BILAL
表结构名称:网银账扣申请单子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_BILAL;
drop index AK_TB_BILAL;
drop table TB_BILAL;
create table TB_BILAL  (
   BILAL_ID             INTEGER                         not null,  /*申请单子id         */
   BILAL001             INTEGER                         not null,  /*申请单主id         */
   BILAL002             INTEGER                         not null,  /*商户id             */   
   BILAL003             VARCHAR2(60),                              /*商户号             */  
   BILAL004             VARCHAR2(80),                              /*商户名称           */  
   BILAL005             INTEGER,                                   /*展位id             */         
   BILAL006             VARCHAR2(60),                              /*展位号             */
   BILAL007             VARCHAR2(100),                             /*门牌号             */
   BILAL008             INTEGER,                                   /*品牌id             */
   BILAL009             VARCHAR2(30),                              /*品牌号             */
   BILAL010             VARCHAR2(60),                              /*品牌名称           */
   BILAL011             VARCHAR2(30),                              /*费用单号           */
   BILAL012             DATE,                                      /*费用日期           */
   BILAL013             INTEGER,                                   /*费用id             */
   BILAL014             VARCHAR2(8),                               /*费用编码           */
   BILAL015             VARCHAR2(30),                              /*费用名称           */
   BILAL016             VARCHAR2(16),                              /*公司代码           */
   BILAL017             NUMBER(22,2),                              /*费用金额           */
   BILAL018             NUMBER(22,2),                              /*未收金额           */
   BILAL019             NUMBER(22,2),                              /*本次收款金额       */
   BILAL020             DATE,                                      /*费用起日           */
   BILAL021             DATE,                                      /*费用止日           */
   BILAL022             VARCHAR2(255),                             /*备注               */
   BILAL023             NUMBER(22,2),                              /*实际扣款金额       */
   BILAL024             VARCHAR2(255),                             /*扣款说明           */
   BILAL025             VARCHAR2(30),                              /*收款单号           */
   BILAL026             NUMBER(22,2),                              /*审核时未收金额     */
   BILAL027             INTEGER,                                   /*费用单主id         */
   BILAL028             INTEGER,                                   /*费用单子id         */
   BILAL029             INTEGER,                                   /*收款单主id         */                            
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                    /*资料状态            */
   constraint PK_TB_BILAL primary key (BILAL_ID)
);
create unique index AK_TB_BILAL on TB_BILAL (BILAL001,BILAL027,BILAL028,flag);
create sequence SEQ_TB_BILAL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAL to public;
grant index  on TB_BILAL to public;
grant update on TB_BILAL to public; 
grant delete on TB_BILAL to public;  
grant insert on TB_BILAL to public; 
grant select on SEQ_TB_BILAL to public;   
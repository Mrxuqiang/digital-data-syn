/*
================================================================================
表结构代码:TB_PAYAA
表结构名称:暂估主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PAYAA;
drop index AK_TB_PAYAA;
drop table TB_PAYAA;
create table TB_PAYAA  (
   PAYAA_ID             INTEGER                         not null,  /*暂估主表ID        */
   PAYAA001             INTEGER                         not null,  /*单别              */
   PAYAA002             VARCHAR2(30)                    not null,  /*暂估单号          */
   PAYAA003             INTEGER                         not null,  /*供应商ID            */
   PAYAA004             INTEGER                         not null,  /*付款供应商ID        */
   PAYAA005             INTEGER                         not null,  /*币种ID              */ 
   PAYAA006             NUMBER(16,4),                               /*汇率              */ 
   PAYAA007             DATE,                                      /*立账日期          */ 
   PAYAA008             VARCHAR2(1)                     not null,  /*经营方式          */
   PAYAA009             INTEGER,                                   /*请款部门ID          */ 
   PAYAA010             INTEGER,                                   /*请款人员ID          */ 
   PAYAA011             DATE,                                     /*应付日             */ 
   PAYAA012             VARCHAR2(1)                     not null,  /*单据状态          */ 
   PAYAA013             INTEGER,                                   /*录入人ID            */ 
   PAYAA014             DATE,                                      /*录入日期          */ 
   PAYAA015             INTEGER,                                   /*审核人ID            */ 
   PAYAA016             DATE,                                      /*审核日期          */
   PAYAA017             VARCHAR2(1)                     not null,  /*生成凭证          */  
   PAYAA018             NUMBER(16,2),                              /*原币金额合计      */ 
   PAYAA019             NUMBER(16,2),                              /*本币金额合计      */ 
   PAYAA020             NUMBER(16,2),                              /*原币结账金额      */ 
   PAYAA021             NUMBER(16,2),                              /*本币结帐金额      */  
   PAYAA022             VARCHAR2(1)                     not null,  /*补立暂估          */ 
   PAYAA023             VARCHAR2(255),                             /*备注              */ 
   PAYAA024             INTEGER,                                   /*营运组织ID        */
   PAYAA025             VARCHAR2(1),                               /*核销状态          */  
   PAYAA026             NUMBER(4),                                 /*会计年度        */
   PAYAA027             NUMBER(2),                                 /*会计期间          */         
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PAYAA primary key (PAYAA_ID)
);
create unique index AK_TB_PAYAA on TB_PAYAA (PAYAA001,PAYAA002);
create sequence SEQ_TB_PAYAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAA to public;
grant index  on TB_PAYAA to public;
grant update on TB_PAYAA to public; 
grant delete on TB_PAYAA to public;  
grant insert on TB_PAYAA to public; 
grant select on SEQ_TB_PAYAA to public;   
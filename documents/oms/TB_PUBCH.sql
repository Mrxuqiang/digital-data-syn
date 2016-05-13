/*
================================================================================
表结构代码:TB_PUBCH
表结构名称:设计师资料表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBCH;
drop index AK_TB_PUBCH;
drop table TB_PUBCH;
create table TB_PUBCH  (
   PUBCH_ID             INTEGER                         not null,   /* 设计师ID           */
   PUBCH001             VARCHAR2(30)                    not null,   /* 设计师代码         */
   PUBCH002             VARCHAR2(30)                    not null,   /* 设计师名称         */
   PUBCH003             INTEGER                         not null,   /* 设计师所属公司     */
   PUBCH004             VARCHAR2(1) ,                               /* 性别               */
   PUBCH005             VARCHAR2(30),                               /* 身份证号           */ 
   PUBCH006             varchar2(255),                              /* 居住地址           */ 
   PUBCH007             VARCHAR2(1)                      not null,  /* 审核状态           */   
   PUBCH008             INTEGER,                                    /* 录入人             */
   PUBCH009             DATE,                                       /* 录入日期           */
   PUBCH010             DATE,                                       /* 审核日期           */
   PUBCH011             INTEGER,                                    /* 审核人             */
   PUBCH012             VARCHAR2(30),                               /* 联系方式一         */
   PUBCH013             VARCHAR2(30),                               /* 联系方式二         */
   PUBCH014             VARCHAR2(30),                               /* E_Mail             */
   PUBCH015             VARCHAR2(30),                               /* QQ                 */
   PUBCH016             VARCHAR2(30),                               /* MSN                */
   PUBCH017             VARCHAR2(30),                               /* 银行卡号           */
   PUBCH018             VARCHAR2(30),                               /* 银行名称           */
   PUBCH019             VARCHAR2(255),                              /* 银行地址           */ 
   PUBCH020             INTEGER,                                    /* 币种ID             */
   PUBCH021             VARCHAR2(30),                               /* 开户人             */
   CREATE_USER          VARCHAR2(12),                               /* 建立人员           */
   USER_GROUP           VARCHAR2(12),                               /* 建立人员部门       */                               
   CREATE_DATE          DATE,                                       /* 建立日期           */
   MODIFIER             VARCHAR2(12),                               /* 修改人员           */
   MODI_DATE            DATE,                                       /* 修改日期           */
   FLAG                 NUMBER(1),                                  /* 资料状态           */                    
   constraint PK_TB_PUBCH primary key (PUBCH_ID)
);
create unique index AK_TB_PUBCH on TB_PUBCH (PUBCH001);
create sequence SEQ_TB_PUBCH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCH to public;
grant index  on TB_PUBCH to public;
grant update on TB_PUBCH to public; 
grant delete on TB_PUBCH to public;  
grant insert on TB_PUBCH to public; 
grant select on SEQ_TB_PUBCH to public;   
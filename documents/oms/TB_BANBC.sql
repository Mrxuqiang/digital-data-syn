/*
================================================================================
表结构代码:TB_BANBC
表结构名称:票据管理表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BANBC;
drop index AK_TB_BANBC;
drop table TB_BANBC;
create table TB_BANBC  (
   BANBC_ID            INTEGER                              not null,  /*管理表ID         */
   BANBC001            INTEGER                              not null,  /*票据购置主表ID   */
   BANBC002            INTEGER                              not null,  /*票据购置子表ID   */
   BANBC003            INTEGER                              not null,  /*票据类型         */
   BANBC004            VARCHAR2(1)                          not null,  /*票据状态         */
   BANBC005            INTEGER                              not null,  /*币种             */
   BANBC006            INTEGER                              not null,  /*银行账号         */
   BANBC007            DATE,                                           /*领用日期         */
   BANBC008            INTEGER,                                        /*领用部门         */
   BANBC009            INTEGER,                                        /*领用人           */
   BANBC010            NUMBER(16,2),                                    /*领用限额         */
   BANBC011            VARCHAR2(255),                                   /*领用用途         */
   BANBC012            INTEGER,                                         /*领用经手人       */
   BANBC013            VARCHAR2(255),                                  /*领用备注         */
   BANBC014            DATE,                                           /*报销日期         */
   BANBC015            INTEGER,                                        /*报销部门         */
   BANBC016            INTEGER,                                        /*报销人           */
   BANBC017            NUMBER(16,2),                                   /*报销金额         */
   BANBC018            INTEGER,                                        /*报销经手人       */
   BANBC019            VARCHAR2(255),                                  /*报销备注         */
   BANBC020            INTEGER,                                        /*作废经手人       */   
   BANBC021            DATE,                                           /*作废日期         */
   BANBC022            VARCHAR2(60),                                   /*作废原因         */
   BANBC023            VARCHAR2(255),                                  /*作废备注         */
   CREATE_USER          VARCHAR2(12),                                   /*建立人员              */
   USER_GROUP           VARCHAR2(12),                                   /*建立人员部门          */                               
   CREATE_DATE          DATE,                                           /*建立日期              */
   MODIFIER             VARCHAR2(12),                                   /*修改人员              */
   MODI_DATE            DATE,                                           /*修改日期              */
   FLAG                 NUMBER(1),                                      /*资料状态              */
   constraint PK_TB_BANBC primary key (BANBC_ID)
);
create unique index AK_TB_BANBC on TB_BANBC (BANBC001,BANBC002);
create sequence SEQ_TB_BANBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BANBC to public;
grant index  on TB_BANBC to public;
grant update on TB_BANBC to public; 
grant delete on TB_BANBC to public;  
grant insert on TB_BANBC to public; 
grant select on SEQ_TB_BANBC to public;   
/*
================================================================================
表结构代码:TB_PUBCJ
表结构名称:采购策略表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PUBCJ;
drop index AK_TB_PUBCJ;
drop table TB_PUBCJ;
create table TB_PUBCJ  (
   PUBCJ_ID             INTEGER                         not null,  /* 采购策略ID        */
   PUBCJ001             VARCHAR2(1) ,                              /* 对象类型          */--1.商品2.品牌3.全部
   PUBCJ002             INTEGER,                                   /* 对象ID            */
   PUBCJ003             INTEGER,                                   /* 客商ID            */
   CREATE_USER          VARCHAR2(12),                              /* 建立人员          */
   USER_GROUP           VARCHAR2(12),                              /* 建立人员部门      */                               
   CREATE_DATE          DATE,                                      /* 建立日期          */
   MODIFIER             VARCHAR2(12),                              /* 修改人员          */
   MODI_DATE            DATE,                                      /* 修改日期          */
   FLAG                 NUMBER,                                    /* 资料状态          */
   constraint PK_TB_PUBCJ primary key (PUBCJ_ID)
);
create sequence SEQ_TB_PUBCJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCJ to public;
grant index  on TB_PUBCJ to public;
grant update on TB_PUBCJ to public; 
grant delete on TB_PUBCJ to public;  
grant insert on TB_PUBCJ to public; 
grant select on SEQ_TB_PUBCJ to public;   
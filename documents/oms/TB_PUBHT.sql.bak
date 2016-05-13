/*
================================================================================
表结构代码:TB_PUBHT
表结构名称:商品策略子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHT;
drop index AK_TB_PUBHT;
drop table TB_PUBHT;
create table TB_PUBHT  (
   PUBHT_ID            INTEGER                   not null,    /*商品策略明细ID   */   
   PUBHT001            INTEGER                   not null,    /*商品策略         */       
   PUBHT002            INTEGER                   not null,    /*商品编号         */       
   PUBHT003            VARCHAR2(1)               not null,    /*是否可订         */       
   PUBHT004            VARCHAR2(1)               not null,    /*是否可售         */       
   PUBHT005            VARCHAR2(1)               not null,    /*是否可退         */       
   PUBHT006            VARCHAR2(1)               not null,    /*是否积分         */       
   PUBHT007            VARCHAR2(1)               not null,    /*是否有效         */       
   PUBHT008            VARCHAR2(1),                           /*传POS否(备用字段) */       
   CREATE_USER         VARCHAR2(12),                          /*建立人员          */
   USER_GROUP          VARCHAR2(12),                          /*建立人员部门      */                               
   CREATE_DATE         DATE,                                  /*建立日期          */
   MODIFIER            VARCHAR2(12),                          /*修改人员          */
   MODI_DATE           DATE,                                  /*修改日期          */
   FLAG                NUMBER(1),                             /*资料状态          */
   constraint PK_TB_PUBHT primary key (PUBHT_ID)
);
create unique index AK_TB_PUBHT on TB_PUBHT (PUBHT001,PUBHT002);
create sequence SEQ_TB_PUBHT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHT to public;
grant index  on TB_PUBHT to public;
grant update on TB_PUBHT to public; 
grant delete on TB_PUBHT to public;  
grant insert on TB_PUBHT to public; 
grant select on SEQ_TB_PUBHT to public;   
/*
================================================================================
表结构代码:TB_PUBHV
表结构名称:商品策略变更子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHV;
drop index AK_TB_PUBHV;
drop table TB_PUBHV;
create table TB_PUBHV  (
   PUBHV_ID            INTEGER                   not null,    /*策略变更明细ID   */   
   PUBHV001            INTEGER                   not null,    /*商品变更策略id   */
   PUBHV002            INTEGER,                               /*原策略明细ID     */          
   PUBHV003            INTEGER                   not null,    /*商品编号         */       
   PUBHV004            VARCHAR2(1)               not null,    /*是否可订         */       
   PUBHV005            VARCHAR2(1)               not null,    /*是否可售         */       
   PUBHV006            VARCHAR2(1)               not null,    /*是否可退         */       
   PUBHV007            VARCHAR2(1)               not null,    /*是否积分         */       
   PUBHV008            VARCHAR2(1)               not null,    /*是否有效         */       
   PUBHV009            VARCHAR2(1),                           /*传POS否(备用字段) */       
   CREATE_USER         VARCHAR2(12),                          /*建立人员          */
   USER_GROUP          VARCHAR2(12),                          /*建立人员部门      */                               
   CREATE_DATE         DATE,                                  /*建立日期          */
   MODIFIER            VARCHAR2(12),                          /*修改人员          */
   MODI_DATE           DATE,                                  /*修改日期          */
   FLAG                NUMBER(1),                             /*资料状态          */
   constraint PK_TB_PUBHV primary key (PUBHV_ID)
);
create unique index AK_TB_PUBHV on TB_PUBHV (PUBHV001,PUBHV002);
create sequence SEQ_TB_PUBHV minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHV to public;
grant index  on TB_PUBHV to public;
grant update on TB_PUBHV to public; 
grant delete on TB_PUBHV to public;  
grant insert on TB_PUBHV to public; 
grant select on SEQ_TB_PUBHV to public;   
/*
================================================================================
  表结构代码:TB_PUBHR                       
  表结构名称:商品库位表                         
  表结构目的:                               
================================================================================
*/                                        
                                            
  drop sequence SEQ_TB_PUBHR;               
  drop table TB_PUBHR;                      
  create table TB_PUBHR  (                  
     PUBHR_ID             INTEGER               not null,  /*商品库位ID         */
     PUBHR001             INTEGER               not null,  /*营运组织ID         */
     PUBHR002             INTEGER               not null,  /*品牌             */
     PUBHR003             INTEGER,                         /* 商品分类      */
     PUBHR004             INTEGER               not null,  /* 仓库ID      */
     PUBHR005             INTEGER               not null,  /* 货区Id       */
     PUBHR006             INTEGER,                         /* 货道ID       */
     PUBHR007             INTEGER,                         /* 货架ID       */ 
     PUBHR008             INTEGER,                         /* 货位ID      */
     CREATE_USER          VARCHAR2(12),                                 /*建立人员           */
     USER_GROUP           VARCHAR2(12),                                 /*建立人员部门       */                               
     CREATE_DATE          DATE,                                         /*建立日期           */
     MODIFIER             VARCHAR2(12),                                 /*修改人员           */
     MODI_DATE            DATE,                                         /*修改日期           */
     FLAG                 NUMBER(1),                                    /*资料状态              */
     constraint PK_TB_PUBHR primary key (PUBHR_ID)
  );                                        
 --create unique index AK_TB_PUBHR on TB_PUBHR(PHBHR002,PUBHR008,PUBHR009，PUBHR010);   --mark by hansf
  create sequence SEQ_TB_PUBHR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
  grant select on TB_PUBHR to public;       
  grant index  on TB_PUBHR to public;       
  grant update on TB_PUBHR to public;       
  grant delete on TB_PUBHR to public;       
  grant insert on TB_PUBHR to public;       
  grant select on SEQ_TB_PUBHR to public;  
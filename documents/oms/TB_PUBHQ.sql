\/*
================================================================================
  表结构代码:TB_PUBHQ                       
  表结构名称:库位表                         
  表结构目的:                               
================================================================================
*/                                        
                                            
  drop sequence SEQ_TB_PUBHQ;               
  drop table TB_PUBHQ;                      
  create table TB_PUBHQ  (                  
     PUBHQ_ID             INTEGER                            not null,  /*库位ID            */
     PUBHQ001             INTEGER                            not null,  /*营运组织ID        */
     PUBHQ002             INTEGER                            not null,  /*仓库ID            */
     PUBHQ003             VARCHAR2(12)                       not null,  /*库位编号          */
     PUBHQ004             VARCHAR2(30)                       not null,  /*库位名称          */
     PUBHQ005             VARCHAR2(255),                                 /*备注              */
     PUBHQ006             INTEGER,                                       /*货区              */
     PUBHQ007             INTEGER,                                       /*货道              */
     PUBHQ008             INIRGRR,                                       /*货架              */
     PUBHQ009             VARCHAR2(30),                                  /*库位条码              */
     PUBHQ010             VARCHAR2(30),                                  /*用途              */
     PUBHQ011             VARCHAR2(30),                                  /*规格              */
     PUBHQ012             NUMBER(18,2),                                  /*长              */
     PUBHQ013             NUMBER(18,2),                                  /*宽              */
     PUBHQ014             NUMBER(18,2),                                  /*高              */
     PUBHQ015             NUMBER(18,2),                                  /*承重              */
     PUBHQ016             VARCHAR2(30),                                  /*预留1              */
     PUBHQ017             VARCHAR2(30),                                  /*预留2              */
     PUBHQ018             VARCHAR2(30),                                  /*预留3              */
     CREATE_USER          VARCHAR2(12),                                 /*建立人员          */
     USER_GROUP           VARCHAR2(12),                                 /*建立人员部门      */                               
     CREATE_DATE          DATE,                                         /*建立日期          */
     MODIFIER             VARCHAR2(12),                                 /*修改人员          */
     MODI_DATE            DATE,                                         /*修改日期          */
     FLAG                 NUMBER(1),                                    /*资料状态          */
     constraint PK_TB_PUBHQ primary key (PUB_ID)
  );                                        
  create unique index AK_TB_PUBHQ on TB_PUBH(PHBHQ002,PUBHQ003);
  create sequence SEQ_TB_PUBHQ minvalue 1 maalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
  grant select on TB_PUBHQ to public;       
  grant index  on TB_PUBHQ to public;       
  grant update on TB_PUBHQ to public;       
  grant delete on TB_PUBHQ to public;       
  grant insert on TB_PUBHQ to public;       
  grant select on SEQ_TB_PUBHQ to public;   
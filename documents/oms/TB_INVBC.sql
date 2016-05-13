/*
================================================================================
表结构代码:TB_INVBC
表结构名称:调拨发货单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVBC;
drop index AK_TB_INVBC;
drop table TB_INVBC;
create table TB_INVBC  (
   INVBC_ID            INTEGER                          not null,       /*调拨发货单ID      */   
   INVBC001            INTEGER                           not null,      /*调拨发货单别      */
   INVBC002            VARCHAR2(30)                     not null,       /*调拨发货单号      */
   INVBC003            DATE                              not null,      /*单据日期          */
   INVBC004            VARCHAR2(1)                       not null,      /*来源单据1.手工录入，2要货汇总 */
   INVBC005            INTEGER,                                         /*来源单号          */
   INVBC006            INTEGER                          not null,       /*拨出营运组织      */
   INVBC007            INTEGER                          not null,       /*拨入营运组织      */
   INVBC008            INTEGER,                                         /*发货人员          */
   INVBC009            INTEGER,                                         /*收货人员          */
   INVBC010            VARCHAR2(255),                                   /*收货地址          */ 
   INVBC011            DATE,                                            /*到货日期          */
   INVBC012            VARCHAR2(255),                                   /*备注              */
   INVBC013            VARCHAR2(1),                                     /*审核状态          */
   INVBC014            INTEGER,                                         /*录入人            */
   INVBC015            DATE,                                            /*录入日期          */
   INVBC016            INTEGER,                                         /*审核人            */
   INVBC017            DATE,                                            /*审核日期          */
   INVBC018           VARCHAR2(1)            NOT NULL   ,               /*跟踪状态     */--1 未处理 2 已排车(发货) 3 已送货 4 部分完成 5.完成  --ADD BY HANSF 2009-01-27
   INVBC019            INTEGER,                                         /*排车次数*/--add by hansf 20100310
   INVBC020            INTEGER,                                         /*仓库ID         */
   INVBC021            VARCHAR2(1),                                     /*结案码add by hansf */
   INVBC022            NUMBER(18,3),                                    /*费用 add by hansf 20110114 */
   CREATE_USER          VARCHAR2(12),                               /*建立人员           */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_INVBC primary key (INVBC_ID)
);
create unique index AK_TB_INVBC on TB_INVBC (INVBC002,INVBC006);
create sequence SEQ_TB_INVBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVBC to public;
grant index  on TB_INVBC to public;
grant update on TB_INVBC to public; 
grant delete on TB_INVBC to public;  
grant insert on TB_INVBC to public; 
grant select on SEQ_TB_INVBC to public;   
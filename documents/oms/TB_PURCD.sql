/*
================================================================================
表结构代码:TB_PURCD
表结构名称:要货汇总库存信息表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURCD;
drop index AK_TB_PURCD;
drop table TB_PURCD;
create table TB_PURCD  (
   PURCD_ID             INTEGER                         not null,  /*要货汇总库存信息ID  */
   PURCD001             INTEGER                         not null,  /*要货汇总单ID        */
   PURCD002             INTEGER                         not null,  /*要货汇总商品统计ID  */
   PURCD003             INTEGER                         not null,  /*营运组织ID          */
   PURCD004             INTEGER,                                   /*商品条码ID          */ --mrak 20100402
   PURCD005             INTEGER                         not null,  /*商品ID              */--mrak 20100402
   PURCD006             INTEGER,                                   /*维度1ID             */--mrak 20100402
   PURCD007             INTEGER,                                   /*维度2ID             */--mrak 20100402
   PURCD008             INTEGER,                                   /*维度3ID             */--mrak 20100402
   PURCD009             INTEGER,                                   /*维度4ID             */--mrak 20100402
   PURCD010             INTEGER,                                   /*维度5ID             */--mrak 20100402
   PURCD011             NUMBER(18,3),                              /*库存量              */  库存锁定量+库存可用量  bataa031
   PURCD012             NUMBER(18,3),                              /*采购在途量          */
   PURCD013             NUMBER(18,3),                              /*配送在途量          */
   PURCD014             NUMBER(18,3),                              /*调拨在途量          */
   PURCD015             NUMBER(18,3),                                      /*库存锁定量          */ --modify by hansf 库存锁定量 bataa032
   PURCD016             NUMBER(18,3),                                      /*库存可用量      */ --modify by hansf 库存可用量
   PURCD017             INTEGER,                                      /*公司ID     */ 
   PURCD018             DATE,                                      /*调拨预计到货日      */    --mark 20100402 没有实际作用，备用字段
   PURCD019		INTEGER,					/*仓库id*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PURCD primary key (PURCD_ID)
);
create unique index AK_TB_PURCD on TB_PURCD (PURCD001,PURCD002,PURCD003,PURCD004,PURCD005);
create sequence SEQ_TB_PURCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURCD to public;
grant index  on TB_PURCD to public;
grant update on TB_PURCD to public; 
grant delete on TB_PURCD to public;  
grant insert on TB_PURCD to public; 
grant select on SEQ_TB_PURCD to public;   
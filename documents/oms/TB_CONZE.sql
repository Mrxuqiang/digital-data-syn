/*
================================================================================
表结构代码:TB_CONZE
表结构名称:商户撤场表
表结构目的:
================================================================================
*/
DROP TABLE TB_CONZE;
drop sequence SEQ_TB_CONZE;
drop index AK_TB_CONZE;
CREATE TABLE TB_CONZE
(
  CONZE_ID           INTEGER PRIMARY KEY ,           /*撤场单ID*/
  CONZE001           INTEGER NOT NULL,               /*单别ID*/
  CONZE002           VARCHAR2(30) NOT NULL,          /*撤场单号*/
  CONZE003           INTEGER NOT NULL,               /*撤场合同号ID*/
  CONZE004           INTEGER NOT NULL,               /*展位号ID*/
  CONZE005           INTEGER NOT NULL,               /*商户号ID*/
  CONZE006           INTEGER NOT NULL,               /*运营组织ID*/
  CONZE007           INTEGER NOT NULL,               /*品牌ID*/
  CONZE008           INTEGER NOT NULL,               /*系列ID*/
  CONZE_DATE         DATE  NOT NULL,                 /*撤场日期*/
  CONZE009           INTEGER NOT NULL,               /*录入人ID*/
  CONZE_INDATE       DATE NOT NULL,                  /*录入日期*/
  CONZE010           INTEGER ,                       /*审核人ID*/
  CONZE_SDATE        DATE,                           /*审核日期*/
  CONZE_STATE        VARCHAR2(1) NOT NULL,           /*审核状态(1.N：未审核;2.Y;已审核)*/
  CONZE_REMARK       VARCHAR2(255),                  /*备注*/
  FLAG         NUMBER                                /*状态*/
);
create unique index AK_TB_CONZE on TB_CONZE (CONZE002);
create sequence SEQ_TB_CONZE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONZE to public;
grant index  on TB_CONZE to public;
grant update on TB_CONZE to public; 
grant delete on TB_CONZE to public;  
grant insert on TB_CONZE to public; 
grant select on SEQ_TB_CONZE to public;



select ze.*,
       fa.pubfa001 as conze002c1,fa.pubfa002 as conze002c2,                  /* conze002c1 单别代码，conze002c2 单别代码 */
      /*be.conbe_id as conze003c1,*/be.conbe003 as conze003c2,               /* conze003c1 合同ID，conze003c2 合同号 */   
       bi.pubig003 as conze004c1,bi.pubig004 as conze004c2,                  /* conze004c1 摊位编号，conze004c2 摊位名称*/
       bg.pubgo001 as conze005c1,bg.pubgo003 as conze005c2,                  /* conze005c1 客商号，conze005c2 客商简称*/
       cb.pubcb001 as conze006c1,cb.pubcb002 as conze006c2,                  /* conze006c1 运营组织代码，conze006c2 运营组织简称*/
       nd.pubhb001 as conze007c1,nd.pubhb002 as conze007c2,                  /* conze007c1 品牌代码，conze007c2 品牌名称*/
       hb.pubhb001 as conze008c1,hb.pubhb002 as conze008c2,                  /* conze008c1 系列代码，conze008c2 系列简称 */
       cd.pubcd001 as conze009c1,cd.pubcd003 as conze009c2,                  /* conze009c1 录入人编号，conze009c2 录入人名称*/
       cdc.pubcd001 as conze010c1,cdc.pubcd003 as conze010c2                 /* conze010c1 审核人编号，conze010c2 审核人名称 */
 from TB_CONZE ze 
       left join TB_PUBFA fa on ze.conze001 = fa.pubfa_id                    /*TB_PUBFA 单别表*/
       left join TB_CONBE be on ze.conze003 = be.conbe_id                    /*TB_CONBE 合同表*/
       left join TB_PUBIG bi on ze.conze004 = bi.pubig_id                    /*TB_PUBIG 摊位表*/
       left join TB_PUBGO bg on ze.conze005 = bg.pubgo_id                    /*TB_PUBGO 商户表*/
       left join TB_PUBCB cb on ze.conze006 = cb.pubcb_id                    /*TB_PUBCB 营运组织表*/
       left join TB_PUBHB_BRAND nd on ze.conze007 = nd.pubhb_id              /*TB_PUBHB_BRAND 品牌表*/
       left join TB_PUBHB hb on ze.conze008 = hb.pubhb_id                    /*TB_PUBHB 系列表*/
       left join TB_PUBCD cd on ze.conze009 = cd.pubcd_id                    /*TB_PUBCD 员工表*/
       left join TB_PUBCD cdc on ze.conze010 = cdc.pubcd_id
    
       where ze.FLAG =0              
        
        



select PUBCB_ID,PUBCB001,PUBCB002,conbe008 from TB_PUBCB  where FLAG=0 /*营运组织开窗*/
 
select * from TB_CONBE BE


/*撤场合同开窗*/
select be.conbe_id,be.conbe003,
       ad.pubhb_id as conbec001,ad.pubhb001 as conbec001c1,ad.pubhb002 as conbec001c2,
       hb.pubhb_id as conbec002,hb.pubhb001 as conbec002c1,hb.pubhb002 as conbec002c2,
       bg.pubgo_id as conbec003,bg.pubgo001 as conbec003c1,bg.pubgo003 as conbec003c2,
       ig.pubig_id as conbec004,ig.pubig003 as conbec004c1,ig.pubig004 as conbec004c2
       from TB_CONBE be 
       left join TB_PUBHB_BRAND ad on be.conbe058=ad.pubhb_id         /*TB_PUBHB_BRAND 品牌表*/
       left join TB_PUBHB hb on be.conbe041=hb.pubhb_id               /*TB_PUBHB 系列表*/
       left join TB_PUBGO bg on be.conbe008=bg.pubgo_id               /*TB_PUBGO 商户表*/
       left join TB_PUBIG ig on be.conbe010=ig.pubig_id               /*TB_PUBII 摊位表*/
       where be.FLAG=0 and be.conbe_id not in(select CONZE003 from TB_CONZE)
       

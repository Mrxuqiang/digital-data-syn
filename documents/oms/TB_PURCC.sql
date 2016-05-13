/*
================================================================================
表结构代码:TB_PURCC
表结构名称:要货汇总商品分配表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURCC;
drop index AK_TB_PURCC;
drop table TB_PURCC;
create table TB_PURCC  (
   PURCC_ID             INTEGER                         not null,  /*要货汇总商品分配ID  */
   PURCC001             INTEGER                         not null,  /*要货汇总单ID        */
   PURCC002             INTEGER                         not null,  /*要货汇总商品统计ID  */
   PURCC003             INTEGER                         not null,  /*要货营运组织ID      */
   PURCC004             INTEGER                         not null,  /*要货单ID            */
   PURCC005             DATE,                                      /*要货日期            */
   PURCC006             INTEGER                         not null,  /*要货单商品ID        */
   PURCC007             INTEGER,                                   /*要货单明细ID          */
   PURCC008             INTEGER                         not null,  /*商品ID              */
   PURCC009             INTEGER                         not null,  /*要货单位ID          */
   PURCC010             NUMBER(12,2)                    not null,  /*单位换算率          */
   PURCC011             INTEGER                         not null,  /*供应商ID            */
   PURCC012             VARCHAR2(1)                     not null,  /*经营方式            */
   PURCC013             VARCHAR2(1)                     not null,  /*采配方式            */
   PURCC014             INTEGER,                                   /*维度1ID             */
   PURCC015             INTEGER,                                   /*维度2ID             */
   PURCC016             INTEGER,                                   /*维度3ID             */
   PURCC017             INTEGER,                                   /*维度4ID             */
   PURCC018             INTEGER,                                   /*维度5ID             */
   PURCC019             DATE,                                      /*需求日期            */
   PURCC020             NUMBER(18,3),                              /*要货量              */
   PURCC021             INTEGER,                              /*拨出组织ID          */
   PURCC022             NUMBER(18,3),                              /*拨出量              */
   PURCC023             NUMBER(18,3),                              /*配送量              */
   PURCC024             INTEGER                         not null,  /*采购单位ID          */
   PURCC025             NUMBER(12,2)                    not null,  /*单位换算率          */
   PURCC026             NUMBER(18,3),                              /*采购量              */
   PURCC027             NUMBER(18,3),                              /*未分配量            */
   PURCC028             VARCHAR2(1),                               /*结案否              */
   PURCC029            VARCHAR2(1),					/*来源类型*/  -- add by hansf  1 要货单 2 销售订单 3 申请单
   PURCC030         VARCHAR2(1),					/*商品服务属性*/  -- add by hansf  
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PURCC primary key (PURCC_ID)
);
create unique index AK_TB_PURCC on TB_PURCC (PURCC001,PURCC002,PURCC004,PURCC006);
create sequence SEQ_TB_PURCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURCC to public;
grant index  on TB_PURCC to public;
grant update on TB_PURCC to public; 
grant delete on TB_PURCC to public;  
grant insert on TB_PURCC to public; 
grant select on SEQ_TB_PURCC to public;   


select  sum(PURCC023) as DTBAB017
from tb_purcc 
group by PURCC003,PURCC004,PURCC012
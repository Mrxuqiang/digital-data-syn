/*
================================================================================
表结构代码:TB_PURBB
表结构名称:要货单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURBB;
drop index AK_TB_PURBB;
drop table TB_PURBB;
create table TB_PURBB  (
   PURBB_ID             INTEGER                         not null,  /*要货单商品ID        */
   PURBB001             INTEGER                         not null,  /*要货单ID            */
   PURBB002             INTEGER					   /*来源明细ID              */
   PURBB003             INTEGER,                                   /*商品条码ID          */
   PURBB004             INTEGER                         not null,  /*商品ID              */
   PURBB005             INTEGER                         not null,  /*要货单位ID          */
   PURBB006             NUMBER(12,2)                    not null,  /*单位换算率          */
   PURBB007             INTEGER                         not null,  /*供应商ID            */
   PURBB008             VARCHAR2(1)                     not null,  /*经营方式            */
   PURBB009             VARCHAR2(1)                     not null,  /*采配方式            */
   PURBB010             INTEGER,                                   /*维度1ID             */
   PURBB011             INTEGER,                                   /*维度2ID             */
   PURBB012             INTEGER,                                   /*维度3ID             */
   PURBB013             INTEGER,                                   /*维度4ID             */
   PURBB014             INTEGER,                                   /*维度5ID             */
   PURBB015             NUMBER(18,3),                              /*要货量              */
   PURBB016             NUMBER(18,3),                              /*已采量              */
   PURBB017             NUMBER(18,3),                              /*已配量              */
   PURBB018             NUMBER(18,3),                              /*拨入量              */
   PURBB019             DATE,                                      /*送货日期            */
   PURBB020             VARCHAR2(1),                               /*结案否              */
   PURBB021             VARCHAR2(255),                             /*备注                */
   PURBB022            VARCHAR2(1),                               /*商品服务属性*/
   PURBB023            NUMBER(18,3),                              /*未分配量             */
   PURBB024            NUMBER(18,3),                              /*取消量               */ 
   PURBB025            VARCHAR2(1),                               /*是否定制商品         */
   PURBB026            INTEGER,                                   /*备用          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PURBB primary key (PURBB_ID)
);
create unique index AK_TB_PURBB on TB_PURBB (PURBB_ID,PURBB004);
create sequence SEQ_TB_PURBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURBB to public;
grant index  on TB_PURBB to public;
grant update on TB_PURBB to public; 
grant delete on TB_PURBB to public;  
grant insert on TB_PURBB to public; 
grant select on SEQ_TB_PURBB to public;   
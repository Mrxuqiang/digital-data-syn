/*
================================================================================
表结构代码:TB_CONBB
表结构名称:合同优惠展位表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBB;
drop index AK_TB_CONBB;
drop table TB_CONBB;
create table TB_CONBB  (
   CONBB_ID             INTEGER                         not null,  /*优惠单展位ID    */
   CONBB001             INTEGER                         not null,  /*优惠单ID            */
   CONBB002             INTEGER,                                   /*合同ID              */
   CONBB003             INTEGER,                                   /*展位ID              */
   CONBB004             INTEGER,                                   /*品牌ID              */
   CONBB005             INTEGER,                                   /*商户ID              */
   CONBB006             NUMBER(12,2),                              /*租赁面积            */
   CONBB007             NUMBER(12,2),                              /*该展位预算总收入    */
   CONBB008             NUMBER(12,2),                              /*预算单价            */
   CONBB009             NUMBER(12,2),                              /*合同优惠后单价      */
   CONBB010             NUMBER(12,2),                              /*实际预算单价差额    */
   CONBB011             DATE                                    ,  /*开始日期            */
   CONBB012             DATE                                    ,  /*结束日期            */
   CONBB013             NUMBER(12,2),                              /*本次优惠            */
   CONBB014             NUMBER(12,2),                              /*累计优惠            */
   CONBB015             NUMBER(12,2),                              /*合同单价            */
   CONBB016             NUMBER(12,2),                              /*合同收入            */
   CONBB017             NUMBER(12,2),                              /*累计百分比          */
   CONBB018             VARCHAR2(1)                             ,  /*是否被合同使用      */
   CONBB019             NUMBER(12,2),                              /*需审批优惠          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                             
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                    /*资料状态            */
   constraint PK_TB_CONBB primary key (CONBB_ID)
);
create unique index AK_TB_CONBB on TB_CONBB (CONBB001,CONBB002,CONBB003,CONBB004,CONBB005);
create sequence SEQ_TB_CONBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBB to public;
grant index  on TB_CONBB to public;
grant update on TB_CONBB to public; 
grant delete on TB_CONBB to public;  
grant insert on TB_CONBB to public; 
grant select on SEQ_TB_CONBB to public;   
/*
================================================================================
表结构代码:TB_PURCB
表结构名称:要货汇总商品统计表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURCB;
drop index AK_TB_PURCB;
drop table TB_PURCB;
create table TB_PURCB  (
   PURCB_ID             INTEGER                         not null,  /*要货汇总商品统计ID  */
   PURCB001             INTEGER                         not null,  /*要货汇总单ID        */
   PURCB002             INTEGER,                                   /*商品条码ID          */--mark
   PURCB003             INTEGER                         not null,  /*商品ID              */
   PURCB004             INTEGER,                                   /*维度1ID             */
   PURCB005             INTEGER,                                   /*维度2ID             */
   PURCB006             INTEGER,                                   /*维度3ID             */
   PURCB007             INTEGER,                                   /*维度4ID             */
   PURCB008             INTEGER,                                   /*维度5ID             */
   PURCB009             NUMBER(18,3),                              /*要货量              */
   PURCB010             NUMBER(18,3),                              /*分配量              */
   PURCB011             VARCHAR2(1),                               /*是否定制商品        */ add by hansf 0625
   PURCB012             VARCHAR2(1),                               /*商品服务属性        */
   PURCB013             VARCHAR2(255),                             /*备注                */ --add by hansf 0626
   PURCB014             NUMBER(18,3),                              /*可用量              */--20110313 add by xiechun
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PURCB primary key (PURCB_ID)
);
create sequence SEQ_TB_PURCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURCB to public;
grant index  on TB_PURCB to public;
grant update on TB_PURCB to public; 
grant delete on TB_PURCB to public;  
grant insert on TB_PURCB to public; 
grant select on SEQ_TB_PURCB to public;   
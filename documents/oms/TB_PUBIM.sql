/*
================================================================================
表结构代码:TB_PUBIM
表结构名称:商品图片表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBIM;
drop index AK_TB_PUBIM;
drop table TB_PUBIM;
create table TB_PUBIM  (
   PUBIM_ID             INTEGER                         not null,  /*商品图片ID        */
   PUBIM001             INTEGER                         not null,  /*商品ID            */
   PUBIM002             INTEGER,                                   /*维度1             */
   PUBIM003             INTEGER,                                   /*维度2             */
   PUBIM004             INTEGER,                                   /*维度3             */
   PUBIM005             INTEGER,                                   /*维度4             */
   PUBIM006             INTEGER,                                   /*维度5             */
   PUBIM007             VARCHAR2(255),                             /*图片              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER,                                    /*资料状态          */
   constraint PK_TB_PUBIM primary key (PUBIM_ID)
);
create unique index AK_TB_PUBIM on TB_PUBIM (PUBIM001,FLAG);
create sequence SEQ_TB_PUBIM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIM to public;
grant index  on TB_PUBIM to public;
grant update on TB_PUBIM to public; 
grant delete on TB_PUBIM to public;  
grant insert on TB_PUBIM to public; 
grant select on SEQ_TB_PUBIM to public;  


select PUBHF_ID as PURBB003,PUBHF004 as PURBB003C1
from TB_PUBIM where pubhf001=:arg0: and pubhf002=:arg1:


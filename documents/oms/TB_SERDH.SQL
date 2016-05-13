/*
================================================================================
表结构代码:TB_SERDH
表结构名称:售后服务单故障描述表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERDH;
drop index AK_TB_SERDH;
drop table TB_SERDH;
create table TB_SERDH  (
   SERDH_ID             INTEGER               not null,              /*售后服务单故障描述ID */
   SERDH001             INTEGER               not null,              /*售后服务单ID         */
   SERDH002             INTEGER                       ,              /*商品ID               */20110512 modify by xiechun 可以为空
   SERDH003             VARCHAR2(255)         not null,              /*故障描述             */
   SERDH004             INTEGER,                                     /*维度1ID              */--20110618 ADD BY xiechun
   SERDH005             INTEGER,                                     /*维度2ID              */
   SERDH006             INTEGER,                                     /*维度3ID              */
   SERDH007             INTEGER,                                     /*维度4ID              */
   SERDH008             INTEGER,                                     /*维度5ID              */
   CREATE_USER          VARCHAR2(12),                                /*建立人员             */
   USER_GROUP           VARCHAR2(12),                                /*建立人员部门         */                               
   CREATE_DATE          DATE,                                        /*建立日期             */
   MODIFIER             VARCHAR2(12),                                /*修改人员             */
   MODI_DATE            DATE,                                        /*修改日期             */
   FLAG                 NUMBER(1),                                   /*资料状态             */
   constraint PK_TB_SERDH primary key (SERDH_ID)
);
create sequence SEQ_TB_SERDH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERDH to public;
grant index  on TB_SERDH to public;
grant update on TB_SERDH to public; 
grant delete on TB_SERDH to public;  
grant insert on TB_SERDH to public; 
grant select on SEQ_TB_SERDH to public; 
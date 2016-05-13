/*
================================================================================
表结构代码:TB_DTBDH
表结构名称:打包单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBDH;
drop index AK_TB_DTBDH;
drop table TB_DTBDH;
create table TB_DTBDH  (
   DTBDH_ID             INTEGER                         not null,   /*打包单ID             */
   DTBDH001             INTEGER                         not null,   /*单别                 */
   DTBDH002             VARCHAR2(30)                    not null,   /*打包单号             */
   DTBDH003             INTEGER                         not null,   /*营运组织             */
   DTBDH004             INTEGER,                                    /*打包人               */
   DTBDH005             INTEGER,                                    /*发货人               */
   DTBDH006             VARCHAR2(1)                     not null,   /*审核状态             */
   DTBDH007             INTEGER,                                    /*录入人               */
   DTBDH008             DATE,                                       /*录入时间             */
   DTBDH009             INTEGER,                                    /*审核人               */
   DTBDH010             DATE,                                       /*审核时间             */
   DTBDH011            VARCHAR2(1)                      not null,   /* 发货类型1、送货 2退样 */ 
   DTBDH012            INTEGER,                         not null,   /*打包门店             */     
   DTBDH013             VARCHAR2(1)                     not null,   /* 来源类型   */ --20110413 add by xiechun
   DTBDH014             INTEGER                         not null,   /* 来源单号   */ --20110413 add by xiechun
   CREATE_USER          VARCHAR2(12),                               /*建立人员               */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门           */                               
   CREATE_DATE          DATE,                                       /*建立日期               */
   MODIFIER             VARCHAR2(12),                               /*修改人员               */
   MODI_DATE            DATE,                                       /*修改日期               */
   FLAG                 NUMBER(1),                                  /*资料状态               */
   constraint PK_TB_DTBDH primary key (DTBDH_ID)
);
create unique index AK_TB_DTBDH on TB_DTBDH (DTBDH002,DTBDH003);
create sequence SEQ_TB_DTBDH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDH to public;
grant index  on TB_DTBDH to public;
grant update on TB_DTBDH to public; 
grant delete on TB_DTBDH to public;  
grant insert on TB_DTBDH to public; 
grant select on SEQ_TB_DTBDH to public;   
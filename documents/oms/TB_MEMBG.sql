/*
================================================================================
表结构代码:TB_MEMBG
表结构名称:卡异常处理表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMBG;
drop index AK_TB_MEMBG;
drop table TB_MEMBG;
create table TB_MEMBG  (
   MEMBG_ID             INTEGER                         not null,  /*卡异常处理单ID      */
   MEMBG001             INTEGER                         not null,  /*单别ID              */
   MEMBG002             VARCHAR2(30)                    not null,  /*处理单号            */
   MEMBG003             DATE                            not null,  /*单据日期            */
   MEMBG004             INTEGER                         not null,  /*处理营运组织ID      */
   MEMBG005             INTEGER                         not null,  /*处理部门ID          */
   MEMBG006             INTEGER                         not null,  /*处理人员ID          */
   MEMBG007             DATE                            not null,  /*处理日期            */
   MEMBG008             VARCHAR2(255),                             /*备注                */
   MEMBG009             NUMBER(30)                      not null,  /*卡号                */
   MEMBG010             INTEGER,                                   /*会员ID              */
   MEMBG011             INTEGER                         not null,  /*卡种ID              */
   MEMBG012             VARCHAR2(1)                     not null,  /*卡状态              */
   MEMBG013             NUMBER(12),                                /*积分余额            */
   MEMBG014             NUMBER(12,2),                              /*消费卡余额          */
   MEMBG015             NUMBER(12,2),                              /*礼券卡余额          */
   MEMBG016             DATE,                                      /*有效止日            */
   MEMBG017             VARCHAR2(1)                     not null,  /*操作类型1:挂失 2:挂失恢复 3:作废 4: 换卡 5:补积分 6:续有效期  */
   MEMBG018             DATE,                                      /*新有效止日          */
   MEMBG019             NUMBER(30),                                /*新卡号              */
   MEMBG020             INTEGER,                                   /*交款凭证单ID        */
   MEMBG021             NUMBER(12,0),                              /*此次补积分额        */
   MEMBG022             INTEGER,                                   /*录入人ID            */
   MEMBG023             DATE,                                      /*录入日期            */
   MEMBG024             INTEGER,                                   /*审核人ID            */ 
   MEMBG025             DATE,                                      /*审核日期            */
   MEMBG026             VARCHAR2(1)                     not null,  /*审核状态            */
   MEMBG027             VARCHAR2(1),                               /*是否签核            */
   MEMBG028             VARCHAR2(30),                              /*签核单号            */
   MEMBG029             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_MEMBG primary key (MEMBG_ID)
);
create unique index AK_TB_MEMBG on TB_MEMBG (MEMBG002);
create sequence SEQ_TB_MEMBG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBG to public;
grant index  on TB_MEMBG to public;
grant update on TB_MEMBG to public; 
grant delete on TB_MEMBG to public;  
grant insert on TB_MEMBG to public; 
grant select on SEQ_TB_MEMBG to public;   
/*
================================================================================
表结构代码:TB_CCMEA
表结构名称:消费券卡换券单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMEA;
drop index AK_TB_CCMEA;
drop table TB_CCMEA;
create table TB_CCMEA  (
   CCMEA_ID             INTEGER                         not null,  /*消费券卡换券单ID    */
   CCMEA001             INTEGER                         not null,  /*单别ID              */
   CCMEA002             VARCHAR2(30)                    not null,  /*换券单号            */
   CCMEA003             DATE                            not null,  /*单据日期            */
   CCMEA004             INTEGER                         not null,  /*营运组织ID          */
   CCMEA005             INTEGER                         not null,  /*业务部门ID          */
   CCMEA006             INTEGER                         not null,  /*业务人员ID          */
   CCMEA007             DATE                            not null,  /*换券日期            */
   CCMEA008             NUMBER(30)                      not null,  /*消费券卡号          */
   CCMEA009             VARCHAR2(255),                             /*备注                */
   CCMEA010             INTEGER,                                   /*录入人ID            */
   CCMEA011             DATE,                                      /*录入日期            */
   CCMEA012             INTEGER,                                   /*审核人ID            */
   CCMEA013             DATE,                                      /*审核日期            */
   CCMEA014             VARCHAR2(1)                     not null,  /*审核状态            */
   CCMEA015             VARCHAR2(1),                               /*是否签核            */
   CCMEA016             VARCHAR2(30),                              /*签核单号            */
   CCMEA017             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMEA primary key (CCMEA_ID)
);
create unique index AK_TB_CCMEA on TB_CCMEA (CCMEA002);
create sequence SEQ_TB_CCMEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMEA to public;
grant index  on TB_CCMEA to public;
grant update on TB_CCMEA to public; 
grant delete on TB_CCMEA to public;  
grant insert on TB_CCMEA to public; 
grant select on SEQ_TB_CCMEA to public;   
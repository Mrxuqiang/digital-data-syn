/*
================================================================================
表结构代码:TB_SALAC
表结构名称:客户协议单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALAC;
drop index AK_TB_SALAC;
drop table TB_SALAC;
create table TB_SALAC  (
   SALAC_ID             INTEGER                         not null,  /*客户协议单ID        */
   SALAC001             INTEGER                         not null,  /*单别ID              */
   SALAC002             VARCHAR2(30)                    not null,  /*协议单号            */
   SALAC003             DATE                            not null,  /*协议日期            */
   SALAC004             INTEGER                         not null,  /*签约营运组织ID      */
   SALAC005             INTEGER                         not null,  /*签约部门ID          */
   SALAC006             INTEGER                         not null,  /*签约人员ID          */
   SALAC007             INTEGER                         not null,  /*客商ID              */
   SALAC008             NUMBER(12,2),                              /*折扣率(%)           */
   SALAC009             NUMBER(12,2),                              /*进价上涨幅度(%)     */
   SALAC010             NUMBER(12,2),                              /*供应商分摊比率(%)   */
   SALAC011             DATE                            not null,  /*生效起日            */
   SALAC012             DATE                            not null,  /*生效止日            */
   SALAC013             DATE,                                      /*终止日期            */
   SALAC014             VARCHAR2(255),                             /*备注                */
   SALAC015             VARCHAR2(1)                     not null,  /*状态                */
   SALAC016             VARCHAR2(1),                               /*是否签核            */
   SALAC017             VARCHAR2(30),                              /*签核单号            */
   SALAC018             VARCHAR2(1),                               /*签核码              */
   SALAC019             INTEGER,                                   /*录入人ID            */
   SALAC020             DATE,                                      /*录入日期            */
   SALAC021             INTEGER,                                   /*审核人ID            */
   SALAC022             DATE,                                      /*审核日期            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SALAC primary key (SALAC_ID)
);
create unique index AK_TB_SALAC on TB_SALAC (SALAC002);
create sequence SEQ_TB_SALAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALAC to public;
grant index  on TB_SALAC to public;
grant update on TB_SALAC to public; 
grant delete on TB_SALAC to public;  
grant insert on TB_SALAC to public; 
grant select on SEQ_TB_SALAC to public;   
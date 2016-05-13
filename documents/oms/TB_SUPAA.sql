
/*
================================================================================
表结构代码:TB_SUPAA
表结构名称:场地异动单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAA;
drop index AK_TB_SUPAA;
drop table TB_SUPAA;
create table TB_SUPAA  (
   SUPAA_ID             INTEGER                         not null,  /*场地异动单ID        */
   SUPAA001             INTEGER                         not null,  /*单别ID              */
   SUPAA002             VARCHAR2(30)                    not null,  /*单据编号            */
   SUPAA003             DATE                            not null,  /*单据日期            */
   SUPAA004             INTEGER                         not null,  /*场地ID              */
   SUPAA005             VARCHAR2(1)                     not null,  /*异动原因0: 新增测量 1: 面积调整 2: 场地停用 3: 场地启用  */
   SUPAA006             DATE                            not null,  /*生效日期            */
   SUPAA007             NUMBER(2)                       not null,  /*版本流水号          */
   SUPAA008             VARCHAR2(100),                             /*备注                */
   SUPAA009             NUMBER(12,2)                    not null,  /*经营面积            */
   SUPAA010             NUMBER(12,2)                    not null,  /*计费面积            */  modify ouwx 2010/2/21
   SUPAA011             INTEGER,                                   /*录入人ID            */
   SUPAA012             DATE,                                      /*录入日期            */
   SUPAA013             INTEGER,                                   /*审核人ID            */
   SUPAA014             DATE,                                      /*审核日期            */
   SUPAA015             VARCHAR2(1)                     not null,  /*审核状态            */
   SUPAA016             VARCHAR2(1),                               /*是否签核            */
   SUPAA017             VARCHAR2(30),                              /*签核单号            */
   SUPAA018             VARCHAR2(1),                               /*签核码              */
   SUPAA019             DATE,                                      /*截止日期            */
   SUPAA020             NUMBER(22,2)                    not null,  /*建筑面积            */  modify ouwx 2010/2/21
   SUPAA021             VARCHAR2(255),                             /*图片                */
   SUPAA022             NUMBER(22,2)                    not null,  /*公摊率              */  add shizhan 2011/07/19
   SUPAA023             NUMBER(22,2)                    not null,  /*公摊面积            */  add shizhan 2011/07/19
   SUPAA024             NUMBER(22,2),                              /*预算面积            */  add by ouwx 2013/12/01
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAA primary key (SUPAA_ID)
);
create unique index AK_TB_SUPAA on TB_SUPAA (SUPAA002);
create sequence SEQ_TB_SUPAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAA to public;
grant index  on TB_SUPAA to public;
grant update on TB_SUPAA to public; 
grant delete on TB_SUPAA to public;  
grant insert on TB_SUPAA to public; 
grant select on SEQ_TB_SUPAA to public;   
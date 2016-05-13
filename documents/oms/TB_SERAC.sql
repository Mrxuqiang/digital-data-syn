/*
================================================================================
表结构代码:TB_SERAC
表结构名称:销售凭证发放单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERAC;
drop index AK_TB_SERAC;
drop table TB_SERAC;
create table TB_SERAC  (
   SERAC_ID             INTEGER                         not null,  /*销售凭证发放单ID    */
   SERAC001             INTEGER                         not null,  /*单别ID              */
   SERAC002             VARCHAR2(30)                    not null,  /*发放单号            */
   SERAC003             DATE                            not null,  /*单据日期            */
   SERAC004             INTEGER                         not null,  /*公司ID              */
   SERAC005             INTEGER                         not null,  /*营运组织ID          */
   SERAC006             DATE                            not null,  /*发放日期            */
   SERAC007             INTEGER                         not null,  /*业务部门ID          */
   SERAC008             INTEGER                         not null,  /*业务人员ID          */
   SERAC009             INTEGER                         not null,  /*客商ID              */
   SERAC010             INTEGER                         not null,  /*摊位ID              */
   SERAC011             INTEGER                         not null,  /*合同ID              */
   SERAC012             VARCHAR2(255),                             /*备注                */
   SERAC013             INTEGER,                                   /*录入人ID            */
   SERAC014             DATE,                                      /*录入日期            */
   SERAC015             INTEGER,                                   /*审核人ID            */
   SERAC016             DATE,                                      /*审核日期            */
   SERAC017             VARCHAR2(1)                     not null,  /*审核状态            */
   SERAC018             VARCHAR2(1),                               /*是否签核            */
   SERAC019             VARCHAR2(30),                              /*签核单号            */
   SERAC020             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SERAC primary key (SERAC_ID)
);
create unique index AK_TB_SERAC on TB_SERAC (SERAC002,SERAC005);
create sequence SEQ_TB_SERAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAC to public;
grant index  on TB_SERAC to public;
grant update on TB_SERAC to public; 
grant delete on TB_SERAC to public;  
grant insert on TB_SERAC to public; 
grant select on SEQ_TB_SERAC to public;   
/*
================================================================================
表结构代码:TB_SUPAM
表结构名称:商户引入过程联系表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAM;
drop index AK_TB_SUPAM;
drop table TB_SUPAM;
create table TB_SUPAM  (
   SUPAM_ID             INTEGER                         not null,  /*过程联系ID          */
   SUPAM001             INTEGER                         not null,  /*登记ID              */
   SUPAM002             INTEGER                         not null,  /*阶段ID              */
   SUPAM003             INTEGER                         not null,  /*步骤ID              */
   SUPAM004             INTEGER                         not null,  /*业务人员ID          */
   SUPAM005             DATE                            not null,  /*联系日期            */
   SUPAM006             VARCHAR2(30)                    not null,  /*联系人              */
   SUPAM007             VARCHAR2(255)                   not null,  /*联系内容            */
   SUPAM008             VARCHAR2(255)                   not null,  /*达成目标            */
   SUPAM009             DATE,                                      /*下次联系日期        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAM primary key (SUPAM_ID)
);
create unique index AK_TB_SUPAM on TB_SUPAM (SUPAM_ID,SUPAM001,SUPAM002,SUPAM003,SUPAM004,SUPAM005);
create sequence SEQ_TB_SUPAM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAM to public;
grant index  on TB_SUPAM to public;
grant update on TB_SUPAM to public; 
grant delete on TB_SUPAM to public;  
grant insert on TB_SUPAM to public; 
grant select on SEQ_TB_SUPAM to public;   
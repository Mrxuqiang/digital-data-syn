/*
================================================================================
表结构代码:TB_SUPAO
表结构名称:客商变更资质表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAO;
drop index AK_TB_SUPAO;
drop table TB_SUPAO;
create table TB_SUPAO  (
   SUPAO_ID             INTEGER                         not null,  /*客商变更资质ID      */
   SUPAO001             INTEGER                         not null,  /*客商变更ID          */
   SUPAO002             INTEGER                         not null,  /*证件类型ID          */
   SUPAO003             VARCHAR2(40)                    not null,  /*证件号码            */
   SUPAO004             VARCHAR2(30)                    not null,  /*持证人              */
   SUPAO005             DATE,                                      /*有效期起日          */
   SUPAO006             DATE,                                      /*有效期止日          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAO primary key (SUPAO_ID)
);
create unique index AK_TB_SUPAO on TB_SUPAO (SUPAO001,SUPAO002);
create sequence SEQ_TB_SUPAO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAO to public;
grant index  on TB_SUPAO to public;
grant update on TB_SUPAO to public; 
grant delete on TB_SUPAO to public;  
grant insert on TB_SUPAO to public; 
grant select on SEQ_TB_SUPAO to public;   
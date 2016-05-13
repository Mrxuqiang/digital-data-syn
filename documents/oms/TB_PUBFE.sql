/*
================================================================================
表结构代码:TB_PUBFE
表结构名称:自动编码流水记录表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBFE;
drop index AK_TB_PUBFE;
drop table TB_PUBFE;
create table TB_PUBFE  (
   PUBFE_ID             INTEGER                         not null,  /*自动编码流水ID      */
   PUBFE001             INTEGER                         not null,  /*公司ID              */
   PUBFE002             INTEGER                         not null,  /*核算账套ID              */
   PUBFE003             INTEGER                         not null,  /*会计年              */
   PUBFE004             INTEGER                         not null,  /*会计月              */
   PUBFE005             INTEGER                         not null,  /*流水号              */
   PUBFE006             INTEGER                         not null,  /*凭证类型              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PUBFE primary key (PUBFE_ID)
);
create unique index AK_TB_PUBFE on TB_PUBFE (PUBFE001,PUBFE002,PUBFE003,PUBFE004,PUBFE005,PUBFE006);
create sequence SEQ_TB_PUBFE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFE to public;
grant index  on TB_PUBFE to public;
grant update on TB_PUBFE to public; 
grant delete on TB_PUBFE to public;  
grant insert on TB_PUBFE to public; 
grant select on SEQ_TB_PUBFE to public;   

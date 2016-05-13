/*
================================================================================
表结构代码:TB_PUBRH
表结构名称:外折发送方表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRH;
drop index AK_TB_PUBRH;
drop table TB_PUBRH;
create table TB_PUBRH  (
   PUBRH_ID             INTEGER                         not null,  /*外折发送方ID          */
   PUBRH001             INTEGER                         not null,  /*外部折算主ID          */
   PUBRH002             INTEGER                         not null,  /*外部折算帐簿关联ID    */
   PUBRH003             VARCHAR2(255),                             /*摘要                  */
   PUBRH004             INTEGER                         not null,  /*会计科目ID            */
   PUBRH005             VARCHAR2(20) ,                             /*辅助核相项标识          */
   PUBRH006             INTEGER,                                   /*币种ID                */
   PUBRH007             VARCHAR2(1)                     not null,  /*方向                  */
   PUBRH008             INTEGER                         not null,  /*对应科目ID            */
   PUBRH009             VARCHAR2(20) ,                             /*对应辅助核算标识        */
   PUBRH010             VARCHAR2(255),                             /*对应摘要              */
   PUBRH011             INTEGER,                                   /*对应币种ID            */  
   PUBRH012             VARCHAR2(1)                     not null,  /*对应方向               */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBRH primary key (PUBRH_ID)
);
create unique index AK_TB_PUBRH on TB_PUBRH (PUBRH001,PUBRH002,PUBRH004,PUBRH005);
create sequence SEQ_TB_PUBRH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRH to public;
grant index  on TB_PUBRH to public;
grant update on TB_PUBRH to public; 
grant delete on TB_PUBRH to public;  
grant insert on TB_PUBRH to public; 
grant select on SEQ_TB_PUBRH to public;   
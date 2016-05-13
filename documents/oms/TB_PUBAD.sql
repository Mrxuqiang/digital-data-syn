/*                 
================================================================================
表结构代码:TB_PUBAD
表结构名称:卖场资料
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBAD;
drop index AK_TB_PUBAD;
drop table TB_PUBAD;
create table TB_PUBAD  (
   PUBAD_ID             INTEGER                         not null,  /*卖场ID         */
   PUBAD001             VARCHAR2(12)                    not null,  /*卖场代码       */
   PUBAD002             VARCHAR2(12)                    not null,  /*卖场名称       */
   PUBAD003             VARCHAR2(255)                           ,  /*卖场地址       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBAD primary key (PUBAD_ID)
);
create unique index AK_TB_PUBAD on TB_PUBAD (PUBAD001);
create sequence SEQ_TB_PUBAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBAD to public;
grant index  on TB_PUBAD to public;
grant update on TB_PUBAD to public; 
grant delete on TB_PUBAD to public;  
grant insert on TB_PUBAD to public; 
grant select on SEQ_TB_PUBAD to public;   
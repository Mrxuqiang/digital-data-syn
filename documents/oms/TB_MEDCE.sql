/*
================================================================================
表结构代码:TB_MEDCE
表结构名称:媒体合同分摊设定表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEDCE;
drop index AK_TB_MEDCE;
drop table TB_MEDCE;
create table TB_MEDCE  (
   MEDCE_ID             INTEGER                         not null,  /*分摊设定ID		 */
   MEDCE001             INTEGER                         not null,  /*媒体合同ID          */
   MEDCE002             INTEGER                         not null,  /*租赁合同号ID        */
   MEDCE003             VARCHAR2(1)                     not null,  /*分摊方式            */
   MEDCE004             NUMBER(12,2)                    not null,  /*金额或比率%         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_MEDCE primary key (MEDCE_ID)
);
create unique index AK_TB_MEDCE on TB_MEDCE (MEDCE001,MEDCE002);
create sequence SEQ_TB_MEDCE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDCE to public;
grant index  on TB_MEDCE to public;
grant update on TB_MEDCE to public; 
grant delete on TB_MEDCE to public;  
grant insert on TB_MEDCE to public; 
grant select on SEQ_TB_MEDCE to public;   
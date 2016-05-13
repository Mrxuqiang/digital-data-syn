/*
================================================================================
��ṹ����:TB_SYSDF
��ṹ����:�û���ɫ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSDF;
drop index AK_TB_SYSDF;
drop table TB_SYSDF;
create table TB_SYSDF  (
   SYSDF_ID             INTEGER                         not null,  /*�û���ɫID       */
   SYSDF001             INTEGER                         not null,  /*�û�Ȩ��ID       */
   SYSDF002             INTEGER                         not null,  /*��ɫID           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSDF primary key (SYSDF_ID)
);
create unique index AK_TB_SYSDF on TB_SYSDF (SYSDF001,SYSDF002);
create sequence SEQ_TB_SYSDF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDF to public;
grant index  on TB_SYSDF to public;
grant update on TB_SYSDF to public; 
grant delete on TB_SYSDF to public;  
grant insert on TB_SYSDF to public; 
grant select on SEQ_TB_SYSDF to public;   
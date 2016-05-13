/*
================================================================================
��ṹ����:TB_SYSDB
��ṹ����:��ɫ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSDB;
drop index AK_TB_SYSDB;
drop table TB_SYSDB;
create table TB_SYSDB  (
   SYSDB_ID             INTEGER                         not null,  /*��ɫ����ID       */
   SYSDB001             INTEGER                         not null,  /*��ɫID           */
   SYSDB002             INTEGER                         not null,  /*�˵�ID           */
   SYSDB003             VARCHAR2(500)                   not null,  /*�������й���     */
   SYSDB004             VARCHAR2(1)                     not null,  /*���û��������ϴ��� */
   SYSDB005             VARCHAR2(1)                     not null,  /*���û��������ϴ��� */
   SYSDB006             VARCHAR2(1),                               /*������        */
   SYSDB008             VARCHAR2(1),                               /*�����β˵��Ͽɼ�   */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSDB primary key (SYSDB_ID)
);
create unique index AK_TB_SYSDB on TB_SYSDB (SYSDB001,SYSDB002);
create sequence SEQ_TB_SYSDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDB to public;
grant index  on TB_SYSDB to public;
grant update on TB_SYSDB to public; 
grant delete on TB_SYSDB to public;  
grant insert on TB_SYSDB to public; 
grant select on SEQ_TB_SYSDB to public;   
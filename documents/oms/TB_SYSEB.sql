/*
================================================================================
��ṹ����:TB_SYSEB
��ṹ����:��̨���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSEB;
drop index AK_TB_SYSEB;
drop table TB_SYSEB;
create table TB_SYSEB  (
   SYSEB_ID             INTEGER                         not null,  /*�������ID       */
   SYSEB001             INTEGER                         not null,  /*����ID           */
   SYSEB002             VARCHAR2(30)                    not null,  /*��������         */
   SYSEB003             VARCHAR2(120)                   not null,  /*��������         */
   SYSEB004             VARCHAR2(1)                     not null,  /*��������         */
   SYSEB005             VARCHAR2(30),                              /*��������         */
   SYSEB006             VARCHAR2(1),                               /*�Ƿ�ǿ�         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSEB primary key (SYSEB_ID)
);
create unique index AK_TB_SYSEB on TB_SYSEB (SYSEB001,SYSEB002);
create sequence SEQ_TB_SYSEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSEB to public;
grant index  on TB_SYSEB to public;
grant update on TB_SYSEB to public; 
grant delete on TB_SYSEB to public;  
grant insert on TB_SYSEB to public; 
grant select on SEQ_TB_SYSEB to public;   
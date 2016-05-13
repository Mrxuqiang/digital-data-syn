/*
================================================================================
��ṹ����:TB_SYSBC
��ṹ����:��ṹ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSBC;
drop index AK_TB_SYSBC;
drop table TB_SYSBC;
create table TB_SYSBC  (
   SYSBC_ID             INTEGER                         not null,  /*������ID         */
   SYSBC001             INTEGER                         not null,  /*��ṹID         */
   SYSBC002             VARCHAR2(15)                    not null,  /*��������         */
   SYSBC003             VARCHAR2(150)                   not null,  /*�����ֶ�         */
   SYSBC004             VARCHAR2(1)                     not null,  /*����             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSBC primary key (SYSBC_ID)
);
create unique index AK_TB_SYSBC on TB_SYSBC (SYSBC001,SYSBC002);
create sequence SEQ_TB_SYSBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSBC to public;
grant index  on TB_SYSBC to public;
grant update on TB_SYSBC to public; 
grant delete on TB_SYSBC to public;  
grant insert on TB_SYSBC to public; 
grant select on SEQ_TB_SYSBC to public;   
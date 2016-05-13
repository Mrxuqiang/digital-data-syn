/*
================================================================================
��ṹ����:TB_SYSAA
��ṹ����:�������ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSAA;
drop index AK_TB_SYSAA;
drop table TB_SYSAA;
create table TB_SYSAA  (
   SYSAA_ID             INTEGER                         not null,  /*����ID           */
   SYSAA001             VARCHAR2(4)                     not null,  /*���Դ���         */
   SYSAA002             VARCHAR2(60)                    not null,  /*��������         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSAA primary key (SYSAA_ID)
);
create unique index AK_TB_SYSAA on TB_SYSAA (SYSAA001);
create sequence SEQ_TB_SYSAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAA to public;
grant index  on TB_SYSAA to public;
grant update on TB_SYSAA to public; 
grant delete on TB_SYSAA to public;  
grant insert on TB_SYSAA to public; 
grant select on SEQ_TB_SYSAA to public;   
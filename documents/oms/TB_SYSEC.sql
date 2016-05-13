/*
================================================================================
��ṹ����:TB_SYSEC
��ṹ����:������Ŀ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSEC;
drop index AK_TB_SYSEC;
drop table TB_SYSEC;
create table TB_SYSEC  (
   SYSEC_ID             INTEGER                         not null,  /*������ĿID       */
   SYSEC001             VARCHAR2(4)                     not null,  /*��Ŀ����         */
   SYSEC002             VARCHAR2(30)                    not null,  /*��Ŀ����         */
   SYSEC003             INTEGER                         not null,  /*����ID           */
   SYSEC004             VARCHAR2(1)                     not null,  /*��Ŀ״̬         */
   SYSEC005             VARCHAR2(1)                     not null,  /*ִ�з�ʽ         */
   SYSEC006             VARCHAR2(1)                     not null,  /*ִ��Ƶ��         */
   SYSEC007             VARCHAR2(2)                     not null,  /*ִ������         */
   SYSEC008             VARCHAR2(1)                     not null,  /*ÿ��Ƶ��         */
   SYSEC009             DATE                            not null,  /*ִ��ʱ��         */
   SYSEC010             NUMBER(2)                       not null,  /*Ƶ��Сʱ         */
   SYSEC011             DATE,                                      /*��ʼʱ��         */
   SYSEC012             DATE,                                      /*����ʱ��         */
   SYSEC013             VARCHAR2(500),                             /*��Ϣ��Ϣ         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSEC primary key (SYSEC_ID)
);
create unique index AK_TB_SYSEC on TB_SYSEC (SYSEC001);
create sequence SEQ_TB_SYSEC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSEC to public;
grant index  on TB_SYSEC to public;
grant update on TB_SYSEC to public; 
grant delete on TB_SYSEC to public;  
grant insert on TB_SYSEC to public; 
grant select on SEQ_TB_SYSEC to public;   
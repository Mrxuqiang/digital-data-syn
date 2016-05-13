/*
================================================================================
��ṹ����:TB_MEDBD
��ṹ����:�زĶ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEDBD;
drop index AK_TB_MEDBD;
drop table TB_MEDBD;
create table TB_MEDBD  (
   MEDBD_ID             INTEGER                         not null,  /*�ز�ID             */
   MEDBD001             VARCHAR2(4)                     not null,  /*�زı��           */
   MEDBD002             VARCHAR2(30)                    not null,  /*�زļ��           */
   MEDBD003             VARCHAR2(30),                              /*�ز�ȫ��           */
   MEDBD004             INTEGER,                                   /*�زĵ�λ           */
   MEDBD005             VARCHAR2(255),                             /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEDBD primary key (MEDBD_ID)
);
create unique index AK_TB_MEDBD on TB_MEDBD (MEDBD001);
create sequence SEQ_TB_MEDBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDBD to public;
grant index  on TB_MEDBD to public;
grant update on TB_MEDBD to public; 
grant delete on TB_MEDBD to public;  
grant insert on TB_MEDBD to public; 
grant select on SEQ_TB_MEDBD to public;   
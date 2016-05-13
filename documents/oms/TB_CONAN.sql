/*
================================================================================
��ṹ����:TB_CONAN
��ṹ����:��ͬƵ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONAN;
drop index AK_TB_CONAN;
drop table TB_CONAN;
create table TB_CONAN  (
   CONAN_ID             INTEGER                         not null,  /*��ͬƵ������ID      */
   CONAN001             VARCHAR2(4)                     not null,  /*Ƶ���������        */
   CONAN002             VARCHAR2(60)                    not null,  /*Ƶ����������        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                    /*����״̬            */
   constraint PK_TB_CONAN primary key (CONAN_ID)
);
create unique index AK_TB_CONAN on TB_CONAN (CONAN001);
create sequence SEQ_TB_CONAN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAN to public;
grant index  on TB_CONAN to public;
grant update on TB_CONAN to public; 
grant delete on TB_CONAN to public;  
grant insert on TB_CONAN to public; 
grant select on SEQ_TB_CONAN to public;   
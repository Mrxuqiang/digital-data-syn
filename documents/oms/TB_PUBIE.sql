/*
================================================================================
��ṹ����:TB_PUBIE
��ṹ����:¥���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBIE;
drop index AK_TB_PUBIE;
drop table TB_PUBIE;
create table TB_PUBIE  (
   PUBIE_ID             INTEGER                         not null,  /*¥��ID             */
   PUBIE001             INTEGER                         not null,  /*��˾ID             */
   PUBIE002             INTEGER                         not null,  /*Ӫ����֯ID         */
   PUBIE003             INTEGER                         not null,  /*¥��ID             */
   PUBIE004             VARCHAR2(10)                    not null,  /*¥�����           */
   PUBIE005             VARCHAR2(30)                    not null,  /*¥������           */
   PUBIE006             NUMBER(5,2)                     not null,  /*¥�㹫̯��(%)      */
   PUBIE007             VARCHAR2(1)                     not null,  /*��̯���㹫ʽ       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBIE primary key (PUBIE_ID)
);
create unique index AK_TB_PUBIE on TB_PUBIE (PUBIE004);
create sequence SEQ_TB_PUBIE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIE to public;
grant index  on TB_PUBIE to public;
grant update on TB_PUBIE to public; 
grant delete on TB_PUBIE to public;  
grant insert on TB_PUBIE to public; 
grant select on SEQ_TB_PUBIE to public;   
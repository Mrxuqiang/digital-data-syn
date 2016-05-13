/*
================================================================================
��ṹ����:TB_PUBRM
��ṹ����:��Ŀ��Ӧ��ϵ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRM;
drop index AK_TB_PUBRM;
drop table TB_PUBRM;
create table TB_PUBRM  (
   PUBRM_ID             INTEGER                         not null,  /*��Ŀ��Ӧ��ID       */
   PUBRM001             VARCHAR2(20)                    not null,  /*���               */
   PUBRM002             VARCHAR2(30)                    not null,  /*����               */
   PUBRM003             INTEGER                         not null,   /*������λID         */
   PUBRM004             INTEGER                         not null,  /*�Է���λID         */
   PUBRM005             INTEGER                         not null,  /*���˹���ID         */
   PUBRM006             VARCHAR2(1)                     not null,  /*����δ����         */
   PUBRM007             VARCHAR2(1)                     not null,  /*����               */
   PUBRM008             VARCHAR2(1)                     not null,  /*ԭ��               */
   PUBRM009             VARCHAR2(1)                     not null,  /*������           */
   PUBRM010             VARCHAR2(1)                     not null,  /*�������           */
   PUBRM011             VARCHAR2(1)                     not null,  /*�������           */
   PUBRM012             VARCHAR2(1)                     not null,  /*����ۼƶ���       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBRM primary key (PUBRM_ID)
);
create unique index AK_TB_PUBRM on TB_PUBRM (PUBRM001);
create sequence SEQ_TB_PUBRM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRM to public;
grant index  on TB_PUBRM to public;
grant update on TB_PUBRM to public; 
grant delete on TB_PUBRM to public;  
grant insert on TB_PUBRM to public; 
grant select on SEQ_TB_PUBRM to public;   
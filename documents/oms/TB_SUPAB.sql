/*
================================================================================
��ṹ����:TB_SUPAB
��ṹ����:̯λ�춯������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAB;
drop index AK_TB_SUPAB;
drop table TB_SUPAB;
create table TB_SUPAB  (
   SUPAB_ID             INTEGER                         not null,  /*̯λ�춯��ID        */
   SUPAB001             INTEGER                         not null,  /*����ID              */
   SUPAB002             VARCHAR2(30)                    not null,  /*���ݱ��            */
   SUPAB003             DATE                            not null,  /*��������            */
   SUPAB004             INTEGER                         not null,  /*̯λ���ID          */
   SUPAB005             VARCHAR2(1)                     not null,  /*�춯ԭ�� 0.���� 1.���� 2.ͣ�� 3.����  */
   SUPAB006             DATE                            not null,  /*��Ч����            */
   SUPAB007             NUMBER(2)                       not null,  /*�汾��ˮ��          */
   SUPAB008             VARCHAR2(100),                             /*��ע                */
   SUPAB009             INTEGER                         not null,  /*��ӪС��ID          */
   SUPAB010             INTEGER                         not null,  /*��Ӫ����ID          */
   SUPAB011             INTEGER                         not null,  /*��Ӫ����ID          */
   SUPAB012             INTEGER                         not null,  /*����¥��ID          */
   SUPAB013             INTEGER                         not null,  /*����¥��ID          */
   SUPAB014             VARCHAR2(1)                     not null,  /*̯λ����            */
   SUPAB015             INTEGER,                                   /*¼����ID            */
   SUPAB016             DATE,                                      /*¼������            */
   SUPAB017             INTEGER,                                   /*�����ID            */
   SUPAB018             DATE,                                      /*�������            */
   SUPAB019             VARCHAR2(1)                     not null,  /*���״̬            */
   SUPAB020             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   SUPAB021             VARCHAR2(30),                              /*ǩ�˵���            */
   SUPAB022             VARCHAR2(1),                               /*ǩ����              */
   SUPAB023             DATE,                                      /*��ֹ����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAB primary key (SUPAB_ID)
);
create unique index AK_TB_SUPAB on TB_SUPAB (SUPAB002);
create sequence SEQ_TB_SUPAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAB to public;
grant index  on TB_SUPAB to public;
grant update on TB_SUPAB to public; 
grant delete on TB_SUPAB to public;  
grant insert on TB_SUPAB to public; 
grant select on SEQ_TB_SUPAB to public;   
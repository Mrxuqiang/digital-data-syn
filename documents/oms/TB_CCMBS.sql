/*
================================================================================
��ṹ����:TB_CCMBS
��ṹ����:��״����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMBS;
drop index AK_TB_CCMBS;
drop table TB_CCMBS;
create table TB_CCMBS  (
   CCMBS_ID             INTEGER                         not null,  /*��ID                */
   CCMBS001             INTEGER                         not null,  /*����ID              */
   CCMBS002             NUMBER(30)                      not null,  /*����                */
   CCMBS003             VARCHAR2(1)                     not null,  /*��״̬  1.���  2.���� 3.ʹ��  4.��ʧ 5.���� 6.����ͣ�� */
   CCMBS004             DATE,                                      /*��������            */
   CCMBS005             INTEGER,                                   /*����Ӫ����֯ID      */
   CCMBS006             INTEGER,                                   /*��������ID          */
   CCMBS007             INTEGER,                                   /*������ID            */
   CCMBS008             NUMBER(30),                                /*ת�뿨��            */
   CCMBS009             INTEGER,                                   /*��ԱID              */
   CCMBS010             DATE,                                      /*��Ч����            */
   CCMBS011             DATE,                                      /*��Чֹ��            */
   CCMBS012             DATE,                                      /*��������            */
   CCMBS013             INTEGER,                                   /*����Ӫ����֯ID      */
   CCMBS014             INTEGER,                                   /*��������ID          */
   CCMBS015             INTEGER,                                   /*������ID            */
   CCMBS016             INTEGER,                                   /*��������ID          */
   CCMBS017             DATE,                                      /*ʧЧ����            */
   CCMBS018             DATE,                                      /*���������          */
   CCMBS019             NUMBER(12),                                /*�ۼƻ���            */
   CCMBS020             NUMBER(12),                                /*�Ѷһ���            */
   CCMBS021             NUMBER(12),                                /*�������            */
   CCMBS022             NUMBER(12),                                /*ʣ�����            */
   CCMBS023             NUMBER(12,2),                              /*�ۼ�����            */
   CCMBS024             NUMBER(12,2),                              /*���ѿ���ֵ���      */
   CCMBS025             NUMBER(12,2),                              /*���ѿ����ѽ��      */
   CCMBS026             NUMBER(12,2),                              /*���ѿ���ֵ���      */
   CCMBS027             NUMBER(12,2),                              /*���ѿ����          */
   CCMBS028             INTEGER,                                   /*��Ա���ȼ�          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMBS primary key (CCMBS_ID)
);
create unique index AK_TB_CCMBS on TB_CCMBS (CCMBS002);
create sequence SEQ_TB_CCMBS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBS to public;
grant index  on TB_CCMBS to public;
grant update on TB_CCMBS to public; 
grant delete on TB_CCMBS to public;  
grant insert on TB_CCMBS to public; 
grant select on SEQ_TB_CCMBS to public;   
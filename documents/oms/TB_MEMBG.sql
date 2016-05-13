/*
================================================================================
��ṹ����:TB_MEMBG
��ṹ����:���쳣�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEMBG;
drop index AK_TB_MEMBG;
drop table TB_MEMBG;
create table TB_MEMBG  (
   MEMBG_ID             INTEGER                         not null,  /*���쳣����ID      */
   MEMBG001             INTEGER                         not null,  /*����ID              */
   MEMBG002             VARCHAR2(30)                    not null,  /*������            */
   MEMBG003             DATE                            not null,  /*��������            */
   MEMBG004             INTEGER                         not null,  /*����Ӫ����֯ID      */
   MEMBG005             INTEGER                         not null,  /*������ID          */
   MEMBG006             INTEGER                         not null,  /*������ԱID          */
   MEMBG007             DATE                            not null,  /*��������            */
   MEMBG008             VARCHAR2(255),                             /*��ע                */
   MEMBG009             NUMBER(30)                      not null,  /*����                */
   MEMBG010             INTEGER,                                   /*��ԱID              */
   MEMBG011             INTEGER                         not null,  /*����ID              */
   MEMBG012             VARCHAR2(1)                     not null,  /*��״̬              */
   MEMBG013             NUMBER(12),                                /*�������            */
   MEMBG014             NUMBER(12,2),                              /*���ѿ����          */
   MEMBG015             NUMBER(12,2),                              /*��ȯ�����          */
   MEMBG016             DATE,                                      /*��Чֹ��            */
   MEMBG017             VARCHAR2(1)                     not null,  /*��������1:��ʧ 2:��ʧ�ָ� 3:���� 4: ���� 5:������ 6:����Ч��  */
   MEMBG018             DATE,                                      /*����Чֹ��          */
   MEMBG019             NUMBER(30),                                /*�¿���              */
   MEMBG020             INTEGER,                                   /*����ƾ֤��ID        */
   MEMBG021             NUMBER(12,0),                              /*�˴β����ֶ�        */
   MEMBG022             INTEGER,                                   /*¼����ID            */
   MEMBG023             DATE,                                      /*¼������            */
   MEMBG024             INTEGER,                                   /*�����ID            */ 
   MEMBG025             DATE,                                      /*�������            */
   MEMBG026             VARCHAR2(1)                     not null,  /*���״̬            */
   MEMBG027             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   MEMBG028             VARCHAR2(30),                              /*ǩ�˵���            */
   MEMBG029             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_MEMBG primary key (MEMBG_ID)
);
create unique index AK_TB_MEMBG on TB_MEMBG (MEMBG002);
create sequence SEQ_TB_MEMBG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBG to public;
grant index  on TB_MEMBG to public;
grant update on TB_MEMBG to public; 
grant delete on TB_MEMBG to public;  
grant insert on TB_MEMBG to public; 
grant select on SEQ_TB_MEMBG to public;   
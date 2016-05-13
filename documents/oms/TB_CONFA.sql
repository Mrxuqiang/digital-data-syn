/*
================================================================================
��ṹ����:TB_CONFA
��ṹ����:��Ӧ�̺�ͬ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONFA;
drop index AK_TB_CONFA;
drop table TB_CONFA;
create table TB_CONFA  (
   CONFA_ID             INTEGER                         not null,  /*��ͬ���ID          */
   CONFA001             INTEGER                         not null,  /*��ͬ��ID            */
   CONFA002             NUMBER(6,1)                     not null,  /*�汾��              */
   CONFA003             VARCHAR2(30)                    not null,  /*�Է�ǩԼ��          */
   CONFA004             DATE                            not null,  /*ǩ������            */
   CONFA005             VARCHAR2(80),                              /*�ĵ����            */
   CONFA006             INTEGER                         not null,  /*��Ӧ�̻�ID          */
   CONFA007             INTEGER                         not null,  /*ǩԼӪ����֯ID      */
   CONFA008             INTEGER                         not null,  /*ҵ����ID          */
   CONFA009             INTEGER                         not null,  /*ҵ����ԱID          */
   CONFA010             VARCHAR2(60),                              /*ǩԼ�ص�            */
   CONFA011             VARCHAR2(1)                     not null,  /*��Ӫ��ʽ            */
   CONFA012             DATE                            not null,  /*��ͬ����            */
   CONFA013             DATE                            not null,  /*��ֹͬ��            */
   CONFA014             NUMBER(12,2),                              /*��Ӫ���            */
   CONFA015             INTEGER                         not null,  /*���ʽID          */
   CONFA016             NUMBER(5),                                 /*������(��)          */
   CONFA017             VARCHAR2(1)                     not null,  /*��ͬ����            */
   CONFA018             INTEGER                                 ,  /*���ͬӪ����֯ID    */
   CONFA019             INTEGER                                 ,  /*���ͬID            */
   CONFA020             VARCHAR2(1)                     not null,  /*��ͬ״̬            */
   CONFA021             DATE,                                      /*��ֹ����            */
   CONFA022             VARCHAR2(255),                             /*��ע                */
   CONFA023             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CONFA024             VARCHAR2(30),                              /*ǩ�˵���            */
   CONFA025             VARCHAR2(1),                               /*ǩ����              */
   CONFA026             INTEGER,                                   /*¼����ID            */
   CONFA027             DATE,                                      /*¼������            */
   CONFA028             INTEGER,                                   /*�����ID            */
   CONFA029             DATE,                                      /*�������            */
   CONFA030             NUMBER(12,2),                              /*��Ʒ��Ĺ�Ӧ�̳е�����(%)*/
   CONFA031             VARCHAR2(1),                               /*�˻���ʽ            */
   CONFA032             NUMBER(5),                                 /*�˻��·�            */
   CONFA033             VARCHAR2(1),                               /*�����              */
   CONFA034             VARCHAR2(200),                             /*����ID              */
   CONFA035             VARCHAR2(200),                             /*������              */
   CONFA036             VARCHAR2(200),                             /*��ע                */
   CONFA037             VARCHAR2(200),                             /*����                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONFA primary key (CONFA_ID)
);
create unique index AK_TB_CONFA on TB_CONFA (CONFA001,CONFA002);
create sequence SEQ_TB_CONFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONFA to public;
grant index  on TB_CONFA to public;
grant update on TB_CONFA to public; 
grant delete on TB_CONFA to public;  
grant insert on TB_CONFA to public; 
grant select on SEQ_TB_CONFA to public;   
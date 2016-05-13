/*
================================================================================
��ṹ����:TB_SUPAN
��ṹ����:���̱������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAN;
drop index AK_TB_SUPAN;
drop table TB_SUPAN;
create table TB_SUPAN  (
   SUPAN_ID             INTEGER                         not null,  /*���̱��ID          */
   SUPAN001             INTEGER                         not null,  /*����ID              */
   SUPAN002             NUMBER(3)                       not null,  /*�汾��              */
   SUPAN003             VARCHAR2(40)                    not null,  /*���̼��            */
   SUPAN004             VARCHAR2(80)                    not null,  /*����ȫ��            */
   SUPAN005             VARCHAR2(1),                               /*�Ƿ��̻�            */
   SUPAN006             VARCHAR2(1),                               /*�Ƿ�Ӧ��          */
   SUPAN007             VARCHAR2(1),                               /*�Ƿ�ͻ�            */
   SUPAN008             INTEGER                         not null,  /*���ϴ����֯ID      */
   SUPAN009             INTEGER                         not null,  /*���̷���ID          */
   SUPAN010             INTEGER                         not null,  /*��ҵ����ID          */
   SUPAN011             VARCHAR2(255),                             /*��Ӫ��Χ            */
   SUPAN012             VARCHAR2(30),                              /*���˴���            */
   SUPAN013             VARCHAR2(30),                              /*���˵绰            */
   SUPAN014             VARCHAR2(30),                              /*�ܾ���              */
   SUPAN015             VARCHAR2(30),                              /*�ܾ���绰          */
   SUPAN016             VARCHAR2(30),                              /*��Ӫ��              */
   SUPAN017             VARCHAR2(30),                              /*��Ӫ�˵绰          */
   SUPAN018             VARCHAR2(30),                              /*Ӫ��������          */
   SUPAN019             VARCHAR2(60),                              /*Ӫ��E_Mail          */
   SUPAN020             VARCHAR2(60),                              /*��˾��ַ            */
   SUPAN021             INTEGER,                                   /*˰��ID              */
   SUPAN022             VARCHAR2(20),                              /*��˰�˵ǼǺ�        */
   SUPAN023             NUMBER(12,2),                              /*ע���ʽ�            */
   SUPAN024             VARCHAR2(30),                              /*����                */
   SUPAN025             INTEGER,                                   /*��Ӫ��̬ID          */
   SUPAN026             VARCHAR2(10),                              /*��Ʊ�ʱ�            */
   SUPAN027             VARCHAR2(255),                             /*��Ʊ��ַ            */
   SUPAN028             VARCHAR2(10),                              /*��������            */
   SUPAN029             VARCHAR2(255),                             /*��ʽ��ַ            */
   SUPAN030             VARCHAR2(10),                              /*�ʼ��ʱ�            */
   SUPAN031             VARCHAR2(255),                             /*�ʼĵ�ַ            */
   SUPAN032             INTEGER,                                   /*¼����ID            */
   SUPAN033             DATE,                                      /*¼������            */
   SUPAN034             INTEGER,                                   /*�����ID            */
   SUPAN035             DATE,                                      /*�������            */
   SUPAN036             VARCHAR2(1)                     not null,  /*���״̬            */
   SUPAN037             VARCHAR2(30),                              /*�����˵绰          */
   SUPAN038             VARCHAR2(1)                     not null,  /*�ʱ����ɷ�ʽ1.��С�� 2.����߶� 3.����׼  */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAN primary key (SUPAN_ID)
);
create unique index AK_TB_SUPAN on TB_SUPAN (SUPAN001,SUPAN002);
create sequence SEQ_TB_SUPAN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAN to public;
grant index  on TB_SUPAN to public;
grant update on TB_SUPAN to public; 
grant delete on TB_SUPAN to public;  
grant insert on TB_SUPAN to public; 
grant select on SEQ_TB_SUPAN to public;   
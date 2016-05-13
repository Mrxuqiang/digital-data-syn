/*
================================================================================
��ṹ����:TB_SUPAI
��ṹ����:�̻���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAI;
drop index AK_TB_SUPAI;
drop table TB_SUPAI;
create table TB_SUPAI  (
   SUPAI_ID             INTEGER                         not null,  /*�Ǽ�ID              */
   SUPAI001             VARCHAR2(16)                    not null,  /*�ǼǺ�              */
   SUPAI002             DATE                            not null,  /*�Ǽ�����            */
   SUPAI003             INTEGER,                                   /*�̻�ID              */
   SUPAI004             VARCHAR2(40)                    not null,  /*�̻����            */
   SUPAI005             VARCHAR2(80)                    not null,  /*�̻�ȫ��            */
   SUPAI006             INTEGER                         not null,  /*���̻�ID          */
   SUPAI007             INTEGER                         not null,  /*����ģ��ID          */
   SUPAI008             VARCHAR2(1),                               /*�Ƿ��̻�            */
   SUPAI009             VARCHAR2(1),                               /*�Ƿ�Ӧ��          */
   SUPAI010             VARCHAR2(1),                               /*�Ƿ�ͻ�            */
   SUPAI011             INTEGER                         not null,  /*������ID            */
   SUPAI012             VARCHAR2(1)                     not null,  /*����״̬ 0:���� 1.���� 2.ת��ʽ 3.תʧ��  */
   SUPAI013             INTEGER                         not null,  /*Ӫ����֯ID          */
   SUPAI014             INTEGER,                                   /*¥��ID              */
   SUPAI015             INTEGER,                                   /*¥��ID              */
   SUPAI016             INTEGER,                                   /*��ӪС��ID          */
   SUPAI017             NUMBER(12,2),                              /*�������            */
   SUPAI018             INTEGER,                                   /*���ϴ����֯ID      */
   SUPAI019             INTEGER                         not null,  /*��ҵ����ID          */
   SUPAI020             VARCHAR2(255),                             /*��Ӫ��Χ            */
   SUPAI021             VARCHAR2(30),                              /*���˴���            */
   SUPAI022             VARCHAR2(30),                              /*���˵绰            */
   SUPAI023             VARCHAR2(30),                              /*�ܾ���              */
   SUPAI024             VARCHAR2(30),                              /*�ܾ���绰          */
   SUPAI025             VARCHAR2(30),                              /*��Ӫ��              */
   SUPAI026             VARCHAR2(30),                              /*��Ӫ�˵绰          */
   SUPAI027             VARCHAR2(30),                              /*Ӫ��������          */
   SUPAI028             VARCHAR2(60),                              /*Ӫ��E_Mail          */
   SUPAI029             VARCHAR2(60),                              /*��˾��ַ            */
   SUPAI030             VARCHAR2(20),                              /*��˰�˵ǼǺ�        */
   SUPAI031             INTEGER,                                   /*����˰��ID          */
   SUPAI032             NUMBER(12,2),                              /*ע���ʽ�            */
   SUPAI033             VARCHAR2(30),                              /*����                */
   SUPAI034             INTEGER,                                   /*��Ӫ��̬ID          */
   SUPAI035             VARCHAR2(10),                              /*��Ʊ�ʱ�            */
   SUPAI036             VARCHAR2(255),                             /*��Ʊ��ַ            */
   SUPAI037             VARCHAR2(10),                              /*��������            */
   SUPAI038             VARCHAR2(255),                             /*��˾��ַ            */
   SUPAI039             VARCHAR2(10),                              /*�ʼ��ʱ�            */
   SUPAI040             VARCHAR2(255),                             /*�ʼĵ�ַ            */
   SUPAI041             VARCHAR2(1),                               /*��� 0.�ɹ� 1.ʧ��  */
   SUPAI042             INTEGER,                                   /*���ԭ��ID          */
   SUPAI043             VARCHAR2(255),                             /*��ע                */
   SUPAI044             INTEGER,                                   /*���̷���ID          */
   SUPAI045             VARCHAR2(30),                              /*�����˵绰          */
   SUPAI046             VARCHAR2(1)                     not null,  /*�ʱ����ɷ�ʽ1.��С�� 2.����߶� 3.����׼  */
   SUPAI047             VARCHAR2(1),                               /*������Դ1.�ֹ�¼�� 2.��������    */
   SUPAI048             VARCHAR2(30),                              /*��Դ����            */
   SUPAI049             INTEGER,                                   /*��Դ����ID          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAI primary key (SUPAI_ID)
);
create unique index AK_TB_SUPAI on TB_SUPAI (SUPAI001);
create sequence SEQ_TB_SUPAI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAI to public;
grant index  on TB_SUPAI to public;
grant update on TB_SUPAI to public; 
grant delete on TB_SUPAI to public;  
grant insert on TB_SUPAI to public; 
grant select on SEQ_TB_SUPAI to public;   
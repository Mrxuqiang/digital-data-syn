/*
================================================================================
��ṹ����:TB_SUPCA
��ṹ����:�̻���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPCA;
drop index AK_TB_SUPCA;
drop table TB_SUPCA;
create table TB_SUPCA  (
   SUPCA_ID             INTEGER                         not null,  /*�̻�����ID          */
   SUPCA001             INTEGER                         not null,  /*����ID              */
   SUPCA002             VARCHAR2(30)                    not null,  /*��������            */
   SUPCA003             DATE                            not null,  /*�Ǽ�����            */
   SUPCA004             INTEGER                         not null,  /*�Ǽ�Ӫ����֯ID      */
   SUPCA005             VARCHAR2(40)                    not null,  /*�̻����            */
   SUPCA006             VARCHAR2(80)                    not null,  /*�̻�ȫ��            */
   SUPCA007             VARCHAR2(1)                     not null,  /*������Դ            */
   SUPCA008             INTEGER,                                   /*���̻ID          */
   SUPCA009             VARCHAR2(100),                             /*��ע                */
   SUPCA010             INTEGER,                                   /*��ҵ����ID          */
   SUPCA011             VARCHAR2(255),                             /*��Ӫ��Χ            */
   SUPCA012             VARCHAR2(30),                              /*���˴���            */
   SUPCA013             VARCHAR2(30),                              /*���˵绰            */
   SUPCA014             VARCHAR2(30),                              /*�ܾ���              */
   SUPCA015             VARCHAR2(30),                              /*�ܾ���绰          */
   SUPCA016             VARCHAR2(30),                              /*��Ӫ��              */
   SUPCA017             VARCHAR2(30),                              /*��Ӫ�˵绰          */
   SUPCA018             VARCHAR2(30),                              /*Ӫ��������          */
   SUPCA019             VARCHAR2(30),                              /*�����˵绰          */
   SUPCA020             VARCHAR2(60),                              /*Ӫ��E_Mail          */
   SUPCA021             VARCHAR2(60),                              /*��˾��ַ            */
   SUPCA022             VARCHAR2(20),                              /*��˰�˵ǼǺ�        */
   SUPCA023             INTEGER,                                   /*����˰��ID          */
   SUPCA024             NUMBER(12,2),                              /*ע���ʽ�            */
   SUPCA025             VARCHAR2(30),                              /*����                */
   SUPCA026             INTEGER,                                   /*��Ӫ��̬ID          */
   SUPCA027             VARCHAR2(10),                              /*��Ʊ�ʱ�            */
   SUPCA028             VARCHAR2(255),                             /*��Ʊ��ַ            */
   SUPCA029             VARCHAR2(10),                              /*��������            */
   SUPCA030             VARCHAR2(255),                             /*��˾��ַ            */
   SUPCA031             VARCHAR2(10),                              /*�ʼ��ʱ�            */
   SUPCA032             VARCHAR2(255),                             /*�ʼĵ�ַ            */
   SUPCA033             NUMBER(12,2),                              /*������ƽ�����      */
   SUPCA034             NUMBER(12,2),                              /*�����������(M2)    */
   SUPCA035             VARCHAR2(60),                              /*��������λ��        */
   SUPCA036             VARCHAR2(30),                              /*�������ʽ        */
   SUPCA037             VARCHAR2(30),                              /*������Ӫ����        */
   SUPCA038             VARCHAR2(100),                             /*����                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPCA primary key (SUPCA_ID)
);
create unique index AK_TB_SUPCA on TB_SUPCA (SUPCA002);
create sequence SEQ_TB_SUPCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPCA to public;
grant index  on TB_SUPCA to public;
grant update on TB_SUPCA to public; 
grant delete on TB_SUPCA to public;  
grant insert on TB_SUPCA to public; 
grant select on SEQ_TB_SUPCA to public;   
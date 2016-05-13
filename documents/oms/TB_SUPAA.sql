
/*
================================================================================
��ṹ����:TB_SUPAA
��ṹ����:�����춯������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAA;
drop index AK_TB_SUPAA;
drop table TB_SUPAA;
create table TB_SUPAA  (
   SUPAA_ID             INTEGER                         not null,  /*�����춯��ID        */
   SUPAA001             INTEGER                         not null,  /*����ID              */
   SUPAA002             VARCHAR2(30)                    not null,  /*���ݱ��            */
   SUPAA003             DATE                            not null,  /*��������            */
   SUPAA004             INTEGER                         not null,  /*����ID              */
   SUPAA005             VARCHAR2(1)                     not null,  /*�춯ԭ��0: �������� 1: ������� 2: ����ͣ�� 3: ��������  */
   SUPAA006             DATE                            not null,  /*��Ч����            */
   SUPAA007             NUMBER(2)                       not null,  /*�汾��ˮ��          */
   SUPAA008             VARCHAR2(100),                             /*��ע                */
   SUPAA009             NUMBER(12,2)                    not null,  /*��Ӫ���            */
   SUPAA010             NUMBER(12,2)                    not null,  /*�Ʒ����            */  modify ouwx 2010/2/21
   SUPAA011             INTEGER,                                   /*¼����ID            */
   SUPAA012             DATE,                                      /*¼������            */
   SUPAA013             INTEGER,                                   /*�����ID            */
   SUPAA014             DATE,                                      /*�������            */
   SUPAA015             VARCHAR2(1)                     not null,  /*���״̬            */
   SUPAA016             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   SUPAA017             VARCHAR2(30),                              /*ǩ�˵���            */
   SUPAA018             VARCHAR2(1),                               /*ǩ����              */
   SUPAA019             DATE,                                      /*��ֹ����            */
   SUPAA020             NUMBER(22,2)                    not null,  /*�������            */  modify ouwx 2010/2/21
   SUPAA021             VARCHAR2(255),                             /*ͼƬ                */
   SUPAA022             NUMBER(22,2)                    not null,  /*��̯��              */  add shizhan 2011/07/19
   SUPAA023             NUMBER(22,2)                    not null,  /*��̯���            */  add shizhan 2011/07/19
   SUPAA024             NUMBER(22,2),                              /*Ԥ�����            */  add by ouwx 2013/12/01
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAA primary key (SUPAA_ID)
);
create unique index AK_TB_SUPAA on TB_SUPAA (SUPAA002);
create sequence SEQ_TB_SUPAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAA to public;
grant index  on TB_SUPAA to public;
grant update on TB_SUPAA to public; 
grant delete on TB_SUPAA to public;  
grant insert on TB_SUPAA to public; 
grant select on SEQ_TB_SUPAA to public;   
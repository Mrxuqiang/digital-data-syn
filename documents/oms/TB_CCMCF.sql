/*
================================================================================
��ṹ����:TB_CCMCF
��ṹ����:���ѿ���ֵ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMCF;
drop index AK_TB_CCMCF;
drop table TB_CCMCF;
create table TB_CCMCF  (
   CCMCF_ID             INTEGER                         not null,  /*���ѿ���ֵ��ID      */
   CCMCF001             INTEGER                         not null,  /*����ID              */
   CCMCF002             VARCHAR2(30)                    not null,  /*��ֵ����            */
   CCMCF003             DATE                            not null,  /*��������            */
   CCMCF004             INTEGER                         not null,  /*Ӫ����֯ID          */
   CCMCF005             INTEGER                         not null,  /*��ֵ����ID          */
   CCMCF006             INTEGER                         not null,  /*��ֵ��ԱID          */
   CCMCF007             DATE                            not null,  /*��ֵ����            */
   CCMCF008             VARCHAR2(255),                             /*��ע                */
   CCMCF009             NUMBER(30)                      not null,  /*���ѿ���            */
   CCMCF010             NUMBER(12,2)                    not null,  /*���ѿ����          */
   CCMCF011             NUMBER(12,2)                    not null,  /*���ѿ���ֵ���      */
   CCMCF012             NUMBER(12,2)                    not null,  /*�˿���            */
   CCMCF013             NUMBER(12,2)                    not null,  /*���ѿ���ֵ�����    */
   CCMCF014             INTEGER,                                   /*¼����ID            */
   CCMCF015             DATE,                                      /*¼������            */
   CCMCF016             INTEGER,                                   /*�����ID            */
   CCMCF017             DATE,                                      /*�������            */
   CCMCF018             VARCHAR2(1)                     not null,  /*���״̬            */
   CCMCF019             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CCMCF020             VARCHAR2(30),                              /*ǩ�˵���            */
   CCMCF021             VARCHAR2(1),                               /*ǩ����              */
   CCMCF022             INTEGER,                                   /*����ID              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMCF primary key (CCMCF_ID)
);
create unique index AK_TB_CCMCF on TB_CCMCF (CCMCF002);
create sequence SEQ_TB_CCMCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMCF to public;
grant index  on TB_CCMCF to public;
grant update on TB_CCMCF to public; 
grant delete on TB_CCMCF to public;  
grant insert on TB_CCMCF to public; 
grant select on SEQ_TB_CCMCF to public;   
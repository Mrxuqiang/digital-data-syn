/*
================================================================================
��ṹ����:TB_CCMCH
��ṹ����:���ѿ���Ʊ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMCH;
drop index AK_TB_CCMCH;
drop table TB_CCMCH;
create table TB_CCMCH  (
   CCMCH_ID             INTEGER                         not null,  /*���ѿ���Ʊ��ID      */
   CCMCH001             INTEGER                         not null,  /*����ID              */
   CCMCH002             VARCHAR2(30)                    not null,  /*��Ʊ����            */
   CCMCH003             DATE                            not null,  /*��������            */
   CCMCH004             INTEGER                         not null,  /*Ӫ����֯ID          */
   CCMCH005             INTEGER                         not null,  /*��Ʊ����ID          */
   CCMCH006             INTEGER                         not null,  /*��Ʊ��ԱID          */
   CCMCH007             DATE                            not null,  /*��Ʊ����            */
   CCMCH008             VARCHAR2(255),                             /*��ע                */
   CCMCH009             INTEGER                         not null,  /*��Ʊ����ID          */
   CCMCH010             NUMBER(12,0)                    not null,  /*��Ʊ����            */
   CCMCH011             NUMBER(12,2)                    not null,  /*��Ʊ���            */
   CCMCH012             VARCHAR2(60)                    not null,  /*��Ʊ��λ            */
   CCMCH013             VARCHAR2(60),                              /*��Ʊ����            */
   CCMCH014             VARCHAR2(1),                               /*����Ʊ              */
   CCMCH015             DATE,                                      /*��Ʊ����            */
   CCMCH016             INTEGER,                                   /*¼����ID            */
   CCMCH017             DATE,                                      /*¼������            */
   CCMCH018             INTEGER,                                   /*�����ID            */
   CCMCH019             DATE,                                      /*�������            */
   CCMCH020             VARCHAR2(1)                     not null,  /*���״̬            */
   CCMCH021             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CCMCH022             VARCHAR2(30),                              /*ǩ�˵���            */
   CCMCH023             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMCH primary key (CCMCH_ID)
);
create unique index AK_TB_CCMCH on TB_CCMCH (CCMCH002);
create sequence SEQ_TB_CCMCH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMCH to public;
grant index  on TB_CCMCH to public;
grant update on TB_CCMCH to public; 
grant delete on TB_CCMCH to public;  
grant insert on TB_CCMCH to public; 
grant select on SEQ_TB_CCMCH to public;   
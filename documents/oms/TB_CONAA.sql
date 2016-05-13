/*
================================================================================
��ṹ����:TB_CONAA
��ṹ����:���ö����׼��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONAA;
drop index AK_TB_CONAA;
drop table TB_CONAA;
create table TB_CONAA  (
   CONAA_ID             INTEGER                         not null,  /*���ù̶���׼ID      */
   CONAA001             INTEGER                         not null,  /*��˾ID              */
   CONAA002             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONAA003             INTEGER                         not null,  /*����ID              */
   CONAA004             INTEGER                         not null,  /*̯λID              */
   CONAA005             DATE                            not null,  /*��ʼ����            */
   CONAA006             DATE                            not null,  /*��������            */
   CONAA007             NUMBER(12,2)                    not null,  /*��׼����            */
   CONAA008             NUMBER(12,4)                    not null,  /*���ñ�׼            */
   CONAA009             VARCHAR2(255),                             /*��ע                */
   CONAA010             INTEGER,                                   /*¼����              */
   CONAA011             DATE,                                      /*¼������            */
   CONAA012             INTEGER,                                   /*�޸���              */
   CONAA013             DATE,                                      /*�޸�����            */
   CONAA014             INTEGER,                                   /*����ID              */ add ouwx 2011/11/16
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                 /*����״̬            */
   constraint PK_TB_CONAA primary key (CONAA_ID)
);
create unique index AK_TB_CONAA on TB_CONAA (CONAA003,CONAA004,CONAA005,CONAA014);
create sequence SEQ_TB_CONAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAA to public;
grant index  on TB_CONAA to public;
grant update on TB_CONAA to public; 
grant delete on TB_CONAA to public;  
grant insert on TB_CONAA to public; 
grant select on SEQ_TB_CONAA to public;   
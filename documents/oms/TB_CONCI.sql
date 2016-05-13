/*
================================================================================
��ṹ����:TB_CONCI
��ṹ����:��ͬ��������Żݱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONCI;
drop index AK_TB_CONCI;
drop table TB_CONCI;
create table TB_CONCI  (
   CONCI_ID             INTEGER                         not null,  /*��ͬ��������Ż�ID  */
   CONCI001             VARCHAR2(16)                    not null,  /*��ͬ���ID          */
   CONCI002             VARCHAR2(4)                     not null,  /*�Ż�ID              */
   CONCI003             VARCHAR2(4)                     not null,  /*�Żݹ�ʽID          */
   CONCI004             VARCHAR2(10)                    not null,  /*����ID              */
   CONCI005             DATE                            not null,  /*�Ż�����            */
   CONCI006             DATE                            not null,  /*�Ż�ֹ��            */
   CONCI007             NUMBER(12,4)                    not null,  /*�Żݶ�              */
   CONCI008             NUMBER(12,2),                              /*�Ż��ܽ��          */
   CONCI009             INTEGER,                                   /*�Żݵ�ID            */
   CONCI010             INTEGER,                                   /*�Żݵ���ϸID        */
   CONCI011             VARCHAR2(1)                    not null,   /*�Żݷ�ʽ            */
   CONCI012             VARCHAR2(60),                              /*�Ż�˵��            */
   CONCI013             INTEGER,                                   /*����ID              */ ADD OUWX 2011/12/18
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                 /*����״̬            */
   constraint PK_TB_CONCI primary key (CONCI_ID)
);
create unique index AK_TB_CONCI on TB_CONCI (CONCI001,CONCI002,CONCI004,CONCI005); MODIFY OUWX 2011/12/18
create sequence SEQ_TB_CONCI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCI to public;
grant index  on TB_CONCI to public;
grant update on TB_CONCI to public; 
grant delete on TB_CONCI to public;  
grant insert on TB_CONCI to public; 
grant select on SEQ_TB_CONCI to public;   
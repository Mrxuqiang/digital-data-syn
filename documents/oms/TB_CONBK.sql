/*
================================================================================
��ṹ����:TB_CONBK
��ṹ����:��ͬ�����Żݱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBK;
drop index AK_TB_CONBK;
drop table TB_CONBK;
create table TB_CONBK  (
   CONBK_ID             INTEGER                         not null,  /*��ͬ�����Ż�ID      */
   CONBK001             INTEGER                         not null,  /*��ͬID              */
   CONBK002             INTEGER                         not null,  /*�Ż�ID              */
   CONBK003             INTEGER                         not null,  /*�Żݹ�ʽID          */
   CONBK004             INTEGER                         not null,  /*����ID              */
   CONBK005             DATE                            not null,  /*�Ż�����            */
   CONBK006             DATE                            not null,  /*�Ż�ֹ��            */
   CONBK007             NUMBER(12,2)                    not null,  /*�Żݶ�              */
   CONBK008             NUMBER(12,2),                              /*�Ż��ܽ��          */
   CONBK009             INTEGER,                                   /*�Żݵ�ID            */
   CONBK010             INTEGER,                                   /*�Żݵ���ϸID        */
   CONBK011             VARCHAR2(1)                    not null,   /*�Żݷ�ʽ            */
   CONBK012             VARCHAR2(60),                              /*�Ż�˵��            */
   CONBK013             INTEGER,                                   /*����ID              */ add ouwx 2011/12/18
   CONBK014             INTEGER,                                   /*�Ż�Ƶ��            */ add ouwx 2013/12/08
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                 /*����״̬            */
   constraint PK_TB_CONBK primary key (CONBK_ID)
);
create unique index AK_TB_CONBK on TB_CONBK (CONBK001,CONBK002,CONBK004,CONBK005,CONBK010,CONBK013);  modify ouwx 2011/12/18
create sequence SEQ_TB_CONBK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBK to public;
grant index  on TB_CONBK to public;
grant update on TB_CONBK to public; 
grant delete on TB_CONBK to public;  
grant insert on TB_CONBK to public; 
grant select on SEQ_TB_CONBK to public;   
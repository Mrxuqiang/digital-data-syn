/*
================================================================================
��ṹ����:TB_SALDA
��ṹ����:Ԥ�յ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALDA;
drop index AK_TB_SALDA;
drop table TB_SALDA;
create table TB_SALDA  (
   SALDA_ID             INTEGER                         not null,  /*Ԥ�յ�ID         */
   SALDA001             INTEGER                         not null,  /*����ID           */
   SALDA002             VARCHAR2(30)                    not null,  /*Ԥ�յ���         */
   SALDA003             DATE                            not null,  /*Ԥ������         */
   SALDA004             INTEGER                         not null,  /*��˾ID           */
   SALDA005             INTEGER                         not null,  /*������֯ID       */
   SALDA006             VARCHAR2(1)                     not null,  /*��Դ����         */
   SALDA007             INTEGER,                                   /*��ԴID           */
   SALDA008             INTEGER,                                   /*����ƾ֤����ID   */
   SALDA009             NUMBER(12),                                /*����ƾ֤��       */
   SALDA010             INTEGER,                                   /*̯λID           */
   SALDA011             VARCHAR2(1),                               /*̯λ����         */
   SALDA012             INTEGER,                                   /*���޺�ͬID       */
   SALDA013             INTEGER,                                   /*�����̻�ID       */
   SALDA014             INTEGER,                                   /*�ͻ�ID           */
   SALDA015             VARCHAR2(30),                              /*�˿�����         */
   SALDA016             VARCHAR2(30),                              /*��ϵ�绰         */
   SALDA017             INTEGER,                                   /*֤������ID       */
   SALDA018             VARCHAR2(30),                              /*֤������         */
   SALDA019             VARCHAR2(255),                             /*��ע             */
   SALDA020             INTEGER,                                   /*¼����ID         */
   SALDA021             DATE,                                      /*¼������         */
   SALDA022             INTEGER,                                   /*�����ID         */
   SALDA023             DATE,                                      /*�������         */
   SALDA024             VARCHAR2(1)                     not null,  /*���״̬         */
   SALDA025             VARCHAR2(1),                               /*�Ƿ�ǩ��         */
   SALDA026             VARCHAR2(30),                              /*ǩ�˵���         */
   SALDA027             VARCHAR2(1),                               /*ǩ����           */
   SALDA028             VARCHAR2(16)                    not null,  /*��Դ����         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SALDA primary key (SALDA_ID)
);
create unique index AK_TB_SALDA on TB_SALDA (SALDA002,SALDA005);
create sequence SEQ_TB_SALDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDA to public;
grant index  on TB_SALDA to public;
grant update on TB_SALDA to public; 
grant delete on TB_SALDA to public;  
grant insert on TB_SALDA to public; 
grant select on SEQ_TB_SALDA to public;   
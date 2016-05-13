/*
================================================================================
��ṹ����:TB_INVDA
��ṹ����:��װ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVDA;
drop index AK_TB_INVDA;
drop table TB_INVDA;
create table TB_INVDA  (
   INVDA_ID             INTEGER                  not null,     /*�����ID       */    
   INVDA001             INTEGER                  not null,     /*�������       */    
   INVDA002             VARCHAR2(30)             not null,     /*�������       */    
   INVDA003             DATE                     not null,     /*�������       */    
   INVDA004             INTEGER                  not null,     /*���Ӫ����֯   */    
   INVDA005             INTEGER                  not null,     /*�������       */    
   INVDA006             INTEGER                  not null,     /*������Ա       */    
   INVDA007             INTEGER                                /*���õ���       */    
   INVDA008             VARCHAR2(1)              not null,     /*�������       */    
   INVDA009             INTEGER                  not null,     /*�˿�����       */    
   INVDA010             VARCHAR2(20)                           /*�˿͵绰       */    
   INVDA011             VARCHAR2(1)                            /*��Ч֤��       */    
   INVDA012             VARCHAR2(20)                           /*֤������       */    
   INVDA013             DATE                                   /*Ԥ������       */    
   INVDA014             VARCHAR2(255)                          /*��ע           */    
   INVDA015             VARCHAR2(12),                          /*���״̬       */    
   INVDA016             INTEGER,                               /*¼����         */    
   INVDA017             DATE,                                  /*¼������       */    
   INVDA018             INTEGER,                               /*�����         */    
   INVDA019             DATE,                                  /*�������       */    
   CREATE_USER          VARCHAR2(12),                          /*������Ա        */
   USER_GROUP           VARCHAR2(12),                          /*������Ա����    */                               
   CREATE_DATE          DATE,                                  /*��������        */
   MODIFIER             VARCHAR2(12),                          /*�޸���Ա        */
   MODI_DATE            DATE,                                  /*�޸�����        */
   FLAG                 NUMBER(1),                             /*����״̬        */
   constraint PK_TB_INVDA primary key (INVDA_ID)
);
create unique index AK_TB_INVDA on TB_INVDA (INVDA001,INVDA002);
create sequence SEQ_TB_INVDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVDA to public;
grant index  on TB_INVDA to public;
grant update on TB_INVDA to public; 
grant delete on TB_INVDA to public;  
grant insert on TB_INVDA to public; 
grant select on SEQ_TB_INVDA to public;   
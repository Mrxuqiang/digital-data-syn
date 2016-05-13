/*
================================================================================
��ṹ����:TB_PAYAA
��ṹ����:�ݹ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PAYAA;
drop index AK_TB_PAYAA;
drop table TB_PAYAA;
create table TB_PAYAA  (
   PAYAA_ID             INTEGER                         not null,  /*�ݹ�����ID        */
   PAYAA001             INTEGER                         not null,  /*����              */
   PAYAA002             VARCHAR2(30)                    not null,  /*�ݹ�����          */
   PAYAA003             INTEGER                         not null,  /*��Ӧ��ID            */
   PAYAA004             INTEGER                         not null,  /*���Ӧ��ID        */
   PAYAA005             INTEGER                         not null,  /*����ID              */ 
   PAYAA006             NUMBER(16,4),                               /*����              */ 
   PAYAA007             DATE,                                      /*��������          */ 
   PAYAA008             VARCHAR2(1)                     not null,  /*��Ӫ��ʽ          */
   PAYAA009             INTEGER,                                   /*����ID          */ 
   PAYAA010             INTEGER,                                   /*�����ԱID          */ 
   PAYAA011             DATE,                                     /*Ӧ����             */ 
   PAYAA012             VARCHAR2(1)                     not null,  /*����״̬          */ 
   PAYAA013             INTEGER,                                   /*¼����ID            */ 
   PAYAA014             DATE,                                      /*¼������          */ 
   PAYAA015             INTEGER,                                   /*�����ID            */ 
   PAYAA016             DATE,                                      /*�������          */
   PAYAA017             VARCHAR2(1)                     not null,  /*����ƾ֤          */  
   PAYAA018             NUMBER(16,2),                              /*ԭ�ҽ��ϼ�      */ 
   PAYAA019             NUMBER(16,2),                              /*���ҽ��ϼ�      */ 
   PAYAA020             NUMBER(16,2),                              /*ԭ�ҽ��˽��      */ 
   PAYAA021             NUMBER(16,2),                              /*���ҽ��ʽ��      */  
   PAYAA022             VARCHAR2(1)                     not null,  /*�����ݹ�          */ 
   PAYAA023             VARCHAR2(255),                             /*��ע              */ 
   PAYAA024             INTEGER,                                   /*Ӫ����֯ID        */
   PAYAA025             VARCHAR2(1),                               /*����״̬          */  
   PAYAA026             NUMBER(4),                                 /*������        */
   PAYAA027             NUMBER(2),                                 /*����ڼ�          */         
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PAYAA primary key (PAYAA_ID)
);
create unique index AK_TB_PAYAA on TB_PAYAA (PAYAA001,PAYAA002);
create sequence SEQ_TB_PAYAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAA to public;
grant index  on TB_PAYAA to public;
grant update on TB_PAYAA to public; 
grant delete on TB_PAYAA to public;  
grant insert on TB_PAYAA to public; 
grant select on SEQ_TB_PAYAA to public;   
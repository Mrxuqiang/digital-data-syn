/*
================================================================================
��ṹ����:TB_PAYAE
��ṹ����:��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PAYAE;
drop index AK_TB_PAYAE;
drop table TB_PAYAE;
create table TB_PAYAE  (
   PAYAE_ID             INTEGER                         not null,  /*��������ID       */
   PAYAE001             VARCHAR2(1)                     not null,  /*����             */
   PAYAE002             INTEGER                         not null,  /*����             */
   PAYAE003             VARCHAR2(30)                    not null,  /*�����         */
   PAYAE004             DATE                            not null,  /*��������         */
   PAYAE005             INTEGER                         not null,  /*��Ӧ��           */ 
   PAYAE006             INTEGER                         not null,  /*���Ӧ��       */ 
   PAYAE007             INTEGER,                                   /*����             */ 
   PAYAE008             INTEGER,                                   /*��Ա             */
   PAYAE009             VARCHAR2(1)                     not null,  /*����״̬         */ 
   PAYAE010             INTEGER,                                   /*¼����           */ 
   PAYAE011             DATE,                                      /*¼������         */ 
   PAYAE012             INTEGER,                                   /*�����           */ 
   PAYAE013             DATE,                                      /*�������         */ 
   PAYAE014             NUMBER(16,2),                              /*ԭ�Ҹ���ϼ�     */ 
   PAYAE015             NUMBER(16,2),                              /*���Ҹ���ϼ�     */ 
   PAYAE016             NUMBER(16,2),                              /*ԭ�Һ������     */
   PAYAE017             NUMBER(16,2),                              /*���Һ������       */ 
   PAYAE018             VARCHAR2(1)                     not null,  /*����״̬         */  
   PAYAE019             VARCHAR2(30),                              /*�ɹ�������           */ 
   PAYAE020             INTEGER                         not null,  /*����               */ 
   PAYAE021             NUMBER(16,4),                               /*����               */  
   PAYAE022             VARCHAR2(1)                     not null,   /*��Դ               */  
   PAYAE023             INTEGER,                                   /*��Դ����ID          */   
   PAYAE024             NUMBER(4),                                /*������               */  
   PAYAE025             NUMBER(2),                                /*����ڼ�          */     
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PAYAE primary key (PAYAE_ID)
);
create unique index AK_TB_PAYAE on TB_PAYAE (PAYAE002,PAYAE003);
create sequence SEQ_TB_PAYAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAE to public;
grant index  on TB_PAYAE to public;
grant update on TB_PAYAE to public; 
grant delete on TB_PAYAE to public;  
grant insert on TB_PAYAE to public; 
grant select on SEQ_TB_PAYAE to public;   
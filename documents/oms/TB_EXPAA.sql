/*
================================================================================
��ṹ����:TB_EXPAA
��ṹ����:�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_EXPAA;
drop index AK_TB_EXPAA;
drop table TB_EXPAA;
create table TB_EXPAA  (
   EXPAA_ID             INTEGER                         not null,  /*�������ID          */
   EXPAA001             INTEGER                         not null,  /*����              */
   EXPAA002             VARCHAR2(30)                    not null,  /*����              */
   EXPAA003             DATE                            not null,  /*��������          */
   EXPAA004             INTEGER                         not null,  /*����              */
   EXPAA005             INTEGER                         not null,  /*��Ա              */
   EXPAA006             VARCHAR2(1)                     not null,  /*���㷽ʽ          */
   EXPAA007             INTEGER                         not null,  /*�����˺�           */
   EXPAA008             INTEGER,                                   /*¼����             */
   EXPAA009             DATE,                                      /*¼������           */
   EXPAA010             VARCHAR2(1)                     not null,  /*����״̬           */
   EXPAA011             INTEGER,                                   /*�����             */
   EXPAA012             DATE ,                                     /*�������           */
   EXPAA013             VARCHAR2(1)                     not null,  /*����ƾ֤           */
   EXPAA014             NUMBER(16,2),                              /*ԭ�ҽ��ϼ�           */
   EXPAA015             NUMBER(16,2),                              /*ԭ�һ�����           */ 
   EXPAA016             VARCHAR2(255),                             /*��ע               */  
   EXPAA017             INTEGER                          not null, /*����           */ 
   EXPAA018             NUMBER(16,4),                               /*����               */ 
   EXPAA019             NUMBER(16,2),                              /*���ҽ��ϼ�           */ 
   EXPAA020             NUMBER(16,2),                              /*���һ�����           */ 
   EXPAA021             NUMBER(4),                                 /*������           */   
   EXPAA022             NUMBER(2),                                 /*����ڼ�           */    
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_EXPAA primary key (EXPAA_ID)
);
create unique index AK_TB_EXPAA on TB_EXPAA (EXPAA001,EXPAA002);
create sequence SEQ_TB_EXPAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_EXPAA to public;
grant index  on TB_EXPAA to public;
grant update on TB_EXPAA to public; 
grant delete on TB_EXPAA to public;  
grant insert on TB_EXPAA to public; 
grant select on SEQ_TB_EXPAA to public;   
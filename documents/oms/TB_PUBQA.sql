/*
================================================================================
��ṹ����:TB_PUBQA
��ṹ����:���ʱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBQA;
drop index AK_TB_PUBQA;
drop table TB_PUBQA;
create table TB_PUBQA  (
   PUBQA_ID             INTEGER                              not null,  /*����ID             */
   PUBQA001             VARCHAR2(4)                          not null,  /*���ʱ���           */
   PUBQA002             VARCHAR2(60)                         not null,  /*��������           */
   PUBQA003             VARCHAR2(1)                          not null,  /*��������           */
   PUBQA004             DATE                                 not null,  /*������Ч��         */
   PUBQA005             VARCHAR2(1)                          not null,  /*��������           */
   PUBQA006             DATE                                 not null,  /*����¼������       */
   PUBQA007             VARCHAR2(1)                          not null,  /*����������         */
   PUBQA008             VARCHAR2(1)                          not null,  /*����ʾ           */
   PUBQA009             VARCHAR2(255),                                  /*��ע               */
   PUBQA010             NUMBER(7,6)                          not null,  /*������             */
   PUBQA011             NUMBER(7,6)                          not null,  /*������             */
   PUBQA012             NUMBER(7,6)                          not null,  /*������             */
   PUBQA013             NUMBER(16,2),                                   /*͸֧�����       */
   PUBQA014             NUMBER(6),                                      /*͸֧�������       */
   PUBQA015             NUMBER(7,6),                                    /*͸֧������         */  
   PUBQA016             NUMBER(7,6),                                    /*͸֧������         */  
   PUBQA017             NUMBER(7,6),                                    /*͸֧������         */  
   PUBQA018             NUMBER(7,6),                                    /*Ų��������         */  
   PUBQA019             NUMBER(7,6),                                    /*Ų��������         */  
   PUBQA020             NUMBER(7,6) ,                                   /*Ų��������         */        
   CREATE_USER          VARCHAR2(12),                                   /*������Ա            */
   USER_GROUP           VARCHAR2(12),                                   /*������Ա����        */                               
   CREATE_DATE          DATE,                                           /*��������            */
   MODIFIER             VARCHAR2(12),                                   /*�޸���Ա            */
   MODI_DATE            DATE,                                           /*�޸�����            */
   FLAG                 NUMBER(1),                                      /*����״̬            */
   constraint PK_TB_PUBQA primary key (PUBQA_ID)
);
create uQAque index AK_TB_PUBQA on TB_PUBQA (PUBQA001);
create sequence SEQ_TB_PUBQA minvalue 1 QAxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBQA to public;
grant index  on TB_PUBQA to public;
grant update on TB_PUBQA to public; 
grant delete on TB_PUBQA to public;  
grant insert on TB_PUBQA to public; 
grant select on SEQ_TB_PUBQA to public;   
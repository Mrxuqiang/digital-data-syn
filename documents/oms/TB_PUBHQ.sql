\/*
================================================================================
  ��ṹ����:TB_PUBHQ                       
  ��ṹ����:��λ��                         
  ��ṹĿ��:                               
================================================================================
*/                                        
                                            
  drop sequence SEQ_TB_PUBHQ;               
  drop table TB_PUBHQ;                      
  create table TB_PUBHQ  (                  
     PUBHQ_ID             INTEGER                            not null,  /*��λID            */
     PUBHQ001             INTEGER                            not null,  /*Ӫ����֯ID        */
     PUBHQ002             INTEGER                            not null,  /*�ֿ�ID            */
     PUBHQ003             VARCHAR2(12)                       not null,  /*��λ���          */
     PUBHQ004             VARCHAR2(30)                       not null,  /*��λ����          */
     PUBHQ005             VARCHAR2(255),                                 /*��ע              */
     PUBHQ006             INTEGER,                                       /*����              */
     PUBHQ007             INTEGER,                                       /*����              */
     PUBHQ008             INIRGRR,                                       /*����              */
     PUBHQ009             VARCHAR2(30),                                  /*��λ����              */
     PUBHQ010             VARCHAR2(30),                                  /*��;              */
     PUBHQ011             VARCHAR2(30),                                  /*���              */
     PUBHQ012             NUMBER(18,2),                                  /*��              */
     PUBHQ013             NUMBER(18,2),                                  /*��              */
     PUBHQ014             NUMBER(18,2),                                  /*��              */
     PUBHQ015             NUMBER(18,2),                                  /*����              */
     PUBHQ016             VARCHAR2(30),                                  /*Ԥ��1              */
     PUBHQ017             VARCHAR2(30),                                  /*Ԥ��2              */
     PUBHQ018             VARCHAR2(30),                                  /*Ԥ��3              */
     CREATE_USER          VARCHAR2(12),                                 /*������Ա          */
     USER_GROUP           VARCHAR2(12),                                 /*������Ա����      */                               
     CREATE_DATE          DATE,                                         /*��������          */
     MODIFIER             VARCHAR2(12),                                 /*�޸���Ա          */
     MODI_DATE            DATE,                                         /*�޸�����          */
     FLAG                 NUMBER(1),                                    /*����״̬          */
     constraint PK_TB_PUBHQ primary key (PUB_ID)
  );                                        
  create unique index AK_TB_PUBHQ on TB_PUBH(PHBHQ002,PUBHQ003);
  create sequence SEQ_TB_PUBHQ minvalue 1 maalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
  grant select on TB_PUBHQ to public;       
  grant index  on TB_PUBHQ to public;       
  grant update on TB_PUBHQ to public;       
  grant delete on TB_PUBHQ to public;       
  grant insert on TB_PUBHQ to public;       
  grant select on SEQ_TB_PUBHQ to public;   
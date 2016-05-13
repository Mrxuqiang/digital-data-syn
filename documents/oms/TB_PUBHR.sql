/*
================================================================================
  ��ṹ����:TB_PUBHR                       
  ��ṹ����:��Ʒ��λ��                         
  ��ṹĿ��:                               
================================================================================
*/                                        
                                            
  drop sequence SEQ_TB_PUBHR;               
  drop table TB_PUBHR;                      
  create table TB_PUBHR  (                  
     PUBHR_ID             INTEGER               not null,  /*��Ʒ��λID         */
     PUBHR001             INTEGER               not null,  /*Ӫ����֯ID         */
     PUBHR002             INTEGER               not null,  /*Ʒ��             */
     PUBHR003             INTEGER,                         /* ��Ʒ����      */
     PUBHR004             INTEGER               not null,  /* �ֿ�ID      */
     PUBHR005             INTEGER               not null,  /* ����Id       */
     PUBHR006             INTEGER,                         /* ����ID       */
     PUBHR007             INTEGER,                         /* ����ID       */ 
     PUBHR008             INTEGER,                         /* ��λID      */
     CREATE_USER          VARCHAR2(12),                                 /*������Ա           */
     USER_GROUP           VARCHAR2(12),                                 /*������Ա����       */                               
     CREATE_DATE          DATE,                                         /*��������           */
     MODIFIER             VARCHAR2(12),                                 /*�޸���Ա           */
     MODI_DATE            DATE,                                         /*�޸�����           */
     FLAG                 NUMBER(1),                                    /*����״̬              */
     constraint PK_TB_PUBHR primary key (PUBHR_ID)
  );                                        
 --create unique index AK_TB_PUBHR on TB_PUBHR(PHBHR002,PUBHR008,PUBHR009��PUBHR010);   --mark by hansf
  create sequence SEQ_TB_PUBHR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
  grant select on TB_PUBHR to public;       
  grant index  on TB_PUBHR to public;       
  grant update on TB_PUBHR to public;       
  grant delete on TB_PUBHR to public;       
  grant insert on TB_PUBHR to public;       
  grant select on SEQ_TB_PUBHR to public;  
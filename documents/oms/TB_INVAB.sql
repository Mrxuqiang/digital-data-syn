/*
================================================================================
��ṹ����:TB_INVAB
��ṹ����:��Ʒ���ⵥ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVAB;
drop index AK_TB_INVAB;
drop table TB_INVAB;
create table TB_INVAB  (                                             
   INVAB_ID          INTEGER                  not null,        /*������ϸID     */    
   INVAB001          INTEGER                  not null,        /*���ⵥID       */    
   INVAB002          INTEGER                  not null,        /*��Ʒ����       */    
   INVAB003          INTEGER,                                  /*ά��1          */    
   INVAB004          INTEGER,                                  /*ά��2          */    
   INVAB005          INTEGER,                                  /*ά��3          */    
   INVAB006          INTEGER,                                  /*ά��4          */    
   INVAB007          INTEGER,                                  /*ά��5          */    
   INVAB008          INTEGER                  not null,        /*�ֿ�           */    
   INVAB009          INTEGER                  not null,        /*��λ           */    
   INVAB010          VARCHAR2(30),                             /*������         */    
   INVAB011          VARCHAR2(30),                             /*������         */    
   INVAB012          VARCHAR2(30),                             /*��������       */    
   INVAB013          INTEGER                  not null,        /*���ⵥλ       */    
   INVAB014          NUMBER(18,3)             not null,        /*��λ������     */    
   INVAB015          NUMBER(18,3)             not null,        /*������         */    
   INVAB016          NUMBER(18,3)             not null,        /*������         */    
   INVAB017          NUMBER(12,2)             not null,        /*˰ǰ����       */    
   INVAB018          NUMBER(12,2)             not null,        /*��˰����       */    
   INVAB019          INTEGER                  not null,        /*˰��           */    
   INVAB020          NUMBER(12,2)             not null,        /*˰��           */    
   INVAB021          NUMBER(12,2)             not null,        /*˰ǰ���       */    
   INVAB022          NUMBER(12,2)             not null,        /*��˰���       */    
   INVAB023          VARCHAR2(1)              not null,        /*��Ʒ��������   */    
   INVAB024          VARCHAR2(255),                            /*��ע           */    
   INVAB025          NUMBER(18,3),                             /*�˻���         */    
   CREATE_USER      VARCHAR2(12),                                /*������Ա           */             
   USER_GROUP       VARCHAR2(12),                                /*������Ա����       */             
   CREATE_DATE      DATE,                                        /*��������           */             
   MODIFIER         VARCHAR2(12),                                /*�޸���Ա           */             
   MODI_DATE        DATE,                                        /*�޸�����           */             
   FLAG             NUMBER(1),                                   /*����״̬           */            


  constraint PK_TB_INVAB primary key (INVAB_ID)                               
);                                           
create unique index AK_TB_INVAB on TB_INVAB (INVAB_ID,INVAB002);               
create sequence SEQ_TB_INVAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVAB to public;                                     
grant index  on TB_INVAB to public;                                     
grant update on TB_INVAB to public;                                      
grant delete on TB_INVAB to public;                                       
grant insert on TB_INVAB to public;                                      
grant select on SEQ_TB_INVAB to public;                                        
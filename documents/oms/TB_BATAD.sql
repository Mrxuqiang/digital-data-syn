/*
================================================================================
��ṹ����:TB_BATAD
��ṹ����:���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BATAD;
drop index AK_TB_BATAD;
drop table TB_BATAD;
create table TB_BATAD  (
   BATAD_ID	          INTEGER                  not null,    /*��ˮID               */   
   BATAD001	          VARCHAR2(2)              not null,    /*��������             */   
   BATAD002	          INTEGER                  not null,    /*����ID               */   
   BATAD003	          INTEGER,                              /*��ϸID               */   
   BATAD004	          INTEGER                  not null,    /*�ֿ�ID               */   
   BATAD005	          INTEGER                  not null,    /*��λID               */   
   BATAD006	          INTEGER                  not null,    /*��ƷID               */   
   BATAD007	          INTEGER,                               /*ά��1                */   
   BATAD008	          INTEGER,                               /*ά��2                */   
   BATAD009	          INTEGER,                               /*ά��3                */   
   BATAD010	          INTEGER,                               /*ά��4                */   
   BATAD011	          INTEGER,                               /*ά��5                */  
   BATAD012	          NUMBER(18,3)             not null,    /*����                 */  
   BATAD013	          NUMBER(12,2)             not null,    /*Ԥ���ɱ���           */  
   BATAD014	          NUMBER(12,2)             not null,    /*Ԥ���ɱ����         */  
   BATAD015	          NUMBER(12,2)             not null,    /*�����               */  
   BATAD016	          NUMBER(12,2)             not null,    /*������             */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_BATAD primary key (BATAD_ID)
);
create unique index AK_TB_BATAD on TB_BATAD (BATAD_ID,BATAD001);
create sequence SEQ_TB_BATAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATAD to public;
grant index  on TB_BATAD to public;
grant update on TB_BATAD to public; 
grant delete on TB_BATAD to public;  
grant insert on TB_BATAD to public; 
grant select on SEQ_TB_BATAD to public;   
/*
================================================================================
��ṹ����:TB_GRTCH
��ṹ����:���񱨱��   
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTCH;
drop table TB_GRTCH;
create table TB_GRTCH  (
   GRTCH_ID             INTEGER         NOT NULL,  /*���񱨱�ID            */ 
   GRTCH001             INTEGER,                   /*����ID                */      
   GRTCH002             VARCHAR2(30),              /*�������               */   
   CREATE_USER          VARCHAR2(12),              /*������Ա               */
   USER_GROUP           VARCHAR2(12),              /*������Ա����           */                               
   CREATE_DATE          DATE,                      /*��������               */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա               */
   MODI_DATE            DATE,                      /*�޸�����               */
   FLAG                 NUMBER(1),                 /*����״̬               */        
   constraint PK_TB_GRTCH primary key (GRTCH_ID)
);
create sequence SEQ_TB_GRTCH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTCH to public;
grant index  on TB_GRTCH to public;
grant update on TB_GRTCH to public; 
grant delete on TB_GRTCH to public;  
grant insert on TB_GRTCH to public; 
grant select on SEQ_TB_GRTCH to public; 
/*
================================================================================
��ṹ����:TB_DRPCH
��ṹ����:���񱨱��   
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPCH;
drop table TB_DRPCH;
create table TB_DRPCH  (
   DRPCH_ID             INTEGER         NOT NULL,  /*���񱨱�ID            */ 
   DRPCH001             INTEGER,                   /*����ID                */      
   DRPCH002             VARCHAR2(30),              /*�������               */   
   CREATE_USER          VARCHAR2(12),              /*������Ա               */
   USER_GROUP           VARCHAR2(12),              /*������Ա����           */                               
   CREATE_DATE          DATE,                      /*��������               */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա               */
   MODI_DATE            DATE,                      /*�޸�����               */
   FLAG                 NUMBER(1),                 /*����״̬               */        
   constraint PK_TB_DRPCH primary key (DRPCH_ID)
);
create sequence SEQ_TB_DRPCH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPCH to public;
grant index  on TB_DRPCH to public;
grant update on TB_DRPCH to public; 
grant delete on TB_DRPCH to public;  
grant insert on TB_DRPCH to public; 
grant select on SEQ_TB_DRPCH to public; 
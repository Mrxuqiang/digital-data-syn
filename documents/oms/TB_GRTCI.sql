/*
================================================================================
��ṹ����:TB_GRTCI
��ṹ����:��������   
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTCI;
drop table TB_GRTCI;
create table TB_GRTCI  (
   GRTCI_ID             INTEGER         NOT NULL,  /*�������ID             */ 
   GRTCI001             INTEGER,                   /*����ID                 */      
   GRTCI002             INTEGER,                   /*��˾ID                 */  
   GRTCI003             INTEGER,                   /*������ID               */      
   GRTCI004             DATE,                      /*����ʱ��               */  
   GRTCI005             VARCHAR2(1),               /*�Ƿ�ǰ����           */     
   CREATE_USER          VARCHAR2(12),              /*������Ա               */
   USER_GROUP           VARCHAR2(12),              /*������Ա����           */                               
   CREATE_DATE          DATE,                      /*��������               */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա               */
   MODI_DATE            DATE,                      /*�޸�����               */
   FLAG                 NUMBER(1),                 /*����״̬               */        
   constraint PK_TB_GRTCI primary key (GRTCI_ID)
);
create sequence SEQ_TB_GRTCI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTCI to public;
grant index  on TB_GRTCI to public;
grant update on TB_GRTCI to public; 
grant delete on TB_GRTCI to public;  
grant insert on TB_GRTCI to public; 
grant select on SEQ_TB_GRTCI to public; 
/*
================================================================================
��ṹ����:TB_DRPCI
��ṹ����:��������   
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPCI;
drop table TB_DRPCI;
create table TB_DRPCI  (
   DRPCI_ID             INTEGER         NOT NULL,  /*�������ID             */ 
   DRPCI001             INTEGER,                   /*����ID                 */      
   DRPCI002             INTEGER,                   /*��˾ID                 */  
   DRPCI003             INTEGER,                   /*������ID               */      
   DRPCI004             DATE,                      /*����ʱ��               */  
   CREATE_USER          VARCHAR2(12),              /*������Ա               */
   USER_GROUP           VARCHAR2(12),              /*������Ա����           */                               
   CREATE_DATE          DATE,                      /*��������               */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա               */
   MODI_DATE            DATE,                      /*�޸�����               */
   FLAG                 NUMBER(1),                 /*����״̬               */        
   constraint PK_TB_DRPCI primary key (DRPCI_ID)
);
create sequence SEQ_TB_DRPCI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPCI to public;
grant index  on TB_DRPCI to public;
grant update on TB_DRPCI to public; 
grant delete on TB_DRPCI to public;  
grant insert on TB_DRPCI to public; 
grant select on SEQ_TB_DRPCI to public; 
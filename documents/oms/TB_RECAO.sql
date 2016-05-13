/*                   
================================================================================
��ṹ����:TB_RECAO  
��ṹ����:�տ�Ӧ̯��ϸ��  
��ṹĿ��:  
================================================================================
*/    
    
drop sequence SEQ_TB_RECAO;  
drop index AK_TB_RECAO;  
drop table TB_RECAO;  
create table TB_RECAO  (  
   RECAO_ID             INTEGER                         not null,  /*�տ�Ӧ̯ID           */
   RECAO001             INTEGER                         not null,  /*Ӫ����֯ID           */
   RECAO002             INTEGER                         not null,  /*�ͻ�ID               */
   RECAO003             INTEGER,                                   /*���޺�ͬID           */
   RECAO004             INTEGER ,                                  /*̯λID               */ 
   RECAO005             VARCHAR2(1)                     not null,  /*��Դ����:1.�տ� 2.�˿� 3.������ */
   RECAO006             INTEGER                         not null,  /*��Դ����ID            */
   RECAO007             VARCHAR2(30)                    not null,  /*��Դ����              */
   RECAO008             INTEGER                         not null,  /*��Դ����ϸID          */
   RECAO009             INTEGER                         not null,  /*����ID                */
   RECAO011             NUMBER(16,2),                              /*Ӧ�ս��              */
   RECAO012             NUMBER(16,2),                              /*Ӧ̯���              */
   RECAO013             NUMBER(16,2),                              /*ʵ̯���		   */
   RECAO014             INTEGER ,                                  /*�տ�̯����ID          */   
   RECAO015             DATE ,                                     /*Ӧ������              */  
   RECAO016             DATE ,                                     /*��������              */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա              */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */                               
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER(1),                                 /*����״̬              */
   constraint PK_TB_RECAO primary key (RECAO_ID)  
);    
create unique index AK_TB_RECAO on TB_RECAO (RECAO_ID,RECAO001,RECAO002,RECAO003,RECAO004,RECAO005,RECAO006,RECAO007,RECAO008);  
create sequence SEQ_TB_RECAO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAO to public;  
grant index  on TB_RECAO to public;  
grant update on TB_RECAO to public;   
grant delete on TB_RECAO to public;    
grant insert on TB_RECAO to public;   
grant select on SEQ_TB_RECAO to public;     
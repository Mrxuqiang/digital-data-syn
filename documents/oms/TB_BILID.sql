/*
================================================================================
��ṹ����:TB_BILID
��ṹ����:�ɱ��������˵������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILID;
drop index AK_TB_BILID;
drop table TB_BILID;
create table TB_BILID  (
   BILID_ID             INTEGER                             not null,      /*���۵�����ϸID       */                        
   BILID001             INTEGER                             not null,      /*���˵�ID             */      
   BILID002             INTEGER                             not null,      /*��������ID           */      
   BILID003             VARCHAR2(30)                        not null,      /*��������             */      
   BILID004             DATE                                not null,      /*��������             */      
   BILID005             NUMBER(12,2)                        not null,      /*�������             */      
   BILID006             NUMBER(12,2)                        not null,      /*�ѽ���             */      
   BILID007             NUMBER(12,2)                        not null,      /*δ����             */     
   CREATE_USER          VARCHAR2(12),                                      /*������Ա            */
   USER_GROUP           VARCHAR2(12),                                      /*������Ա����        */                               
   CREATE_DATE          DATE,                                              /*��������            */
   MODIFIER             VARCHAR2(12),                                      /*�޸���Ա            */
   MODI_DATE            DATE,                                              /*�޸�����            */
   FLAG                 NUMBER(1),                                         /*����״̬            */
   constraint PK_TB_BILID primary key (BILID_ID)
);
create unique index AK_TB_BILID on TB_BILID (BILID003);
create sequence SEQ_TB_BILID minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILID to public;
grant index  on TB_BILID to public;
grant update on TB_BILID to public; 
grant delete on TB_BILID to public;  
grant insert on TB_BILID to public; 
grant select on SEQ_TB_BILID to public;   
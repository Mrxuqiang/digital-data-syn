/*
================================================================================
��ṹ����:TB_BILHD
��ṹ����:�������˵������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILHD;
drop index AK_TB_BILHD;
drop table TB_BILHD;
create table TB_BILHD  (
   BILHD_ID             INTEGER                             not null,      /*���۵�����ϸID       */                        
   BILHD001             INTEGER                             not null,      /*���˵�ID             */      
   BILHD002             INTEGER                             not null,      /*��������ID           */      
   BILHD003             VARCHAR2(30)                        not null,      /*��������             */      
   BILHD004             DATE                                not null,      /*��������             */      
   BILHD005             NUMBER(12,2)                        not null,      /*�������             */      
   BILHD006             NUMBER(12,2)                        not null,      /*�ѽ���             */      
   BILHD007             NUMBER(12,2)                        not null,      /*δ����             */     
   CREATE_USER          VARCHAR2(12),                                      /*������Ա            */
   USER_GROUP           VARCHAR2(12),                                      /*������Ա����        */                               
   CREATE_DATE          DATE,                                              /*��������            */
   MODIFIER             VARCHAR2(12),                                      /*�޸���Ա            */
   MODI_DATE            DATE,                                              /*�޸�����            */
   FLAG                 NUMBER(1),                                         /*����״̬            */
   constraint PK_TB_BILHD primary key (BILHD_ID)
);
create unique index AK_TB_BILHD on TB_BILHD (BILHD003);
create sequence SEQ_TB_BILHD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILHD to public;
grant index  on TB_BILHD to public;
grant update on TB_BILHD to public; 
grant delete on TB_BILHD to public;  
grant insert on TB_BILHD to public; 
grant select on SEQ_TB_BILHD to public;   
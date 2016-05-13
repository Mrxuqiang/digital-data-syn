/*
================================================================================
��ṹ����:TB_BILJD
��ṹ����:����/��Ӫ���˵������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILJD;
drop index AK_TB_BILJD;
drop table TB_BILJD;
create table TB_BILJD  (
   BILJD_ID             INTEGER                             not null,      /*���۵�����ϸID       */                        
   BILJD001             INTEGER                             not null,      /*���˵�ID             */      
   BILJD002             INTEGER                             not null,      /*��������ID           */      
   BILJD003             VARCHAR2(30)                        not null,      /*��������             */      
   BILJD004             DATE                                not null,      /*��������             */      
   BILJD005             NUMBER(12,2)                        not null,      /*�������             */      
   BILJD006             NUMBER(12,2)                        not null,      /*�ѽ���             */      
   BILJD007             NUMBER(12,2)                        not null,      /*δ����             */     
   CREATE_USER          VARCHAR2(12),                                      /*������Ա            */
   USER_GROUP           VARCHAR2(12),                                      /*������Ա����        */                               
   CREATE_DATE          DATE,                                              /*��������            */
   MODIFIER             VARCHAR2(12),                                      /*�޸���Ա            */
   MODI_DATE            DATE,                                              /*�޸�����            */
   FLAG                 NUMBER(1),                                         /*����״̬            */
   constraint PK_TB_BILJD primary key (BILJD_ID)
);
create unique index AK_TB_BILJD on TB_BILJD (BILJD003);
create sequence SEQ_TB_BILJD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJD to public;
grant index  on TB_BILJD to public;
grant update on TB_BILJD to public; 
grant delete on TB_BILJD to public;  
grant insert on TB_BILJD to public; 
grant select on SEQ_TB_BILJD to public;   
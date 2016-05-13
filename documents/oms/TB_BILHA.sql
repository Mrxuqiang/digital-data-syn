/*
================================================================================
��ṹ����:TB_BILHA
��ṹ����:�������˵�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILHA;
drop index AK_TB_BILHA;
drop table TB_BILHA;
create table TB_BILHA  (
   BILHA_ID             INTEGER                     not null,       /*�������˵�ID       */    
   BILHA001             VARCHAR2(1)                 not null,       /*��������           */    
   BILHA002             INTEGER                     not null,       /*���˵���           */    
   BILHA003             VARCHAR2(30)                not null,       /*���˵���           */    
   BILHA004             INTEGER                     not null,       /*����Ӫ����֯       */    
   BILHA005             INTEGER                     not null,       /*��Ӧ��             */    
   BILHA006             VARCHAR2(30)                not null,       /*��ͬ���           */    
   BILHA007             DATE                        not null,       /*���㿪ʼ����       */    
   BILHA008             DATE                        not null,       /*�����ֹ����       */    
   BILHA009             VARCHAR2(1),                                /*���״̬           */    
   BILHA010             INTEGER,                                    /*¼����             */    
   BILHA011             DATE,                                       /*¼������           */    
   BILHA012             INTEGER,                                    /*�����             */    
   BILHA013             DATE,                                       /*�������           */    
   CREATE_USER          VARCHAR2(12),                               /*������Ա            */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����        */                               
   CREATE_DATE          DATE,                                       /*��������            */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա            */
   MODI_DATE            DATE,                                       /*�޸�����            */
   FLAG                 NUMBER(1),                                  /*����״̬            */
   constraint PK_TB_BILHA primary key (BILHA_ID)
);
create unique index AK_TB_BILHA on TB_BILHA (BILHA002,BILHA003);
create sequence SEQ_TB_BILHA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILHA to public;
grant index  on TB_BILHA to public;
grant update on TB_BILHA to public; 
grant delete on TB_BILHA to public;  
grant insert on TB_BILHA to public; 
grant select on SEQ_TB_BILHA to public;   
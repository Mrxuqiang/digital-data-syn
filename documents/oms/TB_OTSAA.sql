/*
================================================================================
��ṹ����:TB_OTSAA
��ṹ����:Ӫ����֯���ձ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_OTSAA;
drop index AK_TB_OTSAA;
drop table TB_OTSAA;
create table TB_OTSAA  (
   OTSAA_ID             INTEGER                         not null,  /*���ձ�ID             */
   OTSAA001             INTEGER                         not null,  /*Ӫ����֯ID           */
   OTSAA002             VARCHAR2(30)                    not null,  /*SAP�̳�����           */
   OTSAA003             VARCHAR2(60)                    not null,  /*SAP�̳�����           */   
   OTSAA004             VARCHAR2(255) ,                            /*��ע             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_OTSAA primary key (OTSAA_ID)
);
create unique index AK_TB_OTSAA on TB_OTSAA (OTSAA001,OTSAA002,FLAG);
create sequence SEQ_TB_OTSAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAA to public;
grant index  on TB_OTSAA to public;
grant update on TB_OTSAA to public; 
grant delete on TB_OTSAA to public;  
grant insert on TB_OTSAA to public; 
grant select on SEQ_TB_OTSAA to public;   
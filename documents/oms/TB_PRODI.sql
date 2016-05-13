/*
================================================================================
��ṹ����:TB_PRODI
��ṹ����:װ�����յ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRODI;
drop index AK_TB_PRODI;
drop table TB_PRODI;
create table TB_PRODI  (
   PRODI_ID             INTEGER                         not null,  /*װ�����յ��ӱ�ID    */
   PRODI001             INTEGER                         not null,  /*װ�����յ�ID        */
   PRODI002             INTEGER                         not null,  /*������ĿID          */
   PRODI003             VARCHAR2(100),				   /*��������            */
   PRODI004             VARCHAR2(100),				   /*���ս��            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PRODI primary key (PRODI_ID)
);
create unique index AK_TB_PRODI on TB_PRODI (PRODI001,PRODI002);
create sequence SEQ_TB_PRODI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODI to public;
grant index  on TB_PRODI to public;
grant update on TB_PRODI to public; 
grant delete on TB_PRODI to public;  
grant insert on TB_PRODI to public; 
grant select on SEQ_TB_PRODI to public;   
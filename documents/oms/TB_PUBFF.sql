/*
================================================================================
��ṹ����:TB_PUBFF
��ṹ����:����ƾ֤/������¼��ˮ�ż�¼��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBFF;
drop index AK_TB_PUBFF;
drop table TB_PUBFF;
create table TB_PUBFF  (
   PUBFF_ID             INTEGER                         not null,  /*��ˮ��ID            */
   PUBFF001             INTEGER                         not null,  /*��˾ID              */
   PUBFF002             DATE                            not null,  /*����ڼ�            */
   PUBFF003             VARCHAR2(1)                     not null,  /*����                */
   PUBFF004             INTEGER                         not null,  /*����ID              */
   PUBFF005             INTEGER                         not null,  /*��ˮ��              */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PUBFF primary key (PUBFF_ID)
);
create unique index AK_TB_PUBFF on TB_PUBFF (PUBFF001,PUBFF002,PUBFF003,PUBFF004,PUBFF005);
create sequence SEQ_TB_PUBFF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFF to public;
grant index  on TB_PUBFF to public;
grant update on TB_PUBFF to public; 
grant delete on TB_PUBFF to public;  
grant insert on TB_PUBFF to public; 
grant select on SEQ_TB_PUBFF to public;   

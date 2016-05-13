/*
================================================================================
��ṹ����:TB_SUPAC
��ṹ����:̯λ�춯���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAC;
drop index AK_TB_SUPAC;
drop table TB_SUPAC;
create table TB_SUPAC  (
   SUPAC_ID             INTEGER                         not null,  /*̯λ�춯���ӱ�ID    */
   SUPAC001             INTEGER                         not null,  /*̯λ�춯��ID        */
   SUPAC002             INTEGER                         not null,  /*����ID              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAC primary key (SUPAC_ID)
);
create unique index AK_TB_SUPAC on TB_SUPAC (SUPAC001,SUPAC002);
create sequence SEQ_TB_SUPAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAC to public;
grant index  on TB_SUPAC to public;
grant update on TB_SUPAC to public; 
grant delete on TB_SUPAC to public;  
grant insert on TB_SUPAC to public; 
grant select on SEQ_TB_SUPAC to public;   
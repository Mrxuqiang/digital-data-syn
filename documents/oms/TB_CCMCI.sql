/*
================================================================================
��ṹ����:TB_CCMCI
��ṹ����:���ѿ���Ʊ����ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMCI;
drop index AK_TB_CCMCI;
drop table TB_CCMCI;
create table TB_CCMCI  (
   CCMCI_ID             INTEGER                         not null,  /*���ѿ���Ʊ����ϸID  */
   CCMCI001             INTEGER                         not null,  /*���ѿ���Ʊ��ID      */
   CCMCI002             INTEGER                         not null,  /*���ѿ���ֵID        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMCI primary key (CCMCI_ID)
);
create unique index AK_TB_CCMCI on TB_CCMCI (CCMCI001,CCMCI002);
create sequence SEQ_TB_CCMCI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMCI to public;
grant index  on TB_CCMCI to public;
grant update on TB_CCMCI to public; 
grant delete on TB_CCMCI to public;  
grant insert on TB_CCMCI to public; 
grant select on SEQ_TB_CCMCI to public;   
/*
================================================================================
��ṹ����:TB_SUPAK
��ṹ����:�̻�����Ʒ�Ʊ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAK;
drop index AK_TB_SUPAK;
drop table TB_SUPAK;
create table TB_SUPAK  (
   SUPAK_ID             INTEGER                         not null,  /*�Ǽ�Ʒ��ID          */
   SUPAK001             INTEGER                         not null,  /*�Ǽ�ID              */
   SUPAK002             INTEGER                         not null,  /*Ʒ��ID              */
   SUPAK003             INTEGER                         not null,  /*����ID              */
   SUPAK004             VARCHAR2(255),                             /*��ע                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAK primary key (SUPAK_ID)
);
create unique index AK_TB_SUPAK on TB_SUPAK (SUPAK001,SUPAK002);
create sequence SEQ_TB_SUPAK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAK to public;
grant index  on TB_SUPAK to public;
grant update on TB_SUPAK to public; 
grant delete on TB_SUPAK to public;  
grant insert on TB_SUPAK to public; 
grant select on SEQ_TB_SUPAK to public;   
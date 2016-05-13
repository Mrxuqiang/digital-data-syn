/*
================================================================================
��ṹ����:TB_CONFD
��ṹ����:��Ӧ�̺�ͬ�����ӪƷ�Ʊ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONFD;
drop index AK_TB_CONFD;
drop table TB_CONFD;
create table TB_CONFD  (
   CONFD_ID             INTEGER                         not null,  /*��ͬ��Ӫ���Ʒ��ID  */
   CONFD001             INTEGER                         not null,  /*��ͬ���ID          */
   CONFD002             INTEGER                         not null,  /*Ʒ��ID              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONFD primary key (CONFD_ID)
);
create unique index AK_TB_CONFD on TB_CONFD (CONFD001,CONFD002);
create sequence SEQ_TB_CONFD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONFD to public;
grant index  on TB_CONFD to public;
grant update on TB_CONFD to public; 
grant delete on TB_CONFD to public;  
grant insert on TB_CONFD to public; 
grant select on SEQ_TB_CONFD to public;   
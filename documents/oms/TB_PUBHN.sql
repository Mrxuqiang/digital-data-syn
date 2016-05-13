/*
================================================================================
��ṹ����:TB_PUBHN
��ṹ����:��Ʒ��װ�ɷ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHN;
drop index AK_TB_PUBHN;
drop table TB_PUBHN;
create table TB_PUBHN  (
   PUBHN_ID             INTEGER                         not null,  /*�ɷ����ID        */
   PUBHN001             INTEGER                         not null,  /*��ƷID            */
   PUBHN002             INTEGER                         not null,  /*��װ��ID          */
   PUBHN003             INTEGER                         not null,  /*�ɷ������ƷID    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PUBHN primary key (PUBHN_ID)
);
create unique index AK_TB_PUBHN on TB_PUBHN (PUBHN001,PUBHN002,PUBHN003);
create sequence SEQ_TB_PUBHN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHN to public;
grant index  on TB_PUBHN to public;
grant update on TB_PUBHN to public; 
grant delete on TB_PUBHN to public;  
grant insert on TB_PUBHN to public; 
grant select on SEQ_TB_PUBHN to public;   
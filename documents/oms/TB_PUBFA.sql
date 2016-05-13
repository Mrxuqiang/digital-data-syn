/*
================================================================================
��ṹ����:TB_PUBFA
��ṹ����:ҵ�񵥾����ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBFA;
drop index AK_TB_PUBFA;
drop table TB_PUBFA;
create table TB_PUBFA  (
   PUBFA_ID             INTEGER                         not null,  /*����ID             */
   PUBFA001             VARCHAR2(3)                     not null,  /*����               */
   PUBFA002             VARCHAR2(30)                    not null,  /*��������           */
   PUBFA003             INTEGER                         not null,  /*��Ӧ����ID         */
   PUBFA004             VARCHAR2(1),                               /*�Զ���ŷ�         */
   PUBFA005             INTEGER                         not null,  /*�������ID         */
   PUBFA006             VARCHAR2(1),                               /*��תƾ֤           */
   PUBFA007             VARCHAR2(1),                               /*�������           */
   PUBFA008             VARCHAR2(1),                               /*������ӡ           */
   PUBFA009             VARCHAR2(1),                               /*ǩ��               */
   PUBFA010             VARCHAR2(1),                               /*��������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBFA primary key (PUBFA_ID)
);
create unique index AK_TB_PUBFA on TB_PUBFA (PUBFA001);
create sequence SEQ_TB_PUBFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFA to public;
grant index  on TB_PUBFA to public;
grant update on TB_PUBFA to public; 
grant delete on TB_PUBFA to public;  
grant insert on TB_PUBFA to public; 
grant select on SEQ_TB_PUBFA to public;   
/*
================================================================================
��ṹ����:TB_PUBGI
��ṹ����:�ȼ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGI;
drop index AK_TB_PUBGI;
drop table TB_PUBGI;
create table TB_PUBGI  (
   PUBGI_ID             INTEGER                         not null,  /*�ȼ�ID             */
   PUBGI001             VARCHAR2(4)                     not null,  /*�ȼ�����           */
   PUBGI002             VARCHAR2(40)                    not null,  /*�ȼ�����           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBGI primary key (PUBGI_ID)
);
create unique index AK_TB_PUBGI on TB_PUBGI (PUBGI001);
create sequence SEQ_TB_PUBGI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGI to public;
grant index  on TB_PUBGI to public;
grant update on TB_PUBGI to public; 
grant delete on TB_PUBGI to public;  
grant insert on TB_PUBGI to public; 
grant select on SEQ_TB_PUBGI to public;   
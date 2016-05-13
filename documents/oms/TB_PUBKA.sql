/*
================================================================================
��ṹ����:TB_PUBKA
��ṹ����:��Ʊ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBKA;
drop index AK_TB_PUBKA;
drop table TB_PUBKA;
create table TB_PUBKA  (
   PUBKA_ID             INTEGER                         not null,  /*��Ʊ����ID         */
   PUBKA001             VARCHAR2(4)                     not null,  /*��Ʊ�������       */
   PUBKA002             VARCHAR2(30)                    not null,  /*��Ʊ��������       */
   PUBKA003             VARCHAR2(1)                     not null,  /*��Ʊ����           */
   PUBKA004             VARCHAR2(1),                               /*�Ƿ�ͣ��           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBKA primary key (PUBKA_ID)
);
create unique index AK_TB_PUBKA on TB_PUBKA (PUBKA001);
create sequence SEQ_TB_PUBKA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKA to public;
grant index  on TB_PUBKA to public;
grant update on TB_PUBKA to public; 
grant delete on TB_PUBKA to public;  
grant insert on TB_PUBKA to public; 
grant select on SEQ_TB_PUBKA to public;   
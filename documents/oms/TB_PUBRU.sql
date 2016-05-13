/*
================================================================================
��ṹ����:TB_PUBRU
��ṹ����:��ͬ����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRU;
drop index AK_TB_PUBRU;
drop table TB_PUBRU;
create table TB_PUBRU  (
   PUBRU_ID             INTEGER                         not null,  /*��ͬ��������ID     */
   PUBRU001             INTEGER                         not null,  /*��ͬ��������       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBRU primary key (PUBRU_ID)
);
create unique index AK_TB_PUBRU on TB_PUBRU (PUBRT001);
create sequence SEQ_TB_PUBRU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRU to public;
grant index  on TB_PUBRU to public;
grant update on TB_PUBRU to public; 
grant delete on TB_PUBRU to public;  
grant insert on TB_PUBRU to public; 
grant select on SEQ_TB_PUBRU to public;   
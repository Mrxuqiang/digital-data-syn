/*
================================================================================
��ṹ����:TB_MEDAA
��ṹ����:ý������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEDAA;
drop index AK_TB_MEDAA;
drop table TB_MEDAA;
create table TB_MEDAA  (
   MEDAA_ID             INTEGER                         not null,  /*ý�����ID         */
   MEDAA001             VARCHAR2(4)                     not null,  /*ý��������       */
   MEDAA002             VARCHAR2(30)                    not null,  /*ý���������       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEDAA primary key (MEDAA_ID)
);
create unique index AK_TB_MEDAA on TB_MEDAA (MEDAA001);
create sequence SEQ_TB_MEDAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDAA to public;
grant index  on TB_MEDAA to public;
grant update on TB_MEDAA to public; 
grant delete on TB_MEDAA to public;  
grant insert on TB_MEDAA to public; 
grant select on SEQ_TB_MEDAA to public;   
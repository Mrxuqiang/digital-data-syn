/*
================================================================================
��ṹ����:TB_PUBMA
��ṹ����:��Ŀ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBMA;
drop index AK_TB_PUBMA;
drop table TB_PUBMA;
create table TB_PUBMA  (
   PUBMA_ID             INTEGER                          not null,  /*��Ŀ����ID         */
   PUBMA001             VARCHAR2(10)                     not null,  /*��Ŀ���ͱ���       */
   PUBMA002             VARCHAR2(60)                    not null,   /*��Ŀ��������       */
   PUBMA003             VARCHAR2(255),                              /*��ע               */
   CREATE_USER          VARCHAR2(12),                               /*������Ա           */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����       */                               
   CREATE_DATE          DATE,                                       /*��������           */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա           */
   MODI_DATE            DATE,                                       /*�޸�����           */
   FLAG                 NUMBER(1),                                  /*����״̬           */
   constraint PK_TB_PUBMA primary  key (PUBMA_ID)
);
create unique index AK_TB_PUBMA on TB_PUBMA (PUBMA001);
create sequence SEQ_TB_PUBMA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBMA to public;
grant index  on TB_PUBMA to public;
grant update on TB_PUBMA to public; 
grant delete on TB_PUBMA to public;  
grant insert on TB_PUBMA to public; 
grant select on SEQ_TB_PUBMA to public;   
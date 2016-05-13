/*
================================================================================
��ṹ����:TB_PUBOA
��ṹ����:��Ʊ�����ͱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBOA;
drop index AK_TB_PUBOA;
drop table TB_PUBOA;
create table TB_PUBOA  (
   PUBOA_ID             INTEGER                          not null,  /*��Ʊ����ID         */
   PUBOA001             VARCHAR2(10)                     not null,  /*��Ʊ���ͱ���       */
   PUBOA002             VARCHAR2(60)                     not null,  /*��Ʊ��������       */
   PUBOA003             NUMBER(5,4)                      not null,  /*˰��               */
   PUBOA004             VARCHAR2(255),                              /*��ע               */     
   CREATE_USER          VARCHAR2(12),                               /*������Ա           */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����       */                               
   CREATE_DATE          DATE,                                       /*��������           */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա           */
   MODI_DATE            DATE,                                       /*�޸�����           */
   FLAG                 NUMBER(1),                                  /*����״̬           */
   constraint PK_TB_PUBOA primary  key (PUBOA_ID)
);
create unique index AK_TB_PUBOA on TB_PUBOA (PUBOA001);
create sequence SEQ_TB_PUBOA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBOA to public;
grant index  on TB_PUBOA to public;
grant update on TB_PUBOA to public; 
grant delete on TB_PUBOA to public;  
grant insert on TB_PUBOA to public; 
grant select on SEQ_TB_PUBOA to public;   
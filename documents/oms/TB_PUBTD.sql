/*
================================================================================
��ṹ����:TB_PUBTD 
��ṹ����:�ض����Է����
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBTD;
drop index AK_TB_PUBTD;
drop table TB_PUBTD;
create table TB_PUBTD (
   PUBTD_ID             INTEGER                         not null,  /*�ض�����ID        */
   PUBTD001             VARCHAR2(30)                    not null,  /*�ض����Ա��      */
   PUBTD002             VARCHAR2(30)                    not null,  /*�ض���������      */
   PUBTD003             VARCHAR2(30)                               /*��ע              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBTD primary key (PUBTD_ID)
);
create unique index AK_TB_PUBTD on TB_PUBTD (PUBTD001,FLAG);
create sequence SEQ_TB_PUBTD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBTD to public;
grant index  on TB_PUBTD to public;
grant update on TB_PUBTD to public; 
grant delete on TB_PUBTD to public;  
grant insert on TB_PUBTD to public; 
grant select on SEQ_TB_PUBTD to public;   
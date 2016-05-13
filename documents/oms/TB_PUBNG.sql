/*
================================================================================
��ṹ����:TB_PUBNG
��ṹ����:������������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBNG;
drop index AK_TB_PUBNG;
drop table TB_PUBNG;
create table TB_PUBNG  (
   PUBNG_ID             INTEGER                          not null,  /*����������ID            */
   PUBNG001             VARCHAR2(10)                     not null,/*�����������            */
   PUBNG002             VARCHAR2(40)                     not null,  /*������������            */
   PUBNG003             VARCHAR2(200),                              /*��ע                    */
   PUBNG004             VARCHAR2(1)                    not null,    /*ʱ�䵥λ                */
   CREATE_USER          VARCHAR2(12),                               /*������Ա                */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����            */                               
   CREATE_DATE          DATE,                                       /*��������                */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա                */
   MODI_DATE            DATE,                                       /*�޸�����                */
   FLAG                 NUMBER(1),                                  /*����״̬                 */
   constraint PK_TB_PUBNG primary key (PUBNG_ID)
);
create unique index AK_TB_PUBNG on TB_PUBNG (PUBNG001);
create sequence SEQ_TB_PUBNG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNG to public;
grant index  on TB_PUBNG to public;
grant update on TB_PUBNG to public; 
grant delete on TB_PUBNG to public;  
grant insert on TB_PUBNG to public; 
grant select on SEQ_TB_PUBNG to public;   
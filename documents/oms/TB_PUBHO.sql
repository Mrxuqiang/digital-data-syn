/*
================================================================================
��ṹ����:TB_PUBHO
��ṹ����:Ʒ�Ƶȼ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHO;
drop index AK_TB_PUBHO;
drop table TB_PUBHO;
create table TB_PUBHO  (
   PUBHO_ID             INTEGER                         not null,  /*Ʒ�Ƶȼ�ID         */
   PUBHO001             VARCHAR2(4)                     not null,  /*Ʒ�Ƶȼ�����       */
   PUBHO002             VARCHAR2(40)                    not null,  /*��Ʒ�Ƽ�����       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBHO primary key (PUBHO_ID)
);
create unique index AK_TB_PUBHO on TB_PUBHO (PUBHO001);
create sequence SEQ_TB_PUBHO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHO to public;
grant index  on TB_PUBHO to public;
grant update on TB_PUBHO to public; 
grant delete on TB_PUBHO to public;  
grant insert on TB_PUBHO to public; 
grant select on SEQ_TB_PUBHO to public;   
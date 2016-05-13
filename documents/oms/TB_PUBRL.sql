/*
================================================================================
��ṹ����:TB_PUBRL
��ṹ����:���˹���Է���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRL;
drop index AK_TB_PUBRL;
drop table TB_PUBRL;
create table TB_PUBRL  (
   PUBRL_ID             INTEGER                         not null,  /*���˹���Է�ID       */
   PUBRL001             INTEGER                         not null,  /*���˹�����ID         */
   PUBRL002             INTEGER                         not null,  /*��ƿ�ĿID           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBRL primary key (PUBRL_ID)
);
create unique index AK_TB_PUBRL on TB_PUBRL (PUBRL001);
create sequence SEQ_TB_PUBRL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRL to public;
grant index  on TB_PUBRL to public;
grant update on TB_PUBRL to public; 
grant delete on TB_PUBRL to public;  
grant insert on TB_PUBRL to public; 
grant select on SEQ_TB_PUBRL to public;   
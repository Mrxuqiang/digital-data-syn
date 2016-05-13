/*
================================================================================
��ṹ����:TB_SALHN
��ṹ����:���˷��ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALHN;
drop index AK_TB_SALHN;
drop table TB_SALHN;
create table TB_SALHN  (
   SALHN_ID             INTEGER                         not null,  /*���˷���ID         */
   SALHN001             INTEGER                         not null,  /*���˵�ID         */
   SALHN002             INTEGER                         not null,  /*������ϸID         */
   SALHN003             NUMBER(18,3)                    not null,  /*���         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_SALHN primary key (SALHN_ID)
);

create sequence SEQ_TB_SALHN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHN to public;
grant index  on TB_SALHN to public;
grant update on TB_SALHN to public; 
grant delete on TB_SALHN to public;  
grant insert on TB_SALHN to public; 
grant select on SEQ_TB_SALHN to public;   
/*
================================================================================
��ṹ����:TB_PUBRG
��ṹ����:�ⲿ�����ʲ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRG;
drop index AK_TB_PUBRG;
drop table TB_PUBRG;
create table TB_PUBRG  (
   PUBRG_ID             INTEGER                         not null,  /*�ⲿ�����ʲ�����ID     */
   PUBRG001             INTEGER                         not null,  /*�ⲿ������ID           */
   PUBRG002             INTEGER                         not null,  /*���ͷ������ʲ�ID       */
   PUBRG003             INTEGER                         not null,  /*���ܷ������ʲ�ID       */
   PUBRG004             INTEGER                         not null,  /*Ա��ID                 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա               */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����           */                               
   CREATE_DATE          DATE,                                      /*��������               */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա               */
   MODI_DATE            DATE,                                      /*�޸�����               */
   FLAG                 NUMBER(1),                                 /*����״̬               */
   constraint PK_TB_PUBRG primary key (PUBRG_ID)
);
create unique index AK_TB_PUBRG on TB_PUBRG (PUBRG002,PUBRG003);
create sequence SEQ_TB_PUBRG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRG to public;
grant index  on TB_PUBRG to public;
grant update on TB_PUBRG to public; 
grant delete on TB_PUBRG to public;  
grant insert on TB_PUBRG to public; 
grant select on SEQ_TB_PUBRG to public;   
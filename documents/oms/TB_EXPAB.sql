/*
================================================================================
��ṹ����:TB_EXPAB
��ṹ����:�����ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_EXPAB;
drop index AK_TB_EXPAB;
drop table TB_EXPAB;
create table TB_EXPAB  (
   EXPAB_ID             INTEGER                         not null,  /*�����ϸ��ID         */
   EXPAB001             INTEGER                         not null,  /*�������ID       */
   EXPAB002             VARCHAR2(30)                    not null,  /*ժҪ       */
   EXPAB003             INTEGER                         not null,  /*��֧�춯��           */
   EXPAB004             INTEGER                         not null,  /*��ƿ�Ŀ           */
   EXPAB005             NUMBER(16,2),                              /*ԭ�ҽ��       */
   EXPAB006             VARCHAR2(100),                             /*����ص�       */
   EXPAB007             NUMBER(2),                                 /*Ԥ������           */
   EXPAB008             NUMBER(16,2),                              /*���ҽ��           */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_EXPAB primary key (EXPAB_ID)
);
create sequence SEQ_TB_EXPAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_EXPAB to public;
grant index  on TB_EXPAB to public;
grant update on TB_EXPAB to public; 
grant delete on TB_EXPAB to public;  
grant insert on TB_EXPAB to public; 
grant select on SEQ_TB_EXPAB to public;   
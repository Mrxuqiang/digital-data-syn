/*
================================================================================
��ṹ����:TB_PUBRP
��ṹ����:�����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRP;
drop index AK_TB_PUBRP;
drop table TB_PUBRP;
create table TB_PUBRP  (
   PUBRP_ID             INTEGER                         not null,  /*���������ID       */
   PUBRP001             VARCHAR2(20)                    not null,  /*���               */
   PUBRP002             VARCHAR2(20)                    not null,  /*ת������           */
   PUBRP003             VARCHAR2(1)                     not null,  /*����               */
   PUBRP004             INTEGER,                                   /*�������ID         */
   PUBRP005             INTEGER,                                   /*�������ID         */
   PUBRP006             INTEGER,                                   /*�����ʧID         */
   PUBRP007             VARCHAR2(20),                              /*�����Ŀ���������ʶ */
   PUBRP008             VARCHAR2(20),                              /*�����Ŀ���������ʶ */
   PUBRP009             VARCHAR2(20),                              /*��ʧ��Ŀ���������ʶ */
   PUBRP010             VARCHAR2(1)                     not null,  /*���˱���ID         */
   PUBRP011             INTEGER                         not null,  /*ƾ֤���ID         */
   PUBRP012             INTEGER                         not null,  /*��ƺ�������ID         */   
   PUBRP013             INTEGER                         not null,  /*�������ID         */   
   PUBRP014             INTEGER                         not null,  /*��˾ID         */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBRP primary key (PUBRP_ID)
);
create unique index AK_TB_PUBRP on TB_PUBRP (PUBRP001,PUBRP002);
create sequence SEQ_TB_PUBRP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRP to public;
grant index  on TB_PUBRP to public;
grant update on TB_PUBRP to public; 
grant delete on TB_PUBRP to public;  
grant insert on TB_PUBRP to public; 
grant select on SEQ_TB_PUBRP to public;   
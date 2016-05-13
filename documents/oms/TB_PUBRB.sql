/*
================================================================================
��ṹ����:TB_PUBRB
��ṹ����:�ڲ���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRB;
drop index AK_TB_PUBRB;
drop table TB_PUBRB;
create table TB_PUBRB  (
   PUBRB_ID             INTEGER                         not null,  /*�ڲ��������ID             */
   PUBRB001             INTEGER                         not null,  /*��������˲�����ID         */
   PUBRB002             VARCHAR2(20)                    not null,  /*�������                   */
   PUBRB003             VARCHAR2(60)                    not null,  /*��������                   */
   PUBRB004             VARCHAR2(1)                     not null,  /*�������㷽ʽ               */
   PUBRB005             VARCHAR2(1)                     not null,  /*��������                   */
   PUBRB006             VARCHAR2(1)                     not null,  /*Я���ֽ�����               */
   PUBRB007             VARCHAR2(1)                     not null,  /*Я��������Ϣ               */
   PUBRB008             VARCHAR2(1),                               /*Ԥ���ֶ�               */
   PUBRB009             VARCHAR2(1)                     not null,  /* �޶�Ӧ��Ŀ����ʽ        */
   PUBRB010             INTEGER,                                    /��ƿ�ĿID                  */
   PUBRB011             VARCHAR2(1),                               /* Ԥ���ֶ�               */
   PUBRB012             VARCHAR2(1)                     not null,  /* ƾ֤���һ��               */
   PUBRB013             VARCHAR2(1)                     not null,  /* Ĭ�Ϲ���                   */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_PUBRB primary key (PUBRB_ID)
);
create unique index AK_TB_PUBRB on TB_PUBRB (PUBRB002,PUBRB003);
create sequence SEQ_TB_PUBRB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRB to public;
grant index  on TB_PUBRB to public;
grant update on TB_PUBRB to public; 
grant delete on TB_PUBRB to public;  
grant insert on TB_PUBRB to public; 
grant select on SEQ_TB_PUBRB to public;   
/*
================================================================================
��ṹ����:TB_AGECB
��ṹ����:���տ�ŷ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AGECB;
drop index AK_TB_AGECB;
drop table TB_AGECB;
create table TB_AGECB  (
   AGECB_ID             INTEGER                         not null,  /*���տ�ŷ������ID      */
   AGECB001             INTEGER                         not null,  /*���տ�ŷ��ID          */
   AGECB002             INTEGER                         not null,  /*Ӫ����֯ID                  */
   AGECB003             INTEGER,                                   /*̯λID                      */
   AGECB004             INTEGER,                                   /*��ͬ��ID                    */
   AGECB005             DATE                            not null,  /*��ʼ����                    */
   AGECB006             DATE                            not null,  /*��������                    */
   AGECB007             NUMBER(12,2),                              /*�������                */
   AGECB008             NUMBER(12,2),                              /*�˿����                */
   AGECB009             NUMBER(12,2),                              /*�˻��渶���                */
   AGECB010             NUMBER(12,2),                              /*�����տ���                */
   AGECB011             NUMBER(12,2),                              /*ʵ������                  */
   AGECB012             INTEGER,                                   /*�����ID                  */
   AGECB013             VARCHAR2(30),                              /*�����                    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_AGECB primary key (AGECB_ID)
);
create unique index AK_TB_AGECB on TB_AGECB (AGECB001,AGECB002,AGECB003,AGECB004);
create sequence SEQ_TB_AGECB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AGECB to public;
grant index  on TB_AGECB to public;
grant update on TB_AGECB to public; 
grant delete on TB_AGECB to public;  
grant insert on TB_AGECB to public; 
grant select on SEQ_TB_AGECB to public;   
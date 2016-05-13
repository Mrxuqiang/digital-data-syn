/*
================================================================================
��ṹ����:TB_PMTNB
��ṹ����:ȯ���յ��˿��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTNB;
drop index AK_TB_PMTNB;
drop table TB_PMTNB;
create table TB_PMTNB  (
   PMTNB_ID             INTEGER                         not null,  /*ȯ���յ��˿�ID                */
   PMTNB001             INTEGER                         not null,  /*ȯ���յ�ID                    */
   PMTNB002             VARCHAR2(1)				,  /*��������                      */
   PMTNB003             INTEGER					,  /*������ID                      */
   PMTNB004             INTEGER                         not null,  /*Ӫ����֯ID                    */
   PMTNB005             VARCHAR2(1)				,  /*��������                      */
   PMTNB006             INTEGER					,  /*���˵�ID                      */
   PMTNB007             INTEGER                         not null,  /*���۵�ID                      */
   PMTNB008             INTEGER                         not null,  /*���ID                      */
   PMTNB009             VARCHAR2(30),                              /*��������                      */
   PMTNB010             VARCHAR2(30),                              /*���˵���                      */
   PMTNB011             VARCHAR2(30),                              /*���۵���                      */
   PMTNB012             VARCHAR2(30),                              /*�����                      */
   PMTNB013             INTEGER                                 ,  /*ȯ���ŵ�ID                    */
   PMTNB014             VARCHAR2(30),                              /*ȯ���ź�                      */
   PMTNB015             NUMBER(12,2),                              /*ʵ������                    */
   PMTNB016             NUMBER(12,2),                              /*���뷵ȯ������              */
   PMTNB017             NUMBER(22,2),                              /*��ȯ���                      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */                               
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER(1),                                 /*����״̬                      */
   constraint PK_TB_PMTNB primary key (PMTNB_ID)
);
create unique index AK_TB_PMTNB on TB_PMTNB (PMTNB001,PMTNB002,PMTNB003,PMTNB004,PMTNB005,PMTNB006,PMTNB008);
create sequence SEQ_TB_PMTNB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTNB to public;
grant index  on TB_PMTNB to public;
grant update on TB_PMTNB to public; 
grant delete on TB_PMTNB to public;  
grant insert on TB_PMTNB to public; 
grant select on SEQ_TB_PMTNB to public;   
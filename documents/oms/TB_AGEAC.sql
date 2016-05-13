/*
================================================================================
��ṹ����:TB_AGEAC
��ṹ����:���տ��˿��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AGEAC;
drop index AK_TB_AGEAC;
drop table TB_AGEAC;
create table TB_AGEAC  (
   AGEAC_ID             INTEGER                         not null,  /*���տ��˿�ID          */
   AGEAC001             INTEGER                         not null,  /*���տ�ID              */
   AGEAC002             VARCHAR2(1)                     not null,  /*��������                    */
   AGEAC003             INTEGER                         not null,  /*���˵�ID                    */
   AGEAC004             INTEGER                         not null,  /*�˿ID                    */
   AGEAC005             INTEGER                         not null,  /*�˿����ϸID              */
   AGEAC006             DATE,                                      /*�˿�����                    */
   AGEAC007             INTEGER                         not null,  /*�������ID                  */
   AGEAC008             INTEGER,                                   /*ȯ��ID                      */
   AGEAC009             DATE,                                      /*ȯ������                    */
   AGEAC010             NUMBER(12,2),                              /*���׽��                    */
   AGEAC011             NUMBER(12,2),                              /*�ѷ����                    */
   AGEAC012             NUMBER(12,2),                              /*δ�����                    */
   AGEAC013             NUMBER(12,2),                              /*������                    */
   AGEAC014             NUMBER(12,2),                              /*������                      */
   AGEAC015             NUMBER(12,2),                              /*�������ѷ�                  */
   AGEAC016             NUMBER(12,2),                              /*������δ��                  */
   AGEAC017             NUMBER(12,2),                              /*�����ѷ���                  */
   AGEAC018             NUMBER(12,2),                              /*�����                    */
   AGEAC019             VARCHAR2(1),                               /*�ո�����:1.�� 2.��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_AGEAC primary key (AGEAC_ID)
);
create unique index AK_TB_AGEAC on TB_AGEAC (AGEAC001,AGEAC002,AGEAC003,AGEAC004,AGEAC005);
create sequence SEQ_TB_AGEAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AGEAC to public;
grant index  on TB_AGEAC to public;
grant update on TB_AGEAC to public; 
grant delete on TB_AGEAC to public;  
grant insert on TB_AGEAC to public; 
grant select on SEQ_TB_AGEAC to public;   
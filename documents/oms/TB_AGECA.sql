/*
================================================================================
��ṹ����:TB_AGECA
��ṹ����:���տ�ŷ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AGECA;
drop index AK_TB_AGECA;
drop table TB_AGECA;
create table TB_AGECA  (
   AGECA_ID             INTEGER                         not null,  /*���տ�ŷ��ID          */
   AGECA001             INTEGER                         not null,  /*����                        */
   AGECA002             VARCHAR2(30)                    not null,  /*�����                    */
   AGECA003             DATE                            not null,  /*��������                    */
   AGECA004             INTEGER                         not null,  /*�̻�ID                      */
   AGECA005             DATE                            not null,  /*Ĭ�Ͽ�ʼ����                */
   AGECA006             DATE                            not null,  /*Ĭ�Ͻ�������                */
   AGECA007             INTEGER                         not null,  /*Ӫ����֯ID                  */
   AGECA008             INTEGER                         not null,  /*ҵ����ID                  */
   AGECA009             INTEGER                         not null,  /*ҵ����ԱID                  */
   AGECA010             INTEGER,                                   /*Ӧ������ID                  */
   AGECA011             INTEGER,                                   /*Ӧ�յ���ID                  */
   AGECA012             VARCHAR2(255),                             /*��ע                        */
   AGECA013             INTEGER,                                   /*¼����ID                    */
   AGECA014             DATE,                                      /*¼������                    */
   AGECA015             INTEGER,                                   /*�����ID                    */
   AGECA016             DATE,                                      /*�������                    */
   AGECA017             VARCHAR2(1)                     not null,  /*���״̬                    */
   AGECA018             VARCHAR2(1),                               /*�Ƿ�ǩ��                    */
   AGECA019             VARCHAR2(30),                              /*ǩ�˵���                    */
   AGECA020             VARCHAR2(1),                               /*ǩ����                      */
   AGECA021             INTEGER                         not null,  /*���ʽID                  */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_AGECA primary key (AGECA_ID)
);
create unique index AK_TB_AGECA on TB_AGECA (AGECA002,AGECA006);
create sequence SEQ_TB_AGECA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AGECA to public;
grant index  on TB_AGECA to public;
grant update on TB_AGECA to public; 
grant delete on TB_AGECA to public;  
grant insert on TB_AGECA to public; 
grant select on SEQ_TB_AGECA to public;   
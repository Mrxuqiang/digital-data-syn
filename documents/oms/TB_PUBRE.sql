/*
================================================================================
��ṹ����:TB_PUBRE
��ṹ����:�ڲ�����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRE;
drop index AK_TB_PUBRE;
drop table TB_PUBRE;
create table TB_PUBRE  (
   PUBRE_ID             INTEGER                         not null,  /*�ڲ���������ID              */
   PUBRE001             INTEGER                         not null,  /*�ڲ��������ID              */
   PUBRE002             INTEGER                         not null,  /*�ڲ������˲�����ID          */
   PUBRE003             VARCHAR2(1),                               /*�ֶ��б�                    */
   PUBRE004             VARCHAR2(1),                               /*����                        */
   PUBRE005             VARCHAR2(255) ,                            /*ֵ                          */
   PUBRE006             VARCHAR2(1) ,                              /*���                        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_PUBRE primary key (PUBRE_ID)
);
create sequence SEQ_TB_PUBRE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRE to public;
grant index  on TB_PUBRE to public;
grant update on TB_PUBRE to public; 
grant delete on TB_PUBRE to public;  
grant insert on TB_PUBRE to public; 
grant select on SEQ_TB_PUBRE to public;   
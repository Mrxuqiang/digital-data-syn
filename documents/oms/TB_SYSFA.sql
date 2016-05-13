/*
================================================================================
��ṹ����:TB_SYSFA
��ṹ����:��ʽBUG�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSFA;
drop index AK_TB_SYSFA;
drop table TB_SYSFA;
create table TB_SYSFA  (
   SYSFA_ID             INTEGER                         not null,  /*��ʽBUG����ID               */
   SYSFA001             INTEGER                         not null,  /*��ʽ����                    */
   SYSFA002             VARCHAR2(30),                              /*�ύ��                      */
   SYSFA003             DATE,                                      /*�ύ����                    */
   SYSFA004             VARCHAR2(1000),                            /*��������                    */
   SYSFA005             VARCHAR2(255),                             /*��ע                        */
   SYSFA006             VARCHAR2(255),                             /*ͼƬ                        */
   SYSFA007             VARCHAR2(1),                               /*���ȵȼ�1.�� 2.�� 3.��      */
   SYSFA008             VARCHAR2(1),                               /*״̬1.���� 2.�ɵ� 3.�޸���� 4.�깤 */
   SYSFA009             VARCHAR2(30),                              /*������                      */
   SYSFA010             DATE,                                      /*�����������                */
   SYSFA011             VARCHAR2(255),                             /*����˵��                    */
   SYSFA012             VARCHAR2(30),                              /*������                      */
   SYSFA013             VARCHAR2(255),                             /*����˵��                    */
   SYSFA014             DATE,                                      /*�����������                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_SYSFA primary key (SYSFA_ID)				              
);
create unique index AK_TB_SYSFA on TB_SYSFA (SYSFA_ID,SYSFA001);
create sequence SEQ_TB_SYSFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSFA to public;
grant index  on TB_SYSFA to public;
grant update on TB_SYSFA to public; 
grant delete on TB_SYSFA to public;  
grant insert on TB_SYSFA to public; 
grant select on SEQ_TB_SYSFA to public;   
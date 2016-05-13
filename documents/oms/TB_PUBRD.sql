/*
================================================================================
��ṹ����:TB_PUBRD
��ṹ����:�ڲ������Ŀ���ձ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRD;
drop index AK_TB_PUBRD;
drop table TB_PUBRD;
create table TB_PUBRD  (
   PUBRD_ID             INTEGER                         not null,  /*�ڲ������Ŀ����ID          */
   PUBRD001             INTEGER                         not null,  /*�ڲ��������ID              */
   PUBRD002             INTEGER                         not null,  /*�ڲ������˲�����ID          */
   PUBRD003             INTEGER,                                   /*��Դ��ĿID                  */
   PUBRD004             VARCHAR2(40),                              /*Ԥ���ֶ�                */
   PUBRD005             INTEGER,                                   /*Ŀ�Ŀ�ĿID                  */
   PUBRD006             VARCHAR2(40),                              /*Ԥ���ֶ�                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_PUBRD primary key (PUBRD_ID)
);
create unique index AK_TB_PUBRD on TB_PUBRD (PUBRD001,PUBRD002,PUBRD003,PUBRD005);
create sequence SEQ_TB_PUBRD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRD to public;
grant index  on TB_PUBRD to public;
grant update on TB_PUBRD to public; 
grant delete on TB_PUBRD to public;  
grant insert on TB_PUBRD to public; 
grant select on SEQ_TB_PUBRD to public;   
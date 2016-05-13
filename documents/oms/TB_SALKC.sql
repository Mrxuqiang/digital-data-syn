/*
================================================================================
��ṹ����:TB_SALKC
��ṹ����:�������ָ������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SALKC;
drop index AK_TB_SALKC;
drop table TB_SALKC;
create table TB_SALKC  (
   SALKC_ID             INTEGER                         not null,      /*�������ָ�굥ID*/
   SALKC001             INTEGER                         not null,      /*����ID          */
   SALKC002             VARCHAR2(30)                    not null,      /*�������ָ�굥��*/
   SALKC003             DATE                            not null,      /*��������        */
   SALKC004             INTEGER                         not null,      /*Ӫ����֯ID      */
   SALKC005             VARCHAR2(4)                             ,      /*�ƻ����        */
   SALKC006             INTEGER,                                       /*¼����ID        */
   SALKC007             DATE,                                          /*¼������        */
   SALKC008             INTEGER,                                       /*�����ID        */
   SALKC009             DATE,                                          /*�������        */
   SALKC010             VARCHAR2(1)                     not null,      /*���״̬        */
   SALKC011             VARCHAR2(255),                                 /*��ע            */
   CREATE_USER          VARCHAR2(12),                                  /*������Ա        */
   USER_GROUP           VARCHAR2(12),                                  /*������Ա����    */                               
   CREATE_DATE          DATE,                                          /*��������        */
   MODIFIER             VARCHAR2(12),                                  /*�޸���Ա        */
   MODI_DATE            DATE,                                          /*�޸�����        */
   FLAG                 NUMBER,                                        /*����״̬        */
   constraint PK_TB_SALKC primary key (SALKC_ID)
);
create unique index AK_TB_SALKC on TB_SALKC (SALKC002,SALKC004,FLAG);
create sequence SEQ_TB_SALKC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALKC to public;
grant index  on TB_SALKC to public;
grant update on TB_SALKC to public; 
grant delete on TB_SALKC to public;  
grant insert on TB_SALKC to public; 
grant select on SEQ_TB_SALKC to public;   
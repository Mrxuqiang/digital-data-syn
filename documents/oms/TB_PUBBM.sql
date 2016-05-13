/*
================================================================================
��ṹ����:TB_PUBBM
��ṹ����:����ά����������
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBBM;
drop index AK_TB_PUBBM;
drop table TB_PUBBM;
create table TB_PUBBM  (
   PUBBM_ID             INTEGER                         not null,  /*���䵥��ID         */
   PUBBM001             INTEGER                         not null,  /*���䵥��           */
   PUBBM002             VARCHAR2(30)                    not null,  /*���䵥��           */
   PUBBM003             DATE,                                      /*��������           */
   PUBBM004             INTEGER,                                   /*������             */
   PUBBM005             INTEGER,                                   /*Ӫ����֯           */
   PUBBM006             INTEGER,                                   /*¼����             */
   PUBBM007             DATE,                                      /*¼������           */
   PUBBM008             VARCHAR2(1),                               /*����״̬           */
   PUBBM009             INTEGER,                                   /*�����             */
   PUBBM010             DATE,                                      /*�������           */
   PUBBM011             VARCHAR2(255),                             /*��ע               */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBBM primary key (PUBBM_ID)
);
create unique index AK_TB_PUBBM on TB_PUBBM (PUBBM001,PUBBM002,FLAG);
create sequence SEQ_TB_PUBBM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBM to public;
grant index  on TB_PUBBM to public;
grant update on TB_PUBBM to public; 
grant delete on TB_PUBBM to public;  
grant insert on TB_PUBBM to public; 
grant select on SEQ_TB_PUBBM to public;   
/*
================================================================================
��ṹ����:TB_PUBQC
��ṹ����:��Ͷ�ʷ�ʽ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBQC;
drop index AK_TB_PUBQC;
drop table TB_PUBQC;
create table TB_PUBQC  (
   PUBQC_ID             INTEGER                              not null,  /*��Ͷ�ʷ�ʽID       */
   PUBQC001             VARCHAR2(4)                          not null,  /*��ʽ����           */
   PUBQC002             VARCHAR2(60)                         not null,  /*��ʽ����           */
   PUBQC003             VARCHAR2(1)                          not null,  /*��Ͷ������         */
   PUBQC004             VARCHAR2(1)                          not null,  /*��������           */
   PUBQC006             VARCHAR2(1)                          not null,  /*����ʾ           */
   PUBQC007             VARCHAR2(255),                                  /*��ע               */   
   CREATE_USER          VARCHAR2(12),                                   /*������Ա           */
   USER_GROUP           VARCHAR2(12),                                   /*������Ա����       */                               
   CREATE_DATE          DATE,                                           /*��������           */
   MODIFIER             VARCHAR2(12),                                   /*�޸���Ա           */
   MODI_DATE            DATE,                                           /*�޸�����           */
   FLAG                 NUMBER(1),                                      /*����״̬           */
   constraint PK_TB_PUBQC primary key (PUBQC_ID)
);
create unique index AK_TB_PUBQC on TB_PUBQC (PUBQC001);
create sequence SEQ_TB_PUBQC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBQC to public;
grant index  on TB_PUBQC to public;
grant update on TB_PUBQC to public; 
grant delete on TB_PUBQC to public;  
grant insert on TB_PUBQC to public; 
grant select on SEQ_TB_PUBQC to public;   
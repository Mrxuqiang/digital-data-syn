/*
================================================================================
��ṹ����:TB_PMTED
��ṹ����:�����ۿ۵�����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTED;
drop index AK_TB_PMTED;
drop table TB_PMTED;
create table TB_PMTED  (
   PMTED_ID             INTEGER                         not null,  /*�ۿ۲��������ID  */
   PMTED001             INTEGER                         not null,  /*�����ۿ۵�ID      */
   PMTED002             VARCHAR2(1)                     not null,  /*�������������    */
   PMTED003             INTEGER,                                   /*���������ID      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTED primary key (PMTED_ID)
);
create unique index AK_TB_PMTED on TB_PMTED (PMTED001,PMTED002,PMTED003);
create sequence SEQ_TB_PMTED minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTED to public;
grant index  on TB_PMTED to public;
grant update on TB_PMTED to public; 
grant delete on TB_PMTED to public;  
grant insert on TB_PMTED to public; 
grant select on SEQ_TB_PMTED to public;   
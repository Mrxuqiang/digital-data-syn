/*
================================================================================
��ṹ����:TB_GLDAK
��ṹ����:���Ŷ����ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GLDAK;
drop index AK_TB_GLDAK;
drop table TB_GLDAK;
create table TB_GLDAK  (
   GLDAK_ID             INTEGER                         not null,  /*������ID           */
   GLDAK001             INTEGER                         not null,  /*������ID            */
   GLDAK002             VARCHAR2(1)                     not null,  /*������־            */
   GLDAK003             INTEGER                         not null,   /*ƾ֤��¼ID         */
   GLDAK004             NUMBER                          not null,   /*���              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_GLDAK primary key (GLDAK_ID)
);
create sequence SEQ_TB_GLDAK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAK to public;
grant index  on TB_GLDAK to public;
grant update on TB_GLDAK to public; 
grant delete on TB_GLDAK to public;  
grant insert on TB_GLDAK to public; 
grant select on SEQ_TB_GLDAK to public;   
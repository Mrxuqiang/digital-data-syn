/*
================================================================================
��ṹ����:TB_SYSKA
��ṹ����:¥�ܱ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SYSKA;
drop index AK_TB_SYSKA;
drop table TB_SYSKA;
create table TB_SYSKA  (
   SYSKA_ID             INTEGER                         not null,  /*¥�ܱ�ID            */
   SYSKA001             INTEGER                         not null,  /*�û�id(����sysdd_id)               */   
   SYSKA002             INTEGER                         not null,  /*Ӫ����֯id(����sysde_id)           */
   SYSKA003             INTEGER                         not null,  /*¥��id               */
   SYSKA004             INTEGER                         not null,  /*¥��id               */
   SYSKA005             VARCHAR2(1),                               /*�Ƿ�Ĭ��             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */                               
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER,                                    /*����״̬              */
   constraint PK_TB_SYSKA primary key (SYSKA_ID)
);
create unique index AK_TB_SYSKA on TB_SYSKA (SYSKA001,SYSKA002,SYSKA003,SYSKA004,FLAG);
create sequence SEQ_TB_SYSKA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSKA to public;
grant index  on TB_SYSKA to public;
grant update on TB_SYSKA to public; 
grant delete on TB_SYSKA to public;  
grant insert on TB_SYSKA to public; 
grant select on SEQ_TB_SYSKA to public;   
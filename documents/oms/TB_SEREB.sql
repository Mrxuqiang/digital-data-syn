/*
================================================================================
��ṹ����:TB_SEREB
��ṹ����:��Ʒ��Ϣ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SEREB;
drop index AK_TB_SEREB;
drop table TB_SEREB;
create table TB_SEREB  (
   SEREB_ID             INTEGER                         not null,  /*��ƷID            */
   SEREB001             VARCHAR2(30)                    not null,  /*��Ʒ���          */
   SEREB002             VARCHAR2(80)                    not null,  /*��Ʒȫ��          */
   SEREB003             VARCHAR2(80)                    not null,  /*��Ʒ���          */
   SEREB004             VARCHAR2(80),                              /*����ͺ�          */
   SEREB005             INTEGER                         not null,  /*��Ʒ����ID        */
   SEREB006             INTEGER                         not null,  /*������λID        */
   SEREB007             NUMBER(12,2)                    not null,  /*���ۼ�            */
   SEREB008             VARCHAR2(80),                              /*��ע              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_SEREB primary key (SEREB_ID)
);
create unique index AK_TB_SEREB on TB_SEREB (SEREB001);
create sequence SEQ_TB_SEREB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREB to public;
grant index  on TB_SEREB to public;
grant update on TB_SEREB to public; 
grant delete on TB_SEREB to public;  
grant insert on TB_SEREB to public; 
grant select on SEQ_TB_SEREB to public;   
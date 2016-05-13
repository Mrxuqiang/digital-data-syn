/*
================================================================================
��ṹ����:TB_PUBGA
��ṹ����:��ҵ���ʱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGA;
drop index AK_TB_PUBGA;
drop table TB_PUBGA;
create table TB_PUBGA  (
   PUBGA_ID             INTEGER                         not null,  /*����ID             */
   PUBGA001             VARCHAR2(4)                     not null,  /*���ʴ���           */
   PUBGA002             VARCHAR2(30)                    not null,  /*��������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBGA primary key (PUBGA_ID)
);
create unique index AK_TB_PUBGA on TB_PUBGA (PUBGA001);
create sequence SEQ_TB_PUBGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGA to public;
grant index  on TB_PUBGA to public;
grant update on TB_PUBGA to public; 
grant delete on TB_PUBGA to public;  
grant insert on TB_PUBGA to public; 
grant select on SEQ_TB_PUBGA to public;   
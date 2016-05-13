/*
================================================================================
��ṹ����:TB_SUPAM
��ṹ����:�̻����������ϵ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAM;
drop index AK_TB_SUPAM;
drop table TB_SUPAM;
create table TB_SUPAM  (
   SUPAM_ID             INTEGER                         not null,  /*������ϵID          */
   SUPAM001             INTEGER                         not null,  /*�Ǽ�ID              */
   SUPAM002             INTEGER                         not null,  /*�׶�ID              */
   SUPAM003             INTEGER                         not null,  /*����ID              */
   SUPAM004             INTEGER                         not null,  /*ҵ����ԱID          */
   SUPAM005             DATE                            not null,  /*��ϵ����            */
   SUPAM006             VARCHAR2(30)                    not null,  /*��ϵ��              */
   SUPAM007             VARCHAR2(255)                   not null,  /*��ϵ����            */
   SUPAM008             VARCHAR2(255)                   not null,  /*���Ŀ��            */
   SUPAM009             DATE,                                      /*�´���ϵ����        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAM primary key (SUPAM_ID)
);
create unique index AK_TB_SUPAM on TB_SUPAM (SUPAM_ID,SUPAM001,SUPAM002,SUPAM003,SUPAM004,SUPAM005);
create sequence SEQ_TB_SUPAM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAM to public;
grant index  on TB_SUPAM to public;
grant update on TB_SUPAM to public; 
grant delete on TB_SUPAM to public;  
grant insert on TB_SUPAM to public; 
grant select on SEQ_TB_SUPAM to public;   
/*
================================================================================
��ṹ����:TB_CONCL
��ṹ����:��ͬ����ʵ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONCL;
drop index AK_TB_CONCL;
drop table TB_CONCL;
create table TB_CONCL  (
   CONCL_ID             INTEGER                         not null,  /*��ͬ����ʵ�������ϸID*/
   CONCL001             INTEGER                         not null,  /*��ͬ���ID          */
   CONCL002             INTEGER                         not null,  /*��ͬ����ʵ�ID      */
   CONCL003             INTEGER                         not null,  /*����ID              */
   CONCL004             DATE                            not null,  /*�ʵ�����            */
   CONCL005             NUMBER(12,2)                    not null,  /*��Ӫ���            */
   CONCL006             NUMBER(12,2)                    not null,  /*��׼��              */
   CONCL007             NUMBER(12,2)                    not null,  /*��׼��λ            */
   CONCL008             NUMBER(12,4)                    not null,  /*���ý��            */
   CONCL009             NUMBER(12,2),                              /*�������            */
   CONCL010             NUMBER(12,2),                              /*�������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONCL primary key (CONCL_ID)
);
create unique index AK_TB_CONCL on TB_CONCL (CONCL001,CONCL002,CONCL003,CONCL004);
create sequence SEQ_TB_CONCL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCL to public;
grant index  on TB_CONCL to public;
grant update on TB_CONCL to public; 
grant delete on TB_CONCL to public;  
grant insert on TB_CONCL to public; 
grant select on SEQ_TB_CONCL to public;   
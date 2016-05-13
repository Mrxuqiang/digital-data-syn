/*
================================================================================
��ṹ����:TB_HRBAC
��ṹ����:˰�ʼ��α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_HRBAC;
drop index AK_TB_HRBAC;
drop table TB_HRBAC;
create table TB_HRBAC  (
   HRBAC_ID             INTEGER                         not null,  /*˰�ʼ���ID         */
   HRBAC001             INTEGER                         not null,  /*����˰��ID         */
   HRBAC002             INTEGER                         not null,  /*����               */
   HRBAC003             NUMBER(12,2)                    not null,  /*����˰��Ͷ�       */
   HRBAC004             NUMBER(12,2)                    not null,  /*����˰��߶�       */
   HRBAC005             NUMBER(5,4)                     not null,  /*˰��               */
   HRBAC006             NUMBER(12,2)                    not null,  /*����۳���         */
   HRBAC007             VARCHAR2(255)                   not null,  /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_HRBAC primary key (HRBAC_ID)
);
create unique index AK_TB_HRAAC on TB_HRBAC (HRBAC001);
create sequence SEQ_TB_HRBAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAC to public;
grant index  on TB_HRBAC to public;
grant update on TB_HRBAC to public; 
grant delete on TB_HRBAC to public;  
grant insert on TB_HRBAC to public; 
grant select on SEQ_TB_HRBAC to public;   
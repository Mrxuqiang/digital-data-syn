/*
================================================================================
��ṹ����:TB_GRTAB
��ṹ����:����ģ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTAB;
drop index AK_TB_GRTAB;
drop table TB_GRTAB;
create table TB_GRTAB  (
   GRTAB_ID             INTEGER                         not null,  /*����ģ����ID          */
   GRTAB001             VARCHAR2(30)                    not null,  /*����                  */
   GRTAB002             VARCHAR2(1)                     not null,  /*����                  */
   GRTAB003             VARCHAR2(1)                     not null,  /*�Ƿ�ģ��              */
   GRTAB004             VARCHAR2(1),                               /*�Ƿ�����������й�    */ 
   GRTAB005             VARCHAR2(1),                               /*�Ƿ����ù���1       */   
   GRTAB006             VARCHAR2(1),                               /*�Ƿ����ù���2       */ 
   GRTAB007             VARCHAR2(1),                               /*�Ƿ�ʹ�ù���3       */ 
   GRTAB008             VARCHAR2(1),                               /*��������              */ 
   GRTAB009             VARCHAR2(1),                               /*�Ƿ����              */ 
   GRTAB010             VARCHAR2(1),                               /*�Ƿ���޸�            */   
   GRTAB011             VARCHAR2(255),                             /*��ע                  */              
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_GRTAB primary key (GRTAB_ID)
);
create unique index AK_TB_GRTAB on TB_GRTAB (GRTAB001);
create sequence SEQ_TB_GRTAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAB to public;
grant index  on TB_GRTAB to public;
grant update on TB_GRTAB to public; 
grant delete on TB_GRTAB to public;  
grant insert on TB_GRTAB to public; 
grant select on SEQ_TB_GRTAB to public;   
/*
================================================================================
��ṹ����:TB_PUBCE
��ṹ����:��Ӫ���ͱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBCE;
drop index AK_TB_PUBCE;
drop table TB_PUBCE;
create table TB_PUBCE  (
   PUBCE_ID             INTEGER                         not null,  /*��Ӫ����ID                 */
   PUBCE001             VARCHAR2(4)                     not null,  /*��Ӫ���ʹ���               */
   PUBCE002             VARCHAR2(20)                    not null,  /*��Ӫ��������               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա			*/
   USER_GROUP           VARCHAR2(12),                              /*������Ա����		*/                               
   CREATE_DATE          DATE,                                      /*��������			*/
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա			*/
   MODI_DATE            DATE,                                      /*�޸�����			*/
   FLAG                 NUMBER(1),                                 /*����״̬			*/
   constraint PK_TB_PUBCE primary key (PUBCE_ID)
);
create unique index AK_TB_PUBCE on TB_PUBCE (PUBCE001);
create sequence SEQ_TB_PUBCE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCE to public;
grant index  on TB_PUBCE to public;
grant update on TB_PUBCE to public; 
grant delete on TB_PUBCE to public;  
grant insert on TB_PUBCE to public; 
grant select on SEQ_TB_PUBCE to public;   
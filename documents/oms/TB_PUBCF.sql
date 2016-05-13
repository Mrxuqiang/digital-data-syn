/*
================================================================================
��ṹ����:TB_PUBCF
��ṹ����:Ӫ����֯���ͱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBCF;
drop index AK_TB_PUBCF;
drop table TB_PUBCF;
create table TB_PUBCF  (
   PUBCF_ID             INTEGER                         not null,  /*Ӫ����֯����ID             */
   PUBCF001             VARCHAR2(4)                     not null,  /*Ӫ����֯���ʹ���           */
   PUBCF002             VARCHAR2(20)                    not null,  /*Ӫ����֯��������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա			*/
   USER_GROUP           VARCHAR2(12),                              /*������Ա����		*/                               
   CREATE_DATE          DATE,                                      /*��������			*/
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա			*/
   MODI_DATE            DATE,                                      /*�޸�����			*/
   FLAG                 NUMBER(1),                                 /*����״̬			*/
   constraint PK_TB_PUBCF primary key (PUBCF_ID)
);
create unique index AK_TB_PUBCF on TB_PUBCF (PUBCF001);
create sequence SEQ_TB_PUBCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCF to public;
grant index  on TB_PUBCF to public;
grant update on TB_PUBCF to public; 
grant delete on TB_PUBCF to public;  
grant insert on TB_PUBCF to public; 
grant select on SEQ_TB_PUBCF to public;   
/*
================================================================================
��ṹ����:TB_PUBCL
��ṹ����:��Ӧ�̻�������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PUBCL;
drop index AK_TB_PUBCL;
drop table TB_PUBCL;
create table TB_PUBCL  (
   PUBCL_ID             INTEGER                         not null,  /*��Ӧ�̻�������ID   */
   PUBCL001             INTEGER,                                   /*����ID             */
   PUBCL002             INTEGER,                                   /*�ڲ�Ӫ����֯ID     */
   PUBCL003             VARCHAR2(255),                             /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER ,                                   /*����״̬           */
   constraint PK_TB_PUBCL primary key (PUBCL_ID)
);
create unique index AK_TB_PUBCL on TB_PUBCL (PUBCL001,FLAG);
create sequence SEQ_TB_PUBCL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCL to public;
grant index  on TB_PUBCL to public;
grant update on TB_PUBCL to public; 
grant delete on TB_PUBCL to public;  
grant insert on TB_PUBCL to public; 
grant select on SEQ_TB_PUBCL to public;   
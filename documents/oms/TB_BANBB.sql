/*
================================================================================
��ṹ����:TB_BANBB
��ṹ����:Ʊ�ݹ����ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BANBB;
drop index AK_TB_BANBB;
drop table TB_BANBB;
create table TB_BANBB  (
   BANBB_ID             INTEGER                              not null,  /*Ʊ�ݹ����ӱ�ID    */
   BANBB001             INTEGER                              not null,  /*Ʊ�ݹ�������ID    */
   BANBB002             VARCHAR2(10),                                   /*Ʊ��              */
   BANBB003             VARCHAR2(1),                                    /*״̬              */
   CREATE_USER          VARCHAR2(12),                                   /*������Ա              */
   USER_GROUP           VARCHAR2(12),                                   /*������Ա����          */                               
   CREATE_DATE          DATE,                                           /*��������              */
   MODIFIER             VARCHAR2(12),                                   /*�޸���Ա              */
   MODI_DATE            DATE,                                           /*�޸�����              */
   FLAG                 NUMBER(1),                                      /*����״̬              */
   constraint PK_TB_BANBB primary key (BANBB_ID)
);
create unique index AK_TB_BANBB on TB_BANBB (BANBB_ID,BANBB002);
create sequence SEQ_TB_BANBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BANBB to public;
grant index  on TB_BANBB to public;
grant update on TB_BANBB to public; 
grant delete on TB_BANBB to public;  
grant insert on TB_BANBB to public; 
grant select on SEQ_TB_BANBB to public;   
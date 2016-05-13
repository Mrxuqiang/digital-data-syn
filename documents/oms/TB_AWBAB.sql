/*
================================================================================
��ṹ����:TB_AWBAB
��ṹ����:��Ŀ���ض�Ӧ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AWBAB;
drop index AK_TB_AWBAB;
drop table TB_AWBAB;
create table TB_AWBAB  (
   AWBAB_ID             INTEGER                         not null,  /*��Ŀ���ض�ӦID     */
   AWBAB001             INTEGER                         not null,  /*��Ŀ����ID       */
   AWBAB002             INTEGER                         not null,  /*Ӱ�������б�ID       */
   AWBAB003             VARCHAR2(4)                     not null,  /*��Ŀ���ձ����к�             */
   AWBAB004             VARCHAR2(1)                     not null,  /*�����ʶ1����Ŀ2������ */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_AWBAB primary key (AWBAB_ID)
);
create unique index AK_TB_AWBAB on TB_AWBAB (AWBAB001,AWBAB002);
create sequence SEQ_TB_AWBAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBAB to public;
grant index  on TB_AWBAB to public;
grant update on TB_AWBAB to public; 
grant delete on TB_AWBAB to public;  
grant insert on TB_AWBAB to public; 
grant select on SEQ_TB_AWBAB to public;   
/*
================================================================================
��ṹ����:TB_CONBP
��ṹ����:��ͬ�ʵ�������ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBP;
drop index AK_TB_CONBP;
drop table TB_CONBP;
create table TB_CONBP  (
   CONBP_ID             INTEGER                         not null,  /*��ͬ�ʵ�������ϸID  */
   CONBP001             INTEGER                         not null,  /*��ͬID              */
   CONBP002             INTEGER                         not null,  /*��ͬ�ʵ�ID          */
   CONBP003             INTEGER                         not null,  /*����ID              */
   CONBP004             DATE                            not null,  /*�ʵ�����            */
   CONBP005             NUMBER(12,2)                            ,  /*��Ӫ���            */
   CONBP006             NUMBER(12,2)                            ,  /*��׼����            */
   CONBP007             NUMBER(12,2)                            ,  /*���ñ�׼            */
   CONBP008             NUMBER(12,2)                    not null,  /*���ý��            */
   CONBP009             NUMBER(12,2)                            ,  /*�������            */
   CONBP010             NUMBER(12,2)                            ,  /*�������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONBP primary key (CONBP_ID)
);
create unique index AK_TB_CONBP on TB_CONBP (CONBP001,CONBP002,CONBP003,CONBP004);
create sequence SEQ_TB_CONBP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBP to public;
grant index  on TB_CONBP to public;
grant update on TB_CONBP to public; 
grant delete on TB_CONBP to public;  
grant insert on TB_CONBP to public; 
grant select on SEQ_TB_CONBP to public;   
/*
================================================================================
��ṹ����:TB_CONBF
��ṹ����:��ͬ���ر�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBF;
drop index AK_TB_CONBF;
drop table TB_CONBF;
create table TB_CONBF  (
   CONBF_ID             INTEGER                         not null,  /*��ͬ����ID          */
   CONBF001             INTEGER                         not null,  /*��ͬID              */
   CONBF002             INTEGER                         not null,  /*̯λ�춯��ID        */
   CONBF003             INTEGER                         not null,  /*����ID              */
   CONBF004             INTEGER                         not null,  /*�����춯��ID        */
   CONBF005             INTEGER                         not null,  /*¥��ID              */
   CONBF006             INTEGER                         not null,  /*¥��ID              */
   CONBF007             NUMBER(12,2)                    not null,  /*��Ӫ���            */
   CONBF008             NUMBER(12,2)                    not null,  /*�������            */
   CONBF009             DATE                            not null,  /*���ؿ�ʼ����        */
   CONBF010             DATE                            not null,  /*���ؽ�������        */
   CONBF011             DATE                            not null,  /*̯λ��ʼ����        */
   CONBF012             DATE                            not null,  /*̯λ��������        */
   CONBF013             NUMBER(12,2)                            ,  /*��̯ϵ��            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                 /*����״̬            */
   constraint PK_TB_CONBF primary key (CONBF_ID)
);
create unique index AK_TB_CONBF on TB_CONBF (CONBF001,CONBF002,CONBF003,CONBF009);
create sequence SEQ_TB_CONBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBF to public;
grant index  on TB_CONBF to public;
grant update on TB_CONBF to public; 
grant delete on TB_CONBF to public;  
grant insert on TB_CONBF to public; 
grant select on SEQ_TB_CONBF to public;   
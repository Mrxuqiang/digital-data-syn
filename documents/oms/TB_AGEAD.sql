/*
================================================================================
��ṹ����:TB_AGEAD
��ṹ����:���տ����ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AGEAD;
drop index AK_TB_AGEAD;
drop table TB_AGEAD;
create table TB_AGEAD  (
   AGEAD_ID             INTEGER                         not null,  /*���տ�����ID          */
   AGEAD001             INTEGER                         not null,  /*���տ�ID              */
   AGEAD002             INTEGER                         not null,  /*���õ�ID                    */
   AGEAD003             INTEGER                         not null,  /*������ϸID                  */
   AGEAD004             INTEGER,                                   /*����ID                      */
   AGEAD005             NUMBER(12,2),                              /*δ�ս��                    */
   AGEAD006             NUMBER(12,2),                              /*�տ���                    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_AGEAD primary key (AGEAD_ID)
);
create unique index AK_TB_AGEAD on TB_AGEAD (AGEAD001,AGEAD002,AGEAD003);
create sequence SEQ_TB_AGEAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AGEAD to public;
grant index  on TB_AGEAD to public;
grant update on TB_AGEAD to public; 
grant delete on TB_AGEAD to public;  
grant insert on TB_AGEAD to public; 
grant select on SEQ_TB_AGEAD to public;   
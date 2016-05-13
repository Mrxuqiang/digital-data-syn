/*
================================================================================
��ṹ����:TB_MEDCE
��ṹ����:ý���ͬ��̯�趨��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEDCE;
drop index AK_TB_MEDCE;
drop table TB_MEDCE;
create table TB_MEDCE  (
   MEDCE_ID             INTEGER                         not null,  /*��̯�趨ID		 */
   MEDCE001             INTEGER                         not null,  /*ý���ͬID          */
   MEDCE002             INTEGER                         not null,  /*���޺�ͬ��ID        */
   MEDCE003             VARCHAR2(1)                     not null,  /*��̯��ʽ            */
   MEDCE004             NUMBER(12,2)                    not null,  /*�������%         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_MEDCE primary key (MEDCE_ID)
);
create unique index AK_TB_MEDCE on TB_MEDCE (MEDCE001,MEDCE002);
create sequence SEQ_TB_MEDCE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDCE to public;
grant index  on TB_MEDCE to public;
grant update on TB_MEDCE to public; 
grant delete on TB_MEDCE to public;  
grant insert on TB_MEDCE to public; 
grant select on SEQ_TB_MEDCE to public;   
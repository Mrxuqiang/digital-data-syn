/*                 
================================================================================
��ṹ����:TB_PUBAD
��ṹ����:��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBAD;
drop index AK_TB_PUBAD;
drop table TB_PUBAD;
create table TB_PUBAD  (
   PUBAD_ID             INTEGER                         not null,  /*����ID         */
   PUBAD001             VARCHAR2(12)                    not null,  /*��������       */
   PUBAD002             VARCHAR2(12)                    not null,  /*��������       */
   PUBAD003             VARCHAR2(255)                           ,  /*������ַ       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBAD primary key (PUBAD_ID)
);
create unique index AK_TB_PUBAD on TB_PUBAD (PUBAD001);
create sequence SEQ_TB_PUBAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBAD to public;
grant index  on TB_PUBAD to public;
grant update on TB_PUBAD to public; 
grant delete on TB_PUBAD to public;  
grant insert on TB_PUBAD to public; 
grant select on SEQ_TB_PUBAD to public;   
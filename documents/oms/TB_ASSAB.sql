/*
================================================================================
��ṹ����:TB_ASSAB
��ṹ����:�̶��ʲ���Ƭ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_ASSAB;
drop index AK_TB_ASSAB;
drop table TB_ASSAB;
create table TB_ASSAB  (
   ASSAB_ID             INTEGER                         not null,   /*��Ƭ��ID         */
   ASSAB001             INTEGER                         not null,   /*��Ƭ��ID         */
   ASSAB002             INTEGER                         not null,   /*����ID           */
   ASSAB003             NUMBER(5,4)                     not null,   /*����             */
   CREATE_USER          VARCHAR2(12),                               /*������Ա               */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����           */                               
   CREATE_DATE          DATE,                                       /*��������               */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա               */
   MODI_DATE            DATE,                                       /*�޸�����               */
   FLAG                 NUMBER(1),                                  /*����״̬               */
   constraint PK_TB_ASSAB primary key (ASSAB_ID)
);
create unique index AK_TB_ASSAB on TB_ASSAB (ASSAB001,ASSAB002);
create sequence SEQ_TB_ASSAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_ASSAB to public;
grant index  on TB_ASSAB to public;
grant update on TB_ASSAB to public; 
grant delete on TB_ASSAB to public;  
grant insert on TB_ASSAB to public; 
grant select on SEQ_TB_ASSAB to public;   